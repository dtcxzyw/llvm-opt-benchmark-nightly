Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uconv?download=true
inline.NumInlined: 116
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@strchr
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_7814Transliterator15createFromRulesERKNS_13UnicodeStringES3_15UTransDirectionR11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef nonnull align 4 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) unnamed_addr #4

declare noundef ptr @_ZN6icu_7814Transliterator14createInstanceERKNS_13UnicodeStringE15UTransDirectionR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

declare i32 @uprv_itou_78(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare ptr @u_wmsg_errorName(i32 noundef) local_unnamed_addr #4

declare ptr @ucnv_open_78(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ucnv_setToUCallBack_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ucnv_setFromUCallBack_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ucnv_setFallback_78(ptr noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #4

declare void @ucnv_toUnicode_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #4

declare void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #4

declare void @ucnv_getInvalidChars_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare void @_ZN6icu_7813UnicodeStringC1EPKciS2_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 3) i32 @_ZL10cnvSigTypeP10UConverter(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca [1 x i16], align 2                ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [20 x i8], align 16               ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.f = tail call ptr @uset_open_78(i32 noundef 1, i32 noundef 0) ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @ucnv_getUnicodeSet_78(ptr noundef %0, ptr noundef %i.f, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.g = load i32, ptr %i.a, align 4, !tbaa !10
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call signext i8 @uset_contains_78(ptr noundef %i.f, i32 noundef 65279)
  %.not7 = icmp eq i8 %i.i, 0
  br i1 %.not7, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b, %bb.a
  call void @uset_close_78(ptr noundef %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @uset_close_78(ptr noundef %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i16 97, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store ptr %i.b, ptr %i.c, align 8, !tbaa !25
  store ptr %i.d, ptr %i.e, align 8, !tbaa !24
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  call void @ucnv_fromUnicode_78(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k, ptr noundef null, i8 noundef signext 1, ptr noundef nonnull %i.a)
  call void @ucnv_resetFromUnicode_78(ptr noundef %0)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = call ptr @ucnv_detectUnicodeSignature_78(ptr noundef nonnull %i.d, i32 noundef %i.p, ptr noundef null, ptr noundef nonnull %i.a)
  %.not8 = icmp eq ptr %i.q, null
  %i.r = load i32, ptr %i.a, align 4
  %.inv = icmp sgt i32 %i.r, 0
  %i.s = select i1 %.not8, i1 true, i1 %.inv
  %.1 = select i1 %i.s, i32 1, i32 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.2 = phi i32 [ %.1, %bb.c ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.2
}

declare void @ucnv_fromUnicode_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #4

declare void @ucnv_getInvalidUChars_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

declare void @ucnv_close_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 5) i32 @main(i32 noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 33 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %4 = alloca %class.ConvertFile, align 8         ; 14 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.g = sext i32 %0 to i64
  %.idx = shl nsw i64 %i.g, 3
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.idx ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 0, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %4, i8 0, i64 33, i1 false)
  invoke void @u_init_78(ptr noundef nonnull %i.e)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.e, align 4, !tbaa !10   ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.l = load ptr, ptr %1, align 8, !tbaa !24
  %i.m = invoke ptr @u_errorName_78(i32 noundef %i.i)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.19, ptr noundef %i.l, ptr noundef %i.m) #20 ; 0 uses
  call void @exit(i32 noundef 1) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.p = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.o, i32 noundef 47) #21 ; 2 uses
  %.not290 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.0221 = select i1 %.not290, ptr %i.o, ptr %i.q ; 12 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not291972 = icmp eq i32 %0, 1
  br i1 %.not291972, label %.thread1203, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.cx
  %.0222.ptr990 = phi ptr [ %.ptr, %sub_0.lr.ph ], [ %.0222.ptr.ptr, %bb.cx ]
  %.0211989 = phi i8 [ 0, %sub_0.lr.ph ], [ %.1212, %bb.cx ] ; 20 uses
  %.0213988 = phi ptr [ null, %sub_0.lr.ph ], [ %.1214, %bb.cx ] ; 22 uses
  %.0215987 = phi i8 [ 0, %sub_0.lr.ph ], [ %.1216, %bb.cx ] ; 23 uses
  %.0217986 = phi i8 [ 0, %sub_0.lr.ph ], [ %.1218, %bb.cx ] ; 23 uses
  %.0219985 = phi i8 [ 0, %sub_0.lr.ph ], [ %.1220, %bb.cx ] ; 23 uses
  %.0222.idx984 = phi i64 [ 8, %sub_0.lr.ph ], [ %.1223.idx, %bb.cx ] ; 24 uses
  %.0224983 = phi ptr [ %.ptr, %sub_0.lr.ph ], [ %i.jb, %bb.cx ] ; 25 uses
  %.0227982 = phi ptr [ null, %sub_0.lr.ph ], [ %.3230, %bb.cx ] ; 22 uses
  %.0231981 = phi ptr [ @UCNV_TO_U_CALLBACK_STOP_78, %sub_0.lr.ph ], [ %.3234, %bb.cx ] ; 21 uses
  %.0235980 = phi ptr [ null, %sub_0.lr.ph ], [ %.3238, %bb.cx ] ; 22 uses
  %.0239979 = phi ptr [ @UCNV_FROM_U_CALLBACK_STOP_78, %sub_0.lr.ph ], [ %.3242, %bb.cx ] ; 21 uses
  %.0243978 = phi i8 [ 0, %sub_0.lr.ph ], [ %.1244, %bb.cx ] ; 22 uses
  %.0245977 = phi ptr [ null, %sub_0.lr.ph ], [ %.1246, %bb.cx ] ; 24 uses
  %.0247976 = phi ptr [ null, %sub_0.lr.ph ], [ %.1248, %bb.cx ] ; 23 uses
  %.0249975 = phi ptr [ null, %sub_0.lr.ph ], [ %.1250, %bb.cx ] ; 23 uses
  %.0252974 = phi ptr [ null, %sub_0.lr.ph ], [ %.1253, %bb.cx ] ; 23 uses
  %.0255973 = phi i64 [ 4096, %sub_0.lr.ph ], [ %.1256, %bb.cx ] ; 23 uses
  %i.s = load ptr, ptr %.0224983, align 8, !tbaa !24 ; 51 uses
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = sub nsw i32 45, %i.u                     ; 13 uses
  %.not = icmp eq i8 %i.t, 45                     ; 14 uses
  br i1 %.not, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = sub nsw i32 102, %i.y
  %.not1009 = icmp eq i8 %i.x, 102
  br i1 %.not1009, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = sub nsw i32 0, %i.ac
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.ae = phi i32 [ %i.v, %sub_0 ], [ %i.z, %sub_1 ], [ %i.ad, %sub_2 ]
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.tail
  %i.ag = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.21, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not307 = icmp eq i32 %i.ag, 0
  br i1 %.not307, label %bb.g, label %sub_0436

bb.g:                                             ; preds = %bb.f, %.tail
  %i.ah = getelementptr inbounds nuw i8, ptr %.0224983, i64 8 ; 3 uses
  %.not358 = icmp eq ptr %i.ah, %i.h
  br i1 %.not358, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24
  br label %bb.cx

.invoke:                                          ; preds = %bb.bm, %bb.ba, %bb.ax, %bb.ai, %bb.ah, %bb.ae, %bb.ac, %bb.q, %bb.l, %bb.j, %.tail460, %.tail465, %bb.ay, %bb.g, %bb.cv, %bb.co, %bb.by
  %12 = phi i32 [ 1, %bb.cv ], [ 1, %bb.g ], [ 1, %bb.by ], [ 1, %bb.co ], [ 0, %.tail465 ], [ 0, %.tail460 ], [ 1, %bb.bm ], [ 0, %bb.ay ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.q ], [ 1, %bb.ac ], [ 1, %bb.ae ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.ax ], [ 1, %bb.ba ]
  invoke fastcc void @_ZL5usagePKci(ptr noundef nonnull %.0221, i32 noundef %12)
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

sub_0436:                                         ; preds = %bb.f
  br i1 %.not, label %sub_1437, label %.tail435

sub_1437:                                         ; preds = %sub_0436
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = sub nsw i32 116, %i.al
  %.not1011 = icmp eq i8 %i.ak, 116
  br i1 %.not1011, label %sub_2438, label %.tail435

sub_2438:                                         ; preds = %sub_1437
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = sub nsw i32 0, %i.ap
  br label %.tail435

.tail435:                                         ; preds = %sub_0436, %sub_1437, %sub_2438
  %i.ar = phi i32 [ %i.v, %sub_0436 ], [ %i.am, %sub_1437 ], [ %i.aq, %sub_2438 ]
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.tail435
  %i.at = call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.23, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not308 = icmp eq i32 %i.at, 0
  br i1 %.not308, label %bb.j, label %sub_0441

bb.j:                                             ; preds = %bb.i, %.tail435
  %i.au = getelementptr inbounds nuw i8, ptr %.0224983, i64 8 ; 3 uses
  %.not357 = icmp eq ptr %i.au, %i.h
  br i1 %.not357, label %.invoke, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  br label %bb.cx

sub_0441:                                         ; preds = %bb.i
  br i1 %.not, label %sub_1442, label %.tail440

sub_1442:                                         ; preds = %sub_0441
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %i.ay = zext i8 %i.ax to i32
  %i.az = sub nsw i32 120, %i.ay
  %.not1013 = icmp eq i8 %i.ax, 120
  br i1 %.not1013, label %sub_2443, label %.tail440

sub_2443:                                         ; preds = %sub_1442
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = sub nsw i32 0, %i.bc
  br label %.tail440

.tail440:                                         ; preds = %sub_0441, %sub_1442, %sub_2443
  %i.be = phi i32 [ %i.v, %sub_0441 ], [ %i.az, %sub_1442 ], [ %i.bd, %sub_2443 ]
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.tail440
  %i.bg = getelementptr inbounds nuw i8, ptr %.0224983, i64 8 ; 3 uses
  %.not356 = icmp eq ptr %i.bg, %i.h
  br i1 %.not356, label %.invoke, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !24
  br label %bb.cx

bb.n:                                             ; preds = %.tail440
  %i.bi = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.25, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not309 = icmp eq i32 %i.bi, 0
  br i1 %.not309, label %bb.cx, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.26, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not310 = icmp eq i32 %i.bj, 0
  br i1 %.not310, label %bb.cx, label %sub_0446

sub_0446:                                         ; preds = %bb.o
  br i1 %.not, label %sub_1447, label %.tail445

sub_1447:                                         ; preds = %sub_0446
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %i.bm = zext i8 %i.bl to i32
  %i.bn = sub nsw i32 98, %i.bm
  %.not1015 = icmp eq i8 %i.bl, 98
  br i1 %.not1015, label %sub_2448, label %.tail445

sub_2448:                                         ; preds = %sub_1447
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = sub nsw i32 0, %i.bq
  br label %.tail445

.tail445:                                         ; preds = %sub_0446, %sub_1447, %sub_2448
  %i.bs = phi i32 [ %i.v, %sub_0446 ], [ %i.bn, %sub_1447 ], [ %i.br, %sub_2448 ]
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.tail445
  %i.bu = call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.28, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not311 = icmp eq i32 %i.bu, 0
  br i1 %.not311, label %bb.q, label %sub_0451

bb.q:                                             ; preds = %bb.p, %.tail445
  %i.bv = getelementptr inbounds nuw i8, ptr %.0224983, i64 8 ; 4 uses
  %.not353 = icmp eq ptr %i.bv, %i.h
  br i1 %.not353, label %.invoke, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bw, ptr noundef null, i32 noundef 10) #18, !inline_history !51 ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = and i64 %i.bx, 4294967295
  %i.ca = icmp slt i32 %i.by, 1
  br i1 %i.ca, label %bb.s, label %bb.cx

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_ZL7initMsgPKc(ptr noundef nonnull %.0221)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !24
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %i.cb)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_ZL7initMsgPKc(ptr noundef nonnull %.0221)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cd = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ce = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.cc, ptr noundef nonnull @.str.29, ptr noundef %i.cd)
          to label %bb.x unwind label %bb.z       ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.fr

bb.y:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn354 = phi { ptr, i32 } [ %i.cg, %bb.z ], [ %i.cf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body

sub_0451:                                         ; preds = %bb.p
  br i1 %.not, label %sub_1452, label %.tail450

sub_1452:                                         ; preds = %sub_0451
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ci = load i8, ptr %i.ch, align 1             ; 2 uses
  %i.cj = zext i8 %i.ci to i32
  %i.ck = sub nsw i32 108, %i.cj
  %.not1017 = icmp eq i8 %i.ci, 108
  br i1 %.not1017, label %sub_2453, label %.tail450

sub_2453:                                         ; preds = %sub_1452
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32
  %i.co = sub nsw i32 0, %i.cn
  br label %.tail450

.tail450:                                         ; preds = %sub_0451, %sub_1452, %sub_2453
  %i.cp = phi i32 [ %i.v, %sub_0451 ], [ %i.ck, %sub_1452 ], [ %i.co, %sub_2453 ]
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.tail450
  %i.cr = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.31, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not312 = icmp eq i32 %i.cr, 0
  br i1 %.not312, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %.tail450
  %.not352 = icmp eq i8 %.0215987, 0
  br i1 %.not352, label %bb.cx, label %.invoke

bb.ad:                                            ; preds = %bb.ab
  %i.cs = call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.32, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %.not351 = icmp eq i8 %.0215987, 0
  br i1 %.not351, label %bb.af, label %.invoke

bb.af:                                            ; preds = %bb.ae
  %i.cu = invoke ptr @ucnv_getDefaultName_78()
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ad
  %i.cv = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.33, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ah, label %bb.av

bb.ah:                                            ; preds = %bb.ag
  %.not346 = icmp eq i8 %.0215987, 0
  br i1 %.not346, label %bb.ai, label %.invoke

bb.ai:                                            ; preds = %bb.ah
  %i.cx = getelementptr inbounds nuw i8, ptr %.0224983, i64 8 ; 4 uses
  %.not347 = icmp eq ptr %i.cx, %i.h
  br i1 %.not347, label %.invoke, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i32 0, ptr %i.f, align 4, !tbaa !10
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !24
  %i.cz = invoke ptr @ucnv_getAlias_78(ptr noundef %i.cy, i16 noundef zeroext 0, ptr noundef nonnull %i.f)
          to label %bb.ak unwind label %bb.ap     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.da = load i32, ptr %i.f, align 4, !tbaa !10
  %i.db = icmp slt i32 %i.da, 1
  %i.dc = icmp ne ptr %i.cz, null
  %or.cond = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond, label %.thread, label %bb.al

.thread:                                          ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.cx

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !24
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %i.dd)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_ZL7initMsgPKc(ptr noundef nonnull %.0221)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.df = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.dg = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.de, ptr noundef nonnull @.str.34, ptr noundef %i.df)
          to label %bb.at unwind label %bb.ar     ; 0 uses

bb.ap:                                            ; preds = %bb.aj
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn348 = phi { ptr, i32 } [ %i.dj, %bb.ar ], [ %i.di, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.au

bb.at:                                            ; preds = %bb.ao
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.fr

bb.au:                                            ; preds = %bb.as, %bb.ap
  %.pn348.pn = phi { ptr, i32 } [ %.pn348, %bb.as ], [ %i.dh, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %.body

bb.av:                                            ; preds = %bb.ag
  %i.dk = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.35, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.cx, label %sub_0456

sub_0456:                                         ; preds = %bb.av
  br i1 %.not, label %sub_1457, label %.tail455

sub_1457:                                         ; preds = %sub_0456
  %i.dm = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.dn = load i8, ptr %i.dm, align 1             ; 2 uses
  %i.do = zext i8 %i.dn to i32
  %i.dp = sub nsw i32 76, %i.do
  %.not1019 = icmp eq i8 %i.dn, 76
  br i1 %.not1019, label %sub_2458, label %.tail455

sub_2458:                                         ; preds = %sub_1457
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32
  %i.dt = sub nsw i32 0, %i.ds
  br label %.tail455

.tail455:                                         ; preds = %sub_0456, %sub_1457, %sub_2458
  %i.du = phi i32 [ %i.v, %sub_0456 ], [ %i.dp, %sub_1457 ], [ %i.dt, %sub_2458 ]
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.tail455
  %i.dw = call i32 @strcmp(ptr noundef nonnull dereferenceable(23) @.str.37, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not313 = icmp eq i32 %i.dw, 0
  br i1 %.not313, label %bb.ax, label %sub_0461

bb.ax:                                            ; preds = %bb.aw, %.tail455
  %.not345 = icmp eq i8 %.0219985, 0
  br i1 %.not345, label %bb.cx, label %.invoke

sub_0461:                                         ; preds = %bb.aw
  br i1 %.not, label %sub_1462, label %.tail465

sub_1462:                                         ; preds = %sub_0461
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.dy = load i8, ptr %i.dx, align 1             ; 2 uses
  %i.dz = zext i8 %i.dy to i32
  %i.ea = sub nsw i32 104, %i.dz
  %.not1021 = icmp eq i8 %i.dy, 104
  br i1 %.not1021, label %sub_2463, label %.tail460

sub_2463:                                         ; preds = %sub_1462
  %i.eb = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i32
  %i.ee = sub nsw i32 0, %i.ed
  br label %.tail460

.tail460:                                         ; preds = %sub_1462, %sub_2463
  %i.ef = phi i32 [ %i.ee, %sub_2463 ], [ %i.ea, %sub_1462 ]
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %.invoke, label %sub_1467

sub_1467:                                         ; preds = %.tail460
  %i.eh = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ei = load i8, ptr %i.eh, align 1             ; 2 uses
  %i.ej = zext i8 %i.ei to i32
  %i.ek = sub nsw i32 63, %i.ej
  %.not1023 = icmp eq i8 %i.ei, 63
  br i1 %.not1023, label %sub_2468, label %.tail465

sub_2468:                                         ; preds = %sub_1467
  %i.el = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.em = load i8, ptr %i.el, align 1
  %i.en = zext i8 %i.em to i32
  %i.eo = sub nsw i32 0, %i.en
  br label %.tail465

.tail465:                                         ; preds = %sub_0461, %sub_1467, %sub_2468
  %13 = phi i32 [ %i.eo, %sub_2468 ], [ %i.ek, %sub_1467 ], [ %i.v, %sub_0461 ]
  %.not314 = icmp eq i32 %13, 0
  br i1 %.not314, label %.invoke, label %bb.ay

bb.ay:                                            ; preds = %.tail465
  %i.ep = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.40, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not315 = icmp eq i32 %i.ep, 0
  br i1 %.not315, label %.invoke, label %sub_0471

sub_0471:                                         ; preds = %bb.ay
  br i1 %.not, label %sub_1472, label %.tail470

sub_1472:                                         ; preds = %sub_0471
  %i.eq = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.er = load i8, ptr %i.eq, align 1             ; 2 uses
  %i.es = zext i8 %i.er to i32
  %i.et = sub nsw i32 99, %i.es
  %.not1025 = icmp eq i8 %i.er, 99
  br i1 %.not1025, label %sub_2473, label %.tail470

sub_2473:                                         ; preds = %sub_1472
  %i.eu = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i32
  %i.ex = sub nsw i32 0, %i.ew
  br label %.tail470

.tail470:                                         ; preds = %sub_0471, %sub_1472, %sub_2473
  %i.ey = phi i32 [ %i.v, %sub_0471 ], [ %i.et, %sub_1472 ], [ %i.ex, %sub_2473 ]
  %.not316 = icmp eq i32 %i.ey, 0
  br i1 %.not316, label %bb.cx, label %bb.az

bb.az:                                            ; preds = %.tail470
  %i.ez = call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.42, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not317 = icmp eq i32 %i.ez, 0
  br i1 %.not317, label %bb.ba, label %bb.bl

bb.ba:                                            ; preds = %bb.az
  %i.fa = getelementptr inbounds nuw i8, ptr %.0224983, i64 8 ; 4 uses
  %.not318 = icmp eq ptr %i.fa, %i.h
  br i1 %.not318, label %.invoke, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !24
  %i.fc = invoke fastcc noundef ptr @_ZL12findCallbackPKc(ptr noundef %i.fb)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bc:                                            ; preds = %bb.bb
  %.not319.not = icmp eq ptr %i.fc, null
  br i1 %.not319.not, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !24
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.fd)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @_ZL7initMsgPKc(ptr noundef nonnull %.0221)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.fe = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ff = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.fg = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.fe, ptr noundef nonnull @.str.43, ptr noundef %i.ff)
          to label %.thread404 unwind label %bb.bi ; 0 uses

.thread404:                                       ; preds = %bb.bg
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.fr

bb.bh:                                            ; preds = %bb.bd
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #18
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn320 = phi { ptr, i32 } [ %i.fi, %bb.bi ], [ %i.fh, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.body

bb.bk:                                            ; preds = %bb.bc
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !62
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !63
  br label %bb.cx

bb.bl:                                            ; preds = %bb.az
  %i.fn = call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.44, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not323 = icmp eq i32 %i.fn, 0
  br i1 %.not323, label %bb.bm, label %sub_0476

bb.bm:                                            ; preds = %bb.bl
  %i.fo = getelementptr inbounds nuw i8, ptr %.0224983, i64 8 ; 4 uses
  %.not324 = icmp eq ptr %i.fo, %i.h
  br i1 %.not324, label %.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !24
  %i.fq = invoke fastcc noundef ptr @_ZL12findCallbackPKc(ptr noundef %i.fp)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bo:                                            ; preds = %bb.bn
  %.not325.not = icmp eq ptr %i.fq, null
  br i1 %.not325.not, label %bb.bp, label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !24
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %i.fr)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  invoke fastcc void @_ZL7initMsgPKc(ptr noundef nonnull %.0221)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ft = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.fu = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.fs, ptr noundef nonnull @.str.43, ptr noundef %i.ft)
          to label %.thread408 unwind label %bb.bu ; 0 uses

.thread408:                                       ; preds = %bb.bs
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.fr

bb.bt:                                            ; preds = %bb.bp
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn326 = phi { ptr, i32 } [ %i.fw, %bb.bu ], [ %i.fv, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body

bb.bw:                                            ; preds = %bb.bo
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !65
  br label %bb.cx

sub_0476:                                         ; preds = %bb.bl
  br i1 %.not, label %sub_1477, label %.tail475

sub_1477:                                         ; preds = %sub_0476
  %i.gb = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.gc = load i8, ptr %i.gb, align 1             ; 2 uses
  %i.gd = zext i8 %i.gc to i32
  %i.ge = sub nsw i32 105, %i.gd
  %.not1027 = icmp eq i8 %i.gc, 105
  br i1 %.not1027, label %sub_2478, label %.tail475

sub_2478:                                         ; preds = %sub_1477
  %i.gf = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = zext i8 %i.gg to i32
  %i.gi = sub nsw i32 0, %i.gh
  br label %.tail475

.tail475:                                         ; preds = %sub_0476, %sub_1477, %sub_2478
  %i.gj = phi i32 [ %i.v, %sub_0476 ], [ %i.ge, %sub_1477 ], [ %i.gi, %sub_2478 ]
  %.not329 = icmp eq i32 %i.gj, 0
  br i1 %.not329, label %bb.cx, label %bb.bx

bb.bx:                                            ; preds = %.tail475
  %i.gk = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.46, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not330 = icmp eq i32 %i.gk, 0
  br i1 %.not330, label %bb.by, label %sub_0481

bb.by:                                            ; preds = %bb.bx
  %i.gl = getelementptr inbounds nuw i8, ptr %.0224983, i64 8 ; 4 uses
  %.not331 = icmp eq ptr %i.gl, %i.h
  br i1 %.not331, label %.invoke, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !24
  %i.gn = invoke fastcc noundef ptr @_ZL12findCallbackPKc(ptr noundef %i.gm)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.ca:                                            ; preds = %bb.bz
  %.not332.not = icmp eq ptr %i.gn, null
  br i1 %.not332.not, label %bb.cb, label %bb.ci

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.el, %.lr.ph.split.i, %.lr.ph134.i, %bb.dm, %.noexc375, %bb.dw, %bb.dl, %.noexc372, %.lr.ph, %.lr.ph134.us.i, %bb.dn, %bb.do, %bb.ds, %.lr.ph134.us151.i, %bb.dz, %.noexc382, %.lr.ph134.preheader.i, %.lr.ph.split.us.i, %bb.bn, %bb.bb, %bb.af, %bb.bz, %.invoke, %.noexc401, %bb.fj, %._crit_edge.i391, %.noexc392, %bb.ek, %.thread115.i, %._crit_edge143.i, %.split.us.i, %.split145.us.i, %.noexc370, %.thread.i, %.noexc366, %bb.dg, %.noexc364, %bb.df, %.noexc362, %bb.de, %bb.dd, %bb.db, %bb.a, %bb.c, %bb.s, %bb.eq, %bb.er, %bb.fn, %bb.fq
  %lpad.loopexit.split-lp1393 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
end_hunk_0
