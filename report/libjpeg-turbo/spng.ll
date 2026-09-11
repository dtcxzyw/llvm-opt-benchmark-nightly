Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/spng?download=true
inline.NumInlined: 350
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@spng_set_exif:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.g = load i16, ptr %i.f, align 4
  %i.h = and i16 %i.g, 16
  %.not = icmp eq i16 %i.h, 0
  br i1 %.not, label %check_exif.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = tail call fastcc i32 @read_chunks(ptr noundef %0, i32 noundef 0) ; 2 uses
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.e, label %check_exif.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !144  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %check_exif.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %1, align 8, !tbaa !142
  %i.n = add i64 %i.m, -2147483648
  %or.cond27 = icmp ult i64 %i.n, -2147483644
  br i1 %or.cond27, label %check_exif.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.k, align 1
  %i.p = icmp ne i32 %i.o, 2771273
  %i.q = zext i1 %i.p to i32
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %check_exif.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.k, align 1
  %i.s = icmp ne i32 %i.r, 704662861
  %i.t = zext i1 %i.s to i32
  %.not9.i = icmp eq i32 %i.t, 0
  br i1 %.not9.i, label %check_exif.exit, label %check_exif.exit.thread

check_exif.exit:                                  ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !208  ; 2 uses
  %.not23 = icmp eq ptr %i.w, null
  br i1 %.not23, label %bb.k, label %bb.i

bb.i:                                             ; preds = %check_exif.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 32768
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 184
  %.val = load ptr, ptr %i.aa, align 8, !tbaa !145
  tail call void %.val(ptr noundef nonnull %i.w) #28, !inline_history !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %check_exif.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !146
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 4
  %i.ad = or <2 x i32> %i.ac, splat (i32 32768)
  store <2 x i32> %i.ad, ptr %i.ab, align 4
  br label %check_exif.exit.thread

check_exif.exit.thread:                           ; preds = %bb.h, %bb.e, %bb.f, %bb.k, %bb.d, %bb.c, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 82, %bb.c ], [ 0, %bb.k ], [ %i.i, %bb.d ], [ 61, %bb.h ], [ 61, %bb.f ], [ 61, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 80) i32 @check_exif(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !142    ; 2 uses
  %i.e = icmp ult i64 %i.d, 4
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.d, 2147483647
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 1
  %i.h = icmp ne i32 %i.g, 2771273
  %i.i = zext i1 %i.h to i32
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.b, align 1
  %i.k = icmp ne i32 %i.j, 704662861
  %i.l = zext i1 %i.k to i32
  %.not9 = icmp eq i32 %i.l, 0
  br i1 %.not9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 79, %bb.c ], [ 17, %bb.b ], [ 1, %bb.a ], [ 0, %bb.f ], [ 1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @spng_strerror(i32 noundef %0) local_unnamed_addr #19 {
bb.a:
  %switch.tableidx = add i32 %0, 2                ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 88
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.spng_strerror, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.88, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @spng_version_string() local_unnamed_addr #19 {
bb.a:
  ret ptr @.str.89
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @defilter_paeth4(i64 noundef range(i64 0, -1) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #20 {
bb.a:
  %i.a = add i64 %0, 4                            ; 2 uses
  %i.b = icmp ugt i64 %i.a, 4
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.044 = phi <2 x i64> [ %i.aa, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %.03643 = phi <2 x i64> [ %i.f, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %.03742 = phi i64 [ %i.ah, %.lr.ph ], [ %i.a, %bb.a ]
  %.03841 = phi ptr [ %i.af, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.03940 = phi ptr [ %i.ag, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.038.val = load i32, ptr %.03841, align 1
  %i.c = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.038.val, i64 0
  %i.d = bitcast <4 x i32> %i.c to <16 x i8>
  %i.e = shufflevector <16 x i8> %i.d, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.f = bitcast <16 x i8> %i.e to <2 x i64>
  %.039.val = load i32, ptr %.03940, align 1
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.039.val, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = bitcast <16 x i8> %i.e to <8 x i16>      ; 2 uses
  %i.k = bitcast <2 x i64> %.03643 to <8 x i16>   ; 3 uses
  %i.l = sub <8 x i16> %i.j, %i.k                 ; 2 uses
  %i.m = bitcast <2 x i64> %.044 to <8 x i16>     ; 2 uses
  %i.n = sub <8 x i16> %i.m, %i.k                 ; 2 uses
  %i.o = add <8 x i16> %i.l, %i.n
  %i.p = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.l, i1 false) ; 2 uses
  %i.q = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.n, i1 false) ; 2 uses
  %i.r = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.o, i1 false)
  %i.s = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.p, <8 x i16> %i.q)
  %i.t = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.r, <8 x i16> %i.s) ; 2 uses
  %i.u = icmp eq <8 x i16> %i.t, %i.p
  %i.v = icmp eq <8 x i16> %i.t, %i.q
  %i.w = select <8 x i1> %i.v, <8 x i16> %i.j, <8 x i16> %i.k
  %i.x = select <8 x i1> %i.u, <8 x i16> %i.m, <8 x i16> %i.w
  %i.y = bitcast <8 x i16> %i.x to <16 x i8>
  %i.z = add <16 x i8> %i.i, %i.y                 ; 2 uses
  %i.aa = bitcast <16 x i8> %i.z to <2 x i64>
  %i.ab = bitcast <16 x i8> %i.z to <8 x i16>
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> poison)
  %i.ad = bitcast <16 x i8> %i.ac to <4 x i32>
  %i.ae = extractelement <4 x i32> %i.ad, i64 0
  store i32 %i.ae, ptr %.03940, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.03841, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.03940, i64 4
  %i.ah = add i64 %.03742, -4                     ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 4
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !410

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @defilter_sub3(i64 noundef range(i64 0, -1) %0, ptr nofree noundef captures(none) %1) unnamed_addr #20 {
bb.a:
  %i.a = icmp ugt i64 %0, 3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi <16 x i8> [ %i.e, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %.01621 = phi i64 [ %i.i, %.lr.ph ], [ %0, %bb.a ]
  %.01720 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.017.val.1 = load i32, ptr %.01720, align 1
  %i.c = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.017.val.1, i64 0
  %i.d = bitcast <4 x i32> %i.c to <16 x i8>
  %i.e = add <16 x i8> %i.b, %i.d                 ; 3 uses
  %i.f = bitcast <16 x i8> %i.e to <4 x i32>
  %i.g = extractelement <4 x i32> %i.f, i64 0
  %.0.extract.trunc.i.1 = trunc i32 %i.g to i24
  store i24 %.0.extract.trunc.i.1, ptr %.01720, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.01720, i64 3 ; 2 uses
  %i.i = add i64 %.01621, -3                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 3
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !411

._crit_edge:                                      ; preds = %bb.a
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph, %._crit_edge
  %.lcssa33 = phi <16 x i8> [ zeroinitializer, %._crit_edge ], [ %i.e, %.lr.ph ]
  %.017.lcssa32 = phi ptr [ %1, %._crit_edge ], [ %i.h, %.lr.ph ] ; 2 uses
  %.017.val18 = load i24, ptr %.017.lcssa32, align 1
  %.0.insert.ext.i = zext i24 %.017.val18 to i32
  %i.k = insertelement <4 x i32> poison, i32 %.0.insert.ext.i, i64 0
  %i.l = bitcast <4 x i32> %i.k to <16 x i8>
  %i.m = add <16 x i8> %.lcssa33, %i.l
  %i.n = bitcast <16 x i8> %i.m to <4 x i32>
  %i.o = extractelement <4 x i32> %i.n, i64 0
  %.0.extract.trunc.i19 = trunc i32 %i.o to i24
  store i24 %.0.extract.trunc.i19, ptr %.017.lcssa32, align 1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @defilter_avg3(i64 noundef range(i64 0, -1) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #20 {
bb.a:
  %i.a = icmp ugt i64 %0, 3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.040 = phi ptr [ %i.r, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.03039 = phi ptr [ %i.q, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.03138 = phi <2 x i64> [ %i.n, %.lr.ph ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.03237 = phi i64 [ %i.s, %.lr.ph ], [ %0, %bb.a ]
  %.030.val = load i32, ptr %.03039, align 1
  %i.b = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.030.val, i64 0 ; 2 uses
  %i.c = bitcast <4 x i32> %i.b to <2 x i64>
  %.0.val = load i32, ptr %.040, align 1
  %i.d = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.val, i64 0
  %i.e = bitcast <2 x i64> %.03138 to <16 x i8>
  %i.f = bitcast <4 x i32> %i.b to <16 x i8>
  %i.g = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.e, <16 x i8> %i.f)
  %i.h = xor <2 x i64> %.03138, %i.c
  %i.i = bitcast <2 x i64> %i.h to <16 x i8>
  %i.j = and <16 x i8> %i.i, splat (i8 1)
  %i.k = sub <16 x i8> %i.g, %i.j
  %i.l = bitcast <4 x i32> %i.d to <16 x i8>
  %i.m = add <16 x i8> %i.k, %i.l                 ; 2 uses
  %i.n = bitcast <16 x i8> %i.m to <2 x i64>      ; 2 uses
  %i.o = bitcast <16 x i8> %i.m to <4 x i32>
  %i.p = extractelement <4 x i32> %i.o, i64 0
  %.0.extract.trunc.i = trunc i32 %i.p to i24
  store i24 %.0.extract.trunc.i, ptr %.040, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.03039, i64 3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.040, i64 3 ; 2 uses
  %i.s = add i64 %.03237, -3                      ; 2 uses
  %i.t = icmp ugt i64 %i.s, 3
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !412

._crit_edge:                                      ; preds = %bb.a
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph, %._crit_edge
  %.0.lcssa55 = phi ptr [ %1, %._crit_edge ], [ %i.r, %.lr.ph ] ; 2 uses
  %.030.lcssa54 = phi ptr [ %2, %._crit_edge ], [ %i.q, %.lr.ph ]
  %.031.lcssa53 = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %i.n, %.lr.ph ] ; 2 uses
  %.030.val34 = load i24, ptr %.030.lcssa54, align 1
  %.0.insert.ext.i = zext i24 %.030.val34 to i32
  %i.u = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.insert.ext.i, i64 0 ; 2 uses
  %i.v = bitcast <4 x i32> %i.u to <2 x i64>
  %.0.val33 = load i24, ptr %.0.lcssa55, align 1
  %.0.insert.ext.i35 = zext i24 %.0.val33 to i32
  %i.w = insertelement <4 x i32> poison, i32 %.0.insert.ext.i35, i64 0
  %i.x = bitcast <2 x i64> %.031.lcssa53 to <16 x i8>
  %i.y = bitcast <4 x i32> %i.u to <16 x i8>
  %i.z = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.x, <16 x i8> %i.y)
  %i.aa = xor <2 x i64> %.031.lcssa53, %i.v
  %i.ab = bitcast <2 x i64> %i.aa to <16 x i8>
  %i.ac = and <16 x i8> %i.ab, <i8 1, i8 1, i8 1, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.ad = bitcast <4 x i32> %i.w to <16 x i8>
  %i.ae = add <16 x i8> %i.z, %i.ad
  %i.af = sub <16 x i8> %i.ae, %i.ac
  %i.ag = bitcast <16 x i8> %i.af to <4 x i32>
  %i.ah = extractelement <4 x i32> %i.ag, i64 0
  %.0.extract.trunc.i36 = trunc i32 %i.ah to i24
  store i24 %.0.extract.trunc.i36, ptr %.0.lcssa55, align 1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @defilter_paeth3(i64 noundef range(i64 0, -1) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #20 {
bb.a:
  %i.a = icmp ugt i64 %0, 3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.079 = phi ptr [ %i.af, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.06778 = phi ptr [ %i.ae, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.06877 = phi i64 [ %i.ag, %.lr.ph ], [ %0, %bb.a ]
  %.06976 = phi <2 x i64> [ %i.e, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %.07075 = phi <2 x i64> [ %i.z, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %.067.val = load i32, ptr %.06778, align 1
  %i.b = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.067.val, i64 0
  %i.c = bitcast <4 x i32> %i.b to <16 x i8>
  %i.d = shufflevector <16 x i8> %i.c, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 3 uses
  %i.e = bitcast <16 x i8> %i.d to <2 x i64>
  %.0.val = load i32, ptr %.079, align 1
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.0.val, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = bitcast <16 x i8> %i.d to <8 x i16>      ; 2 uses
  %i.j = bitcast <2 x i64> %.06976 to <8 x i16>   ; 3 uses
  %i.k = sub <8 x i16> %i.i, %i.j                 ; 2 uses
  %i.l = bitcast <2 x i64> %.07075 to <8 x i16>   ; 2 uses
  %i.m = sub <8 x i16> %i.l, %i.j                 ; 2 uses
  %i.n = add <8 x i16> %i.k, %i.m
  %i.o = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.k, i1 false) ; 2 uses
  %i.p = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.m, i1 false) ; 2 uses
  %i.q = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.n, i1 false)
  %i.r = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.o, <8 x i16> %i.p)
  %i.s = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.q, <8 x i16> %i.r) ; 2 uses
  %i.t = icmp eq <8 x i16> %i.s, %i.o
  %i.u = icmp eq <8 x i16> %i.s, %i.p
  %i.v = select <8 x i1> %i.u, <8 x i16> %i.i, <8 x i16> %i.j
  %i.w = select <8 x i1> %i.t, <8 x i16> %i.l, <8 x i16> %i.v
  %i.x = bitcast <8 x i16> %i.w to <16 x i8>
  %i.y = add <16 x i8> %i.h, %i.x                 ; 3 uses
  %i.z = bitcast <16 x i8> %i.y to <2 x i64>
  %i.aa = bitcast <16 x i8> %i.y to <8 x i16>
  %i.ab = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aa, <8 x i16> poison)
  %i.ac = bitcast <16 x i8> %i.ab to <4 x i32>
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.0.extract.trunc.i = trunc i32 %i.ad to i24
  store i24 %.0.extract.trunc.i, ptr %.079, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.06778, i64 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.079, i64 3 ; 2 uses
  %i.ag = add i64 %.06877, -3                     ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 3
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !413

._crit_edge.thread:                               ; preds = %.lr.ph
  %i.ai = bitcast <16 x i8> %i.d to <8 x i16>
  %i.aj = bitcast <16 x i8> %i.y to <8 x i16>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0.lcssa98 = phi ptr [ %i.af, %._crit_edge.thread ], [ %1, %._crit_edge ] ; 2 uses
  %.067.lcssa97 = phi ptr [ %i.ae, %._crit_edge.thread ], [ %2, %._crit_edge ]
  %.069.lcssa96 = phi <8 x i16> [ %i.ai, %._crit_edge.thread ], [ zeroinitializer, %._crit_edge ] ; 3 uses
  %.070.lcssa95 = phi <8 x i16> [ %i.aj, %._crit_edge.thread ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.067.val72 = load i24, ptr %.067.lcssa97, align 1
  %.0.insert.ext.i = zext i24 %.067.val72 to i32
  %i.ak = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.0.insert.ext.i, i64 0
  %i.al = bitcast <4 x i32> %i.ak to <16 x i8>
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %.0.val71 = load i24, ptr %.0.lcssa98, align 1
  %.0.insert.ext.i73 = zext i24 %.0.val71 to i32
  %i.an = insertelement <4 x i32> poison, i32 %.0.insert.ext.i73, i64 0
  %i.ao = bitcast <4 x i32> %i.an to <16 x i8>
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aq = bitcast <16 x i8> %i.am to <8 x i16>    ; 2 uses
  %i.ar = sub nsw <8 x i16> %i.aq, %.069.lcssa96  ; 2 uses
  %i.as = sub <8 x i16> %.070.lcssa95, %.069.lcssa96 ; 2 uses
  %i.at = add <8 x i16> %i.ar, %i.as
  %i.au = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ar, i1 false) ; 2 uses
  %i.av = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.as, i1 false) ; 2 uses
  %i.aw = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.at, i1 false)
  %i.ax = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.au, <8 x i16> %i.av)
  %i.ay = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aw, <8 x i16> %i.ax) ; 2 uses
  %i.az = icmp eq <8 x i16> %i.ay, %i.au
  %i.ba = icmp eq <8 x i16> %i.ay, %i.av
  %i.bb = select <8 x i1> %i.ba, <8 x i16> %i.aq, <8 x i16> %.069.lcssa96
  %i.bc = select <8 x i1> %i.az, <8 x i16> %.070.lcssa95, <8 x i16> %i.bb
  %i.bd = bitcast <8 x i16> %i.bc to <16 x i8>
  %i.be = add <16 x i8> %i.ap, %i.bd
  %i.bf = bitcast <16 x i8> %i.be to <8 x i16>
  %i.bg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bf, <8 x i16> poison)
  %i.bh = bitcast <16 x i8> %i.bg to <4 x i32>
  %i.bi = extractelement <4 x i32> %i.bh, i64 0
  %.0.extract.trunc.i74 = trunc i32 %i.bi to i24
  store i24 %.0.extract.trunc.i74, ptr %.0.lcssa98, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12
end_hunk_0
