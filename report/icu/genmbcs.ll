inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0
@.str.2 = private unnamed_addr constant [72 x i8] c"makeconv warning: --small not available for .ucm files without |0 etc.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"error: illegal fallback indicator %d\0A\00", align 1
@VERBOSE = external local_unnamed_addr global i8, align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"the total number of offsets is 0x%lx=%ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"error: out of memory allocating %ld 16-bit code units\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"error: out of memory allocating %ld B for target mappings\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"error: there is no state information!\0A\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"error: byte sequence too short, ends in non-final state %hu: 0x%s (U+%x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"error: byte sequence too long by %d bytes, final state %u: 0x%s (U+%x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"error: byte sequence ends in illegal state at U+%04x<->0x%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"error: byte sequence ends in state-change-only at U+%04x<->0x%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"error: byte sequence ends in unassigned state at U+%04x<->0x%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"error: duplicate codepage byte sequence at U+%04x<->0x%s see U+%04x\0A\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"duplicate codepage byte sequence at U+%04x<->0x%s see U+%04x\0A\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"error: code point does not fit into valid-16-bit state at U+%04x<->0x%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [87 x i8] c"internal error: byte sequence reached reserved action code, entry 0x%02x: 0x%s (U+%x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"error: too many toUnicode fallbacks, currently at: U+%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"error: too many stage 2 entries at U+%04x<->0x%02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"error: too many code points at U+%04x<->0x%02x\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"error: duplicate Unicode code point at U+%04x<->0x%02x see 0x%02x\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"duplicate Unicode code point at U+%04x<->0x%02x see 0x%02x\0A\00", align 1
@IGNORE_SISO_CHECK = external local_unnamed_addr global i8, align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"error: illegal mapping to SI or SO for SI/SO codepage: U+%04x<->0x%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"error: unable to encode a |1 fallback from U+%04x to 0x%02x\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"error: too many stage 2 entries at U+%04x<->0x%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"error: too many code points at U+%04x<->0x%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"error: duplicate Unicode code point at U+%04x<->0x%s see 0x%02x\0A\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"duplicate Unicode code point at U+%04x<->0x%s see 0x%02x\0A\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"fromUnicode number of uint%s_t in stage 2: 0x%lx=%lu\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.31 = private unnamed_addr constant [66 x i8] c"fromUnicode number of %d-byte stage 3 mapping entries: 0x%lx=%lu\0A\00", align 1
@.str.32 = private unnamed_addr constant [68 x i8] c"compacting stage 3 from stage3Top=0x%lx to 0x%lx, saving %ld bytes\0A\00", align 1
@.str.33 = private unnamed_addr constant [68 x i8] c"compacting stage 2 from stage2Top=0x%lx to 0x%lx, saving %ld bytes\0A\00", align 1
@.str.34 = private unnamed_addr constant [61 x i8] c"+ omitting %lu out of %lu stage2 entries and %lu fromUBytes\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"+ total size savings: %lu bytes\0A\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"error: offset 0x%lx to extension table exceeds 0xffffff\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @MBCSGetDummy() local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(456528) @_ZL6gDummy, i8 0, i64 456528, i1 false)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL6gDummy, i64 456522), align 2, !tbaa !9
  %i.a = load i8, ptr @SMALL, align 1, !tbaa !17
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL6gDummy, i64 456523), align 1, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i16 [ -1, %bb.b ], [ -10241, %bb.a ]
  store i16 %.sink, ptr getelementptr inbounds nuw (i8, ptr @_ZL6gDummy, i64 456520), align 8, !tbaa !19
  ret ptr @_ZL6gDummy
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local nonnull ptr @MBCSOpen(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(456528) ptr @uprv_malloc_78(i64 noundef 456528) #13 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 7) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(456488) %i.c, i8 0, i64 456488, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %0, ptr %i.d, align 8, !tbaa !20
  store ptr @_ZL9MBCSCloseP12NewConverter, ptr %i.a, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZL11MBCSIsValidP12NewConverterPKhi, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZL12MBCSAddTableP12NewConverterP8UCMTableP20UConverterStaticData, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_ZL9MBCSWriteP12NewConverterPK20UConverterStaticDataP14UNewDataMemoryi, ptr %i.g, align 8, !tbaa !24
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i8 0, 2) i8 @MBCSOkForBaseFromUnicode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i8 %4, 2
  %i.b = icmp eq i32 %2, 1
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %4, 1                         ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %1, align 1, !tbaa !17
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = icmp slt i8 %4, 2                        ; 2 uses
  %i.g = icmp sgt i32 %2, 1
  %or.cond3 = and i1 %i.g, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = load i8, ptr %1, align 1, !tbaa !17
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 456522
  %i.k = load i8, ptr %i.j, align 2, !tbaa !9
  %i.l = icmp ne i8 %i.k, 0
  %or.cond6 = and i1 %i.f, %i.l
  br i1 %or.cond6, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 456520
  %i.n = load i16, ptr %i.m, align 8, !tbaa !19
  %i.o = zext i16 %i.n to i32
  %.not = icmp sgt i32 %3, %i.o
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load i8, ptr %1, align 1, !tbaa !17
  %i.q = icmp eq i8 %i.p, 0
  %or.cond9 = or i1 %i.c, %i.q
  br i1 %or.cond9, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 456523
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18
  %i.t = icmp eq i8 %i.s, 0
  %i.u = icmp eq i8 %4, 0
  %or.cond12.not = or i1 %i.u, %i.t
  %. = zext i1 %or.cond12.not to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.c, %bb.e, %bb.a
  %.0 = phi i8 [ 0, %bb.h ], [ 0, %bb.c ], [ %., %bb.i ], [ 0, %bb.a ], [ 0, %bb.e ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL9MBCSCloseP12NewConverter(ptr noundef %0) #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  tail call void @uprv_free_78(ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 454456
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  tail call void @uprv_free_78(ptr noundef %i.d)
  tail call void @uprv_free_78(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL11MBCSIsValidP12NewConverterPKhi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = tail call i32 @ucm_countChars(ptr noundef nonnull %i.c, ptr noundef %1, i32 noundef %2)
  %i.e = icmp eq i32 %i.d, 1
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL12MBCSAddTableP12NewConverterP8UCMTableP20UConverterStaticData(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((79, 80)) %2) #2 {
bb.a:
  %i.a = alloca [1007 x i16], align 16            ; 7 uses
  %i.b = alloca [1007 x i16], align 16            ; 9 uses
  %i.c = alloca [4096 x i16], align 16            ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i8, ptr %i.d, align 8, !tbaa !27    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 79
  store i8 %i.e, ptr %i.f, align 1, !tbaa !31
  %i.g = icmp eq i8 %i.e, 3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 74, i64 1, ptr %i.h) #15 ; 0 uses
  br label %_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 69
  store i8 2, ptr %i.j, align 1, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 132120
  %i.n = load i32, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.p = load i8, ptr %i.o, align 1, !tbaa !40    ; 2 uses
  %i.q = trunc i8 %i.p to i1
  %i.r = and i8 %i.p, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 456522 ; 4 uses
  store i8 %i.r, ptr %i.s, align 2, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 456520 ; 2 uses
  %i.u = icmp sgt i32 %i.n, 1                     ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i16 -10241, ptr %i.t, align 8, !tbaa !19
  %i.v = load i8, ptr @SMALL, align 1, !tbaa !17
  %i.w = icmp ne i8 %i.v, 0
  %or.cond = select i1 %i.w, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 456523
  store i8 1, ptr %i.x, align 1, !tbaa !18
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  store i16 0, ptr %i.t, align 8, !tbaa !19
  %i.y = load i8, ptr @SMALL, align 1, !tbaa !17
  %i.z = icmp ne i8 %i.y, 0
  %or.cond3 = select i1 %i.z, i1 %i.u, i1 false
  br i1 %or.cond3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.ab = tail call i64 @fwrite(ptr nonnull @.str.2, i64 71, i64 1, ptr %i.aa) #15 ; 0 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  %i.ac = phi ptr [ %i.l, %bb.f ], [ %.pre, %bb.g ], [ %i.l, %bb.d ], [ %i.l, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 132124
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41 ; 5 uses
  %i.af = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not.i = icmp eq i8 %i.af, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = sext i32 %i.ae to i64                   ; 2 uses
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %i.ag, i64 noundef %i.ag) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = icmp sgt i32 %i.ae, 0
  br i1 %i.ai, label %bb.k, label %.loopexit76.i

bb.k:                                             ; preds = %bb.j
  %i.aj = zext nneg i32 %i.ae to i64              ; 8 uses
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ak) #13 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 65584
  store ptr %i.al, ptr %i.am, align 8, !tbaa !25
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %bb.l, label %iter.check

iter.check:                                       ; preds = %bb.k
  %min.iters.check = icmp ult i32 %i.ae, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check227 = icmp ult i32 %i.ae, 16
  br i1 %min.iters.check227, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.aj, 12
  %n.vec = and i64 %i.aj, 2147483632              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <8 x i16> splat (i16 -2), ptr %i.ap, align 2, !tbaa !42
  store <8 x i16> splat (i16 -2), ptr %i.aq, align 2, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aj
  br i1 %cmp.n, label %.loopexit76.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec228 = and i64 %i.aj, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index229 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next230, %vec.epilog.vector.body ] ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %index229
  store <4 x i16> splat (i16 -2), ptr %i.as, align 2, !tbaa !42
  %index.next230 = add nuw i64 %index229, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next230, %n.vec228
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n231 = icmp eq i64 %n.vec228, %i.aj
  br i1 %cmp.n231, label %.loopexit76.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec228, %vec.epilog.middle.block ]
  br label %.lr.ph.i

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.5, i64 noundef %i.aj) #16 ; 0 uses
  br label %_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %indvars.iv.i
  store i16 -2, ptr %i.aw, align 2, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aj
  br i1 %exitcond.not.i, label %.loopexit76.i, label %.lr.ph.i, !llvm.loop !49

.loopexit76.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.j
  %i.ax = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 132120
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !36 ; 3 uses
  %i.ba = icmp eq i32 %i.az, 1                    ; 2 uses
  %i.bb = shl nsw i32 %i.az, 20
  %narrow.i = select i1 %i.ba, i32 131072, i32 %i.bb
  %.065.i = sext i32 %narrow.i to i64             ; 3 uses
  %i.bc = tail call noalias ptr @uprv_malloc_78(i64 noundef %.065.i) #13 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 454456 ; 3 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !26
  %i.be = icmp eq ptr %i.bc, null
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit76.i
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.6, i64 noundef %.065.i) #16 ; 0 uses
  br label %_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit

bb.n:                                             ; preds = %.loopexit76.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bc, i8 0, i64 %.065.i, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 65592 ; 5 uses
  store i16 64, ptr %i.bh, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 454464 ; 7 uses
  store i32 128, ptr %i.bi, align 8, !tbaa !50
  br i1 %i.ba, label %.preheader.i, label %.preheader73.i

.preheader73.i:                                   ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 196920
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.bj, align 8, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 196936
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.bk, align 8, !tbaa !51
  br label %bb.o

.preheader.i:                                     ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 67896
  store <8 x i16> <i16 64, i16 80, i16 96, i16 112, i16 128, i16 144, i16 160, i16 176>, ptr %i.bl, align 8, !tbaa !42
  br label %bb.o

bb.o:                                             ; preds = %.preheader.i, %.preheader73.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 454472
  store i16 64, ptr %i.bm, align 8, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 454474
  store i16 128, ptr %i.bn, align 2, !tbaa !42
  %i.bo = mul nsw i32 %i.az, 192
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 6 uses
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !52
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 78 ; 3 uses
  store i8 0, ptr %i.bq, align 2, !tbaa !53
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 77 ; 2 uses
  store i8 0, ptr %i.br, align 1, !tbaa !54
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !55
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.bv = load ptr, ptr %1, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 456523 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 456520 ; 4 uses
  %i.by = icmp sgt i32 %i.n, 1
  %i.bz = icmp eq i32 %i.n, 1                     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.an
  %.0105153 = phi i8 [ 1, %.lr.ph ], [ %.1, %bb.an ] ; 9 uses
  %.0106152 = phi ptr [ %i.bv, %.lr.ph ], [ %i.ep, %bb.an ] ; 15 uses
  %.0107151 = phi i32 [ 0, %.lr.ph ], [ %i.eq, %bb.an ]
  %i.ca = load i32, ptr %.0106152, align 4, !tbaa !57 ; 10 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0106152, i64 10 ; 6 uses
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !59  ; 7 uses
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !18  ; 3 uses
  %i.ce = icmp ne i8 %i.cd, 0
  %i.cf = icmp slt i8 %i.cc, 2                    ; 3 uses
  %or.cond6 = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond6, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cg = load i16, ptr %i.bx, align 8, !tbaa !19 ; 2 uses
  %i.ch = zext i16 %i.cg to i32
  %i.ci = icmp sgt i32 %i.ca, %i.ch
  %i.cj = icmp slt i32 %i.ca, 65536
  %or.cond8 = and i1 %i.cj, %i.ci
  %i.ck = icmp ult i16 %i.cg, -257
  %or.cond111 = and i1 %i.ck, %or.cond8
  br i1 %or.cond111, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i16 -1, ptr %i.bx, align 8, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  switch i8 %i.cc, label %bb.am [
    i8 -1, label %bb.t
    i8 0, label %bb.t
    i8 1, label %bb.ab
    i8 2, label %bb.ah
    i8 3, label %bb.ak
    i8 4, label %bb.al
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %.0106152, i64 4 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0106152, i64 9 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !60
  %i.co = sext i8 %i.cn to i32
  %i.cp = tail call fastcc noundef signext i8 @_ZL16MBCSAddToUnicodeP8MBCSDataPKhiia(ptr noundef nonnull %0, ptr noundef nonnull %i.cl, i32 noundef %i.co, i32 noundef %i.ca, i8 noundef signext %i.cc)
  %i.cq = and i8 %i.cp, %.0105153                 ; 3 uses
  %i.cr = load i8, ptr %i.cm, align 1, !tbaa !60  ; 2 uses
  %i.cs = sext i8 %i.cr to i32
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ct = tail call fastcc noundef signext i8 @_ZL24MBCSSingleAddFromUnicodeP8MBCSDataPKhiia(ptr noundef nonnull %0, ptr noundef nonnull %i.cl, i32 noundef %i.ca, i8 noundef signext %i.cc)
  %i.cu = and i8 %i.ct, %i.cq
  br label %bb.an

bb.v:                                             ; preds = %bb.t
  %i.cv = icmp sgt i8 %i.cr, 1
  %or.cond3.i = and i1 %i.cf, %i.cv
  br i1 %or.cond3.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cw = load i8, ptr %i.cl, align 4, !tbaa !17
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %MBCSOkForBaseFromUnicode.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cy = load i8, ptr %i.s, align 2, !tbaa !9
  %i.cz = icmp ne i8 %i.cy, 0
  %or.cond6.i = and i1 %i.cf, %i.cz
  br i1 %or.cond6.i, label %bb.y, label %MBCSOkForBaseFromUnicode.exit

bb.y:                                             ; preds = %bb.x
  %i.da = load i16, ptr %i.bx, align 8, !tbaa !19
  %i.db = zext i16 %i.da to i32
  %.not.i113 = icmp sgt i32 %i.ca, %i.db
  br i1 %.not.i113, label %MBCSOkForBaseFromUnicode.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = load i8, ptr %i.cl, align 4, !tbaa !17
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %MBCSOkForBaseFromUnicode.exit.thread, label %MBCSOkForBaseFromUnicode.exit

MBCSOkForBaseFromUnicode.exit:                    ; preds = %bb.x, %bb.y, %bb.z
  %i.de = load i8, ptr %i.bw, align 1, !tbaa !18
  %i.df = icmp ne i8 %i.de, 0
  %i.dg = icmp ne i8 %i.cc, 0
  %or.cond12.not.i.not = and i1 %i.dg, %i.df
  br i1 %or.cond12.not.i.not, label %MBCSOkForBaseFromUnicode.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %MBCSOkForBaseFromUnicode.exit
  %i.dh = tail call fastcc noundef signext i8 @_ZL18MBCSAddFromUnicodeP8MBCSDataPKhiia(ptr noundef nonnull %0, ptr noundef nonnull %i.cl, i32 noundef %i.cs, i32 noundef %i.ca, i8 noundef signext %i.cc)
  %i.di = and i8 %i.dh, %i.cq
  br label %bb.an

MBCSOkForBaseFromUnicode.exit.thread:             ; preds = %bb.w, %bb.z, %MBCSOkForBaseFromUnicode.exit
  %i.dj = load i8, ptr %i.cb, align 2, !tbaa !59
  %i.dk = or i8 %i.dj, 16
  store i8 %i.dk, ptr %i.cb, align 2, !tbaa !59
  %i.dl = getelementptr inbounds nuw i8, ptr %.0106152, i64 11
  store i8 1, ptr %i.dl, align 1, !tbaa !61
  br label %bb.an

bb.ab:                                            ; preds = %bb.s
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.bq, align 2, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %.0106152, i64 4
  %i.dn = tail call fastcc noundef signext i8 @_ZL24MBCSSingleAddFromUnicodeP8MBCSDataPKhiia(ptr noundef nonnull %0, ptr noundef nonnull %i.dm, i32 noundef %i.ca, i8 noundef signext 1)
  %i.do = and i8 %i.dn, %.0105153
  br label %bb.an

bb.ad:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %.0106152, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0106152, i64 9
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !60
  %i.ds = sext i8 %i.dr to i32
  %i.dt = load i8, ptr %i.dp, align 4, !tbaa !17
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %MBCSOkForBaseFromUnicode.exit122.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = load i8, ptr %i.s, align 2, !tbaa !9
  %.not154 = icmp eq i8 %i.dv, 0
  br i1 %.not154, label %MBCSOkForBaseFromUnicode.exit122, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = load i16, ptr %i.bx, align 8, !tbaa !19
  %i.dx = zext i16 %i.dw to i32
  %.not.i120 = icmp sgt i32 %i.ca, %i.dx
  %.not = icmp eq i8 %i.cd, 0
  %or.cond132 = and i1 %.not, %.not.i120
  br i1 %or.cond132, label %bb.ag, label %MBCSOkForBaseFromUnicode.exit122.thread

MBCSOkForBaseFromUnicode.exit122:                 ; preds = %bb.ae
  %.not.old = icmp eq i8 %i.cd, 0
  br i1 %.not.old, label %bb.ag, label %MBCSOkForBaseFromUnicode.exit122.thread

bb.ag:                                            ; preds = %bb.af, %MBCSOkForBaseFromUnicode.exit122
  store i8 1, ptr %i.bq, align 2, !tbaa !53
  %i.dy = tail call fastcc noundef signext i8 @_ZL18MBCSAddFromUnicodeP8MBCSDataPKhiia(ptr noundef nonnull %0, ptr noundef nonnull %i.dp, i32 noundef %i.ds, i32 noundef %i.ca, i8 noundef signext 1)
  %i.dz = and i8 %i.dy, %.0105153
  br label %bb.an

MBCSOkForBaseFromUnicode.exit122.thread:          ; preds = %bb.af, %bb.ad, %MBCSOkForBaseFromUnicode.exit122
  store i8 17, ptr %i.cb, align 2, !tbaa !59
  %i.ea = getelementptr inbounds nuw i8, ptr %.0106152, i64 11
  store i8 1, ptr %i.ea, align 1, !tbaa !61
  br label %bb.an

bb.ah:                                            ; preds = %bb.s
  br i1 %i.by, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %.0106152, i64 9
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !60
  %i.ed = icmp eq i8 %i.ec, 1
  br i1 %i.ed, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
begin_hunk_1_@_ZL12MBCSAddTableP12NewConverterP8UCMTableP20UConverterStaticData:bb.a
  %i.us = zext i16 %i.ur to i64
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.us
  %wide.load302 = load <4 x i16>, ptr %i.ut, align 2, !tbaa !42
  %i.uu = zext i16 %i.uq to i64
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.uu
  store <4 x i16> %wide.load302, ptr %i.uv, align 2, !tbaa !42
  %index.next303 = add nuw i32 %index301, 4       ; 2 uses
  %i.uw = icmp eq i32 %index.next303, %n.vec299
  br i1 %i.uw, label %vec.epilog.middle.block304, label %vec.epilog.vector.body300, !llvm.loop !74

vec.epilog.middle.block304:                       ; preds = %vec.epilog.vector.body300
  %cmp.n305 = icmp eq i32 %i.tj, %n.vec299
  br i1 %cmp.n305, label %.loopexit.i34.i, label %.lr.ph.i33.i.preheader

.lr.ph.i33.i.preheader:                           ; preds = %vector.memcheck275, %vector.scevcheck274, %iter.check294, %vec.epilog.iter.check296, %vec.epilog.middle.block304
  %.176.i.i.ph = phi i16 [ %.082.i.i, %iter.check294 ], [ %.082.i.i, %vector.scevcheck274 ], [ %.082.i.i, %vector.memcheck275 ], [ %i.ty, %vec.epilog.iter.check296 ], [ %i.um, %vec.epilog.middle.block304 ] ; 3 uses
  %.15175.i.i.ph = phi i16 [ %i.th, %iter.check294 ], [ %i.th, %vector.scevcheck274 ], [ %i.th, %vector.memcheck275 ], [ %i.tz, %vec.epilog.iter.check296 ], [ %i.un, %vec.epilog.middle.block304 ] ; 4 uses
  %.15574.i.i.ph = phi i16 [ %i.tg, %iter.check294 ], [ %i.tg, %vector.scevcheck274 ], [ %i.tg, %vector.memcheck275 ], [ %i.ua, %vec.epilog.iter.check296 ], [ %i.uo, %vec.epilog.middle.block304 ] ; 3 uses
  %xtraiter332 = and i16 %.15175.i.i.ph, 1
  %lcmp.mod333.not = icmp eq i16 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph.i33.i.prol.loopexit, label %.lr.ph.i33.i.prol

.lr.ph.i33.i.prol:                                ; preds = %.lr.ph.i33.i.preheader
  %i.ux = add i16 %.15574.i.i.ph, 1               ; 2 uses
  %i.uy = zext i16 %.15574.i.i.ph to i64
  %i.uz = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.uy
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !42
  %i.vb = add i16 %.176.i.i.ph, 1                 ; 2 uses
  %i.vc = zext i16 %.176.i.i.ph to i64
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.vc
  store i16 %i.va, ptr %i.vd, align 2, !tbaa !42
  %i.ve = add nsw i16 %.15175.i.i.ph, -1
  br label %.lr.ph.i33.i.prol.loopexit

.lr.ph.i33.i.prol.loopexit:                       ; preds = %.lr.ph.i33.i.prol, %.lr.ph.i33.i.preheader
  %.lcssa314.unr = phi i16 [ poison, %.lr.ph.i33.i.preheader ], [ %i.ux, %.lr.ph.i33.i.prol ]
  %.lcssa.unr = phi i16 [ poison, %.lr.ph.i33.i.preheader ], [ %i.vb, %.lr.ph.i33.i.prol ]
  %.176.i.i.unr = phi i16 [ %.176.i.i.ph, %.lr.ph.i33.i.preheader ], [ %i.vb, %.lr.ph.i33.i.prol ]
  %.15175.i.i.unr = phi i16 [ %.15175.i.i.ph, %.lr.ph.i33.i.preheader ], [ %i.ve, %.lr.ph.i33.i.prol ]
  %.15574.i.i.unr = phi i16 [ %.15574.i.i.ph, %.lr.ph.i33.i.preheader ], [ %i.ux, %.lr.ph.i33.i.prol ]
  %i.vf = icmp eq i16 %.15175.i.i.ph, 1
  br i1 %i.vf, label %.loopexit.i34.i, label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i
  %.176.i.i = phi i16 [ %i.vr, %.lr.ph.i33.i ], [ %.176.i.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 3 uses
  %.15175.i.i = phi i16 [ %i.vu, %.lr.ph.i33.i ], [ %.15175.i.i.unr, %.lr.ph.i33.i.prol.loopexit ]
  %.15574.i.i = phi i16 [ %i.vn, %.lr.ph.i33.i ], [ %.15574.i.i.unr, %.lr.ph.i33.i.prol.loopexit ] ; 3 uses
  %i.vg = add i16 %.15574.i.i, 1
  %i.vh = zext i16 %.15574.i.i to i64
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.vh
  %i.vj = load i16, ptr %i.vi, align 2, !tbaa !42
  %i.vk = add i16 %.176.i.i, 1
  %i.vl = zext i16 %.176.i.i to i64
  %i.vm = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.vl
  store i16 %i.vj, ptr %i.vm, align 2, !tbaa !42
  %i.vn = add i16 %.15574.i.i, 2                  ; 2 uses
  %i.vo = zext i16 %i.vg to i64
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.vo
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !42
  %i.vr = add i16 %.176.i.i, 2                    ; 2 uses
  %i.vs = zext i16 %i.vk to i64
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.vs
  store i16 %i.vq, ptr %i.vt, align 2, !tbaa !42
  %i.vu = add nsw i16 %.15175.i.i, -2             ; 2 uses
  %.not66.i.i.1 = icmp eq i16 %i.vu, 0
  br i1 %.not66.i.i.1, label %.loopexit.i34.i, label %.lr.ph.i33.i, !llvm.loop !75

bb.co:                                            ; preds = %.critedge.i31.i
  %i.vv = icmp ult i16 %.082.i.i, %.05481.i.i
  br i1 %i.vv, label %vector.scevcheck260, label %bb.cp

vector.scevcheck260:                              ; preds = %bb.co
  store i16 %.082.i.i, ptr %i.te, align 2, !tbaa !42
  %i.vw = icmp ugt i16 %.082.i.i, -64
  %i.vx = icmp ugt i16 %.05481.i.i, -64
  %i.vy = or i1 %i.vw, %i.vx
  br i1 %i.vy, label %scalar.ph263.preheader, label %vector.memcheck261

scalar.ph263.preheader:                           ; preds = %vector.memcheck261, %vector.scevcheck260
  br label %scalar.ph263

vector.memcheck261:                               ; preds = %vector.scevcheck260
  %i.vz = zext i16 %.082.i.i to i64
  %i.wa = zext i16 %.05481.i.i to i64
  %i.wb = sub nsw i64 %i.vz, %i.wa
  %i.wc = shl nsw i64 %i.wb, 1
  %i.wd = add nsw i64 %i.wc, -1
  %diff.check262 = icmp ult i64 %i.wd, 31
  br i1 %diff.check262, label %scalar.ph263.preheader, label %vector.body265

vector.body265:                                   ; preds = %vector.memcheck261
  %i.we = add i16 %.05481.i.i, 64
  %i.wf = add i16 %.082.i.i, 64
  %i.wg = zext i16 %.05481.i.i to i64
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.wg ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %wide.load267 = load <8 x i16>, ptr %i.wh, align 2, !tbaa !42
  %wide.load268 = load <8 x i16>, ptr %i.wi, align 2, !tbaa !42
  %i.wj = zext i16 %.082.i.i to i64
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.wj ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store <8 x i16> %wide.load267, ptr %i.wk, align 2, !tbaa !42
  store <8 x i16> %wide.load268, ptr %i.wl, align 2, !tbaa !42
  %i.wm = add i16 %.082.i.i, 16
  %i.wn = add i16 %.05481.i.i, 16
  %i.wo = zext i16 %i.wn to i64
  %i.wp = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.wo ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %wide.load267.1 = load <8 x i16>, ptr %i.wp, align 2, !tbaa !42
  %wide.load268.1 = load <8 x i16>, ptr %i.wq, align 2, !tbaa !42
  %i.wr = zext i16 %i.wm to i64
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.wr ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  store <8 x i16> %wide.load267.1, ptr %i.ws, align 2, !tbaa !42
  store <8 x i16> %wide.load268.1, ptr %i.wt, align 2, !tbaa !42
  %i.wu = add i16 %.082.i.i, 32
  %i.wv = add i16 %.05481.i.i, 32
  %i.ww = zext i16 %i.wv to i64
  %i.wx = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.ww ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %wide.load267.2 = load <8 x i16>, ptr %i.wx, align 2, !tbaa !42
  %wide.load268.2 = load <8 x i16>, ptr %i.wy, align 2, !tbaa !42
  %i.wz = zext i16 %i.wu to i64
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.wz ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 16
  store <8 x i16> %wide.load267.2, ptr %i.xa, align 2, !tbaa !42
  store <8 x i16> %wide.load268.2, ptr %i.xb, align 2, !tbaa !42
  %i.xc = add i16 %.082.i.i, 48
  %i.xd = add i16 %.05481.i.i, 48
  %i.xe = zext i16 %i.xd to i64
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.xe ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %wide.load267.3 = load <8 x i16>, ptr %i.xf, align 2, !tbaa !42
  %wide.load268.3 = load <8 x i16>, ptr %i.xg, align 2, !tbaa !42
  %i.xh = zext i16 %i.xc to i64
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.xh ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  store <8 x i16> %wide.load267.3, ptr %i.xi, align 2, !tbaa !42
  store <8 x i16> %wide.load268.3, ptr %i.xj, align 2, !tbaa !42
  br label %.loopexit.i34.i

scalar.ph263:                                     ; preds = %scalar.ph263, %scalar.ph263.preheader
  %.280.i.i = phi i16 [ %.082.i.i, %scalar.ph263.preheader ], [ %i.xv, %scalar.ph263 ] ; 3 uses
  %.25279.i.i = phi i16 [ 64, %scalar.ph263.preheader ], [ %i.xy, %scalar.ph263 ]
  %.25678.i.i = phi i16 [ %.05481.i.i, %scalar.ph263.preheader ], [ %i.xr, %scalar.ph263 ] ; 3 uses
  %i.xk = add i16 %.25678.i.i, 1
  %i.xl = zext i16 %.25678.i.i to i64
  %i.xm = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.xl
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !42
  %i.xo = add i16 %.280.i.i, 1
  %i.xp = zext i16 %.280.i.i to i64
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.xp
  store i16 %i.xn, ptr %i.xq, align 2, !tbaa !42
  %i.xr = add i16 %.25678.i.i, 2                  ; 2 uses
  %i.xs = zext i16 %i.xk to i64
  %i.xt = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.xs
  %i.xu = load i16, ptr %i.xt, align 2, !tbaa !42
  %i.xv = add i16 %.280.i.i, 2                    ; 2 uses
  %i.xw = zext i16 %i.xo to i64
  %i.xx = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.xw
  store i16 %i.xu, ptr %i.xx, align 2, !tbaa !42
  %i.xy = add nsw i16 %.25279.i.i, -2             ; 2 uses
  %.not65.i.i.1 = icmp eq i16 %i.xy, 0
  br i1 %.not65.i.i.1, label %.loopexit.i34.i, label %scalar.ph263, !llvm.loop !76

bb.cp:                                            ; preds = %bb.co
  store i16 %.05481.i.i, ptr %i.te, align 2, !tbaa !42
  %i.xz = add i16 %.082.i.i, 64                   ; 2 uses
  br label %.loopexit.i34.i

.loopexit.i34.i:                                  ; preds = %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %scalar.ph263, %vector.body265, %middle.block288, %vec.epilog.middle.block304, %bb.cp, %.critedge.thread.i.i, %.critedge.thread.thread.i36.i
  %.357.i.i = phi i16 [ %i.ta, %.critedge.thread.thread.i36.i ], [ %i.xz, %bb.cp ], [ %i.tg, %.critedge.thread.i.i ], [ %i.we, %vector.body265 ], [ %i.xr, %scalar.ph263 ], [ %i.uo, %vec.epilog.middle.block304 ], [ %i.ua, %middle.block288 ], [ %.lcssa314.unr, %.lr.ph.i33.i.prol.loopexit ], [ %i.vn, %.lr.ph.i33.i ] ; 2 uses
  %.3.i35.i = phi i16 [ %.082.i.i, %.critedge.thread.thread.i36.i ], [ %i.xz, %bb.cp ], [ %.082.i.i, %.critedge.thread.i.i ], [ %i.wf, %vector.body265 ], [ %i.xv, %scalar.ph263 ], [ %i.um, %vec.epilog.middle.block304 ], [ %i.ty, %middle.block288 ], [ %.lcssa.unr, %.lr.ph.i33.i.prol.loopexit ], [ %i.vr, %.lr.ph.i33.i ] ; 2 uses
  %i.ya = zext i16 %.357.i.i to i32               ; 2 uses
  %i.yb = icmp ugt i32 %i.rt, %i.ya
  br i1 %i.yb, label %.lr.ph83.i.i, label %._crit_edge.i25.i, !llvm.loop !77

._crit_edge.i25.i:                                ; preds = %.loopexit.i34.i, %_ZL19singleCompactStage3P8MBCSData.exit.i, %_ZL19singleCompactStage3P8MBCSData.exit.thread.i
  %.0.lcssa.i26.i = phi i16 [ 64, %_ZL19singleCompactStage3P8MBCSData.exit.i ], [ 64, %_ZL19singleCompactStage3P8MBCSData.exit.thread.i ], [ %.3.i35.i, %.loopexit.i34.i ] ; 2 uses
  %i.yc = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not.i27.i = icmp ne i8 %i.yc, 0
  %.pre.i28.i = zext i16 %.0.lcssa.i26.i to i32   ; 3 uses
  %i.yd = icmp samesign ugt i32 %i.rt, %.pre.i28.i
  %or.cond.i29.i = select i1 %.not.i27.i, i1 %i.yd, i1 false
  br i1 %or.cond.i29.i, label %bb.cq, label %._crit_edge._crit_edge.i30.i

bb.cq:                                            ; preds = %._crit_edge.i25.i
  %i.ye = zext nneg i32 %i.rt to i64
  %i.yf = zext i16 %.0.lcssa.i26.i to i64
  %i.yg = sub nuw nsw i32 %i.rt, %.pre.i28.i
  %i.yh = shl nuw nsw i32 %i.yg, 1
  %i.yi = zext nneg i32 %i.yh to i64
  %i.yj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i64 noundef %i.ye, i64 noundef %i.yf, i64 noundef %i.yi) ; 0 uses
  br label %._crit_edge._crit_edge.i30.i

._crit_edge._crit_edge.i30.i:                     ; preds = %bb.cq, %._crit_edge.i25.i
  store i32 %.pre.i28.i, ptr %i.bi, align 8, !tbaa !50
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %._crit_edge._crit_edge.i30.i
  %indvars.iv96.i.i = phi i64 [ 0, %._crit_edge._crit_edge.i30.i ], [ %indvars.iv.next97.i.i.1, %bb.cr ] ; 3 uses
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv96.i.i ; 2 uses
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !42
  %i.ym = lshr i16 %i.yl, 6
  %i.yn = zext nneg i16 %i.ym to i64
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.yn
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !42
  store i16 %i.yp, ptr %i.yk, align 2, !tbaa !42
  %i.yq = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv96.i.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 2 ; 2 uses
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !42
  %i.yt = lshr i16 %i.ys, 6
  %i.yu = zext nneg i16 %i.yt to i64
  %i.yv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.yu
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !42
  store i16 %i.yw, ptr %i.yr, align 2, !tbaa !42
  %indvars.iv.next97.i.i.1 = add nuw nsw i64 %indvars.iv96.i.i, 2 ; 2 uses
  %exitcond99.not.i.i.1 = icmp eq i64 %indvars.iv.next97.i.i.1, 1088
  br i1 %exitcond99.not.i.i.1, label %_ZL19singleCompactStage2P8MBCSData.exit.i, label %bb.cr, !llvm.loop !78

_ZL19singleCompactStage2P8MBCSData.exit.i:        ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.dd

bb.cs:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i16 0, ptr %i.a, align 16, !tbaa !42
  %i.yx = load i32, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  %i.yy = icmp ugt i32 %i.yx, 64
  br i1 %i.yy, label %.lr.ph83.i43.i, label %._crit_edge.i37.i

.lr.ph83.i43.i:                                   ; preds = %bb.cs
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 196664 ; 31 uses
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit.i59.i, %.lr.ph83.i43.i
  %i.za = phi i32 [ 64, %.lr.ph83.i43.i ], [ %i.afn, %.loopexit.i59.i ] ; 3 uses
  %.082.i44.i = phi i16 [ 64, %.lr.ph83.i43.i ], [ %.3.i61.i, %.loopexit.i59.i ] ; 27 uses
  %.05481.i45.i = phi i16 [ 64, %.lr.ph83.i43.i ], [ %.357.i60.i, %.loopexit.i59.i ] ; 16 uses
  %i.zb = add i16 %.082.i44.i, -1
  %i.zc = zext nneg i32 %i.za to i64
  %i.zd = zext i16 %i.zb to i64                   ; 2 uses
  %invariant.gep.i46.i = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.zc ; 2 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cy, %bb.ct
  %indvars.iv.i47.i = phi i64 [ 0, %bb.ct ], [ %indvars.iv.next.i66.i.1, %bb.cy ] ; 6 uses
  %gep.i48.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i46.i, i64 %indvars.iv.i47.i
  %i.ze = load i32, ptr %gep.i48.i, align 4, !tbaa !51
  %i.zf = icmp eq i32 %i.ze, 0
  br i1 %i.zf, label %bb.cv, label %.critedge.i49.i

bb.cv:                                            ; preds = %bb.cu
  %i.zg = sub nsw i64 %i.zd, %indvars.iv.i47.i
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.yz, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !51
  %i.zj = icmp eq i32 %i.zi, 0
  br i1 %i.zj, label %bb.cw, label %.critedge.i49.i

bb.cw:                                            ; preds = %bb.cv
  %indvars.iv.next.i66.i = or disjoint i64 %indvars.iv.i47.i, 1 ; 4 uses
  %gep.i48.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i46.i, i64 %indvars.iv.next.i66.i
  %i.zk = load i32, ptr %gep.i48.i.1, align 4, !tbaa !51
  %i.zl = icmp eq i32 %i.zk, 0
  br i1 %i.zl, label %bb.cx, label %.critedge.i49.i

bb.cx:                                            ; preds = %bb.cw
  %i.zm = sub nsw i64 %i.zd, %indvars.iv.next.i66.i
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.yz, i64 %i.zm
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !51
  %i.zp = icmp eq i32 %i.zo, 0
  br i1 %i.zp, label %bb.cy, label %.critedge.i49.i

bb.cy:                                            ; preds = %bb.cx
  %indvars.iv.next.i66.i.1 = add nuw nsw i64 %indvars.iv.i47.i, 2 ; 2 uses
  %exitcond.not.i67.i.1 = icmp eq i64 %indvars.iv.next.i66.i.1, 64
  br i1 %exitcond.not.i67.i.1, label %.critedge.thread.thread.i68.i, label %bb.cu, !llvm.loop !79

.critedge.thread.thread.i68.i:                    ; preds = %bb.cy
  %i.zq = add i16 %.082.i44.i, -64
  %i.zr = lshr i32 %i.za, 6
  %i.zs = zext nneg i32 %i.zr to i64
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.zs
  store i16 %i.zq, ptr %i.zt, align 2, !tbaa !42
  %i.zu = add i16 %.05481.i45.i, 64
  br label %.loopexit.i59.i

.critedge.i49.i:                                  ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %indvars.iv.i47.i.lcssa = phi i64 [ %indvars.iv.i47.i, %bb.cv ], [ %indvars.iv.i47.i, %bb.cu ], [ %indvars.iv.next.i66.i, %bb.cw ], [ %indvars.iv.next.i66.i, %bb.cx ] ; 4 uses
  %indvars33.le.i = trunc i64 %indvars.iv.i47.i.lcssa to i32 ; 2 uses
  %i.zv = trunc i64 %indvars.iv.i47.i.lcssa to i16 ; 3 uses
  %.not64.i50.i = icmp eq i32 %indvars33.le.i, 0
  %i.zw = lshr i32 %i.za, 6
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.zx ; 3 uses
  br i1 %.not64.i50.i, label %bb.cz, label %.critedge.thread.i51.i

.critedge.thread.i51.i:                           ; preds = %.critedge.i49.i
  %i.zz = sub i16 %.082.i44.i, %i.zv
  store i16 %i.zz, ptr %i.zy, align 2, !tbaa !42
  %i.aaa = add i16 %.05481.i45.i, %i.zv           ; 8 uses
  %.not6673.i52.i = icmp eq i32 %indvars33.le.i, 64
  br i1 %.not6673.i52.i, label %.loopexit.i59.i, label %.lr.ph.preheader.i53.i

.lr.ph.preheader.i53.i:                           ; preds = %.critedge.thread.i51.i
  %i.aab = sub nsw i16 64, %i.zv                  ; 4 uses
  %i.aac = trunc i64 %indvars.iv.i47.i.lcssa to i32
  %i.aad = sub i32 64, %i.aac                     ; 3 uses
  %min.iters.check245 = icmp ult i32 %i.aad, 16
  br i1 %min.iters.check245, label %.lr.ph.i54.i.preheader, label %vector.scevcheck241

vector.scevcheck241:                              ; preds = %.lr.ph.preheader.i53.i
  %i.aae = trunc i64 %indvars.iv.i47.i.lcssa to i16
  %i.aaf = sub i16 63, %i.aae                     ; 2 uses
  %i.aag = xor i16 %.082.i44.i, -1
  %i.aah = icmp ugt i16 %i.aaf, %i.aag
  %i.aai = xor i16 %i.aaa, -1
  %i.aaj = icmp ugt i16 %i.aaf, %i.aai
  %i.aak = or i1 %i.aah, %i.aaj
  br i1 %i.aak, label %.lr.ph.i54.i.preheader, label %vector.memcheck242

vector.memcheck242:                               ; preds = %vector.scevcheck241
  %i.aal = zext i16 %.082.i44.i to i64
  %i.aam = zext i16 %i.aaa to i64
  %i.aan = sub nsw i64 %i.aal, %i.aam
  %i.aao = shl nsw i64 %i.aan, 2
  %i.aap = add nsw i64 %i.aao, -1
  %diff.check243 = icmp ult i64 %i.aap, 31
  br i1 %diff.check243, label %.lr.ph.i54.i.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck242
  %n.vec247 = and i32 %i.aad, -8                  ; 3 uses
  %i.aaq = trunc i32 %n.vec247 to i16             ; 3 uses
  %i.aar = add i16 %.082.i44.i, %i.aaq            ; 2 uses
  %i.aas = sub i16 %i.aab, %i.aaq
  %i.aat = add i16 %i.aaa, %i.aaq                 ; 2 uses
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i32 [ 0, %vector.ph246 ], [ %index.next252, %vector.body248 ] ; 2 uses
  %i.aau = trunc i32 %index249 to i16             ; 2 uses
  %i.aav = add i16 %.082.i44.i, %i.aau
  %i.aaw = add i16 %i.aaa, %i.aau
  %i.aax = zext i16 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aax ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %wide.load250 = load <4 x i32>, ptr %i.aay, align 4, !tbaa !51
  %wide.load251 = load <4 x i32>, ptr %i.aaz, align 4, !tbaa !51
  %i.aba = zext i16 %i.aav to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aba ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  store <4 x i32> %wide.load250, ptr %i.abb, align 4, !tbaa !51
  store <4 x i32> %wide.load251, ptr %i.abc, align 4, !tbaa !51
  %index.next252 = add nuw i32 %index249, 8       ; 2 uses
  %i.abd = icmp eq i32 %index.next252, %n.vec247
  br i1 %i.abd, label %middle.block253, label %vector.body248, !llvm.loop !80

middle.block253:                                  ; preds = %vector.body248
  %cmp.n254 = icmp eq i32 %i.aad, %n.vec247
  br i1 %cmp.n254, label %.loopexit.i59.i, label %.lr.ph.i54.i.preheader

.lr.ph.i54.i.preheader:                           ; preds = %vector.memcheck242, %vector.scevcheck241, %.lr.ph.preheader.i53.i, %middle.block253
  %.176.i55.i.ph = phi i16 [ %.082.i44.i, %vector.memcheck242 ], [ %.082.i44.i, %vector.scevcheck241 ], [ %.082.i44.i, %.lr.ph.preheader.i53.i ], [ %i.aar, %middle.block253 ] ; 3 uses
  %.15175.i56.i.ph = phi i16 [ %i.aab, %vector.memcheck242 ], [ %i.aab, %vector.scevcheck241 ], [ %i.aab, %.lr.ph.preheader.i53.i ], [ %i.aas, %middle.block253 ] ; 4 uses
  %.15574.i57.i.ph = phi i16 [ %i.aaa, %vector.memcheck242 ], [ %i.aaa, %vector.scevcheck241 ], [ %i.aaa, %.lr.ph.preheader.i53.i ], [ %i.aat, %middle.block253 ] ; 3 uses
  %xtraiter = and i16 %.15175.i56.i.ph, 1
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i54.i.prol.loopexit, label %.lr.ph.i54.i.prol

.lr.ph.i54.i.prol:                                ; preds = %.lr.ph.i54.i.preheader
  %i.abe = add i16 %.15574.i57.i.ph, 1            ; 2 uses
  %i.abf = zext i16 %.15574.i57.i.ph to i64
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.abf
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !51
  %i.abi = add i16 %.176.i55.i.ph, 1              ; 2 uses
  %i.abj = zext i16 %.176.i55.i.ph to i64
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.abj
  store i32 %i.abh, ptr %i.abk, align 4, !tbaa !51
  %i.abl = add nsw i16 %.15175.i56.i.ph, -1
  br label %.lr.ph.i54.i.prol.loopexit

.lr.ph.i54.i.prol.loopexit:                       ; preds = %.lr.ph.i54.i.prol, %.lr.ph.i54.i.preheader
  %.lcssa323.unr = phi i16 [ poison, %.lr.ph.i54.i.preheader ], [ %i.abe, %.lr.ph.i54.i.prol ]
  %.lcssa322.unr = phi i16 [ poison, %.lr.ph.i54.i.preheader ], [ %i.abi, %.lr.ph.i54.i.prol ]
  %.176.i55.i.unr = phi i16 [ %.176.i55.i.ph, %.lr.ph.i54.i.preheader ], [ %i.abi, %.lr.ph.i54.i.prol ]
  %.15175.i56.i.unr = phi i16 [ %.15175.i56.i.ph, %.lr.ph.i54.i.preheader ], [ %i.abl, %.lr.ph.i54.i.prol ]
  %.15574.i57.i.unr = phi i16 [ %.15574.i57.i.ph, %.lr.ph.i54.i.preheader ], [ %i.abe, %.lr.ph.i54.i.prol ]
  %i.abm = icmp eq i16 %.15175.i56.i.ph, 1
  br i1 %i.abm, label %.loopexit.i59.i, label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %.lr.ph.i54.i.prol.loopexit, %.lr.ph.i54.i
  %.176.i55.i = phi i16 [ %i.aby, %.lr.ph.i54.i ], [ %.176.i55.i.unr, %.lr.ph.i54.i.prol.loopexit ] ; 3 uses
  %.15175.i56.i = phi i16 [ %i.acb, %.lr.ph.i54.i ], [ %.15175.i56.i.unr, %.lr.ph.i54.i.prol.loopexit ]
  %.15574.i57.i = phi i16 [ %i.abu, %.lr.ph.i54.i ], [ %.15574.i57.i.unr, %.lr.ph.i54.i.prol.loopexit ] ; 3 uses
  %i.abn = add i16 %.15574.i57.i, 1
  %i.abo = zext i16 %.15574.i57.i to i64
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.abo
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !51
  %i.abr = add i16 %.176.i55.i, 1
  %i.abs = zext i16 %.176.i55.i to i64
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.abs
  store i32 %i.abq, ptr %i.abt, align 4, !tbaa !51
  %i.abu = add i16 %.15574.i57.i, 2               ; 2 uses
  %i.abv = zext i16 %i.abn to i64
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.abv
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !51
  %i.aby = add i16 %.176.i55.i, 2                 ; 2 uses
  %i.abz = zext i16 %i.abr to i64
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.abz
  store i32 %i.abx, ptr %i.aca, align 4, !tbaa !51
  %i.acb = add nsw i16 %.15175.i56.i, -2          ; 2 uses
  %.not66.i58.i.1 = icmp eq i16 %i.acb, 0
  br i1 %.not66.i58.i.1, label %.loopexit.i59.i, label %.lr.ph.i54.i, !llvm.loop !81

bb.cz:                                            ; preds = %.critedge.i49.i
  %i.acc = icmp ult i16 %.082.i44.i, %.05481.i45.i
  br i1 %i.acc, label %vector.scevcheck, label %bb.da

vector.scevcheck:                                 ; preds = %bb.cz
  store i16 %.082.i44.i, ptr %i.zy, align 2, !tbaa !42
  %i.acd = icmp ugt i16 %.082.i44.i, -64
  %i.ace = icmp ugt i16 %.05481.i45.i, -64
  %i.acf = or i1 %i.acd, %i.ace
  br i1 %i.acf, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck
  br label %scalar.ph

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.acg = zext i16 %.082.i44.i to i64
  %i.ach = zext i16 %.05481.i45.i to i64
  %i.aci = sub nsw i64 %i.acg, %i.ach
  %i.acj = shl nsw i64 %i.aci, 2
  %i.ack = add nsw i64 %i.acj, -1
  %diff.check = icmp ult i64 %i.ack, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body233

vector.body233:                                   ; preds = %vector.memcheck
  %i.acl = add i16 %.05481.i45.i, 64
  %i.acm = add i16 %.082.i44.i, 64
  %i.acn = zext i16 %.05481.i45.i to i64
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.acn ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %wide.load = load <4 x i32>, ptr %i.aco, align 4, !tbaa !51
  %wide.load235 = load <4 x i32>, ptr %i.acp, align 4, !tbaa !51
  %i.acq = zext i16 %.082.i44.i to i64
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.acq ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  store <4 x i32> %wide.load, ptr %i.acr, align 4, !tbaa !51
  store <4 x i32> %wide.load235, ptr %i.acs, align 4, !tbaa !51
  %i.act = add i16 %.082.i44.i, 8
  %i.acu = add i16 %.05481.i45.i, 8
  %i.acv = zext i16 %i.acu to i64
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.acv ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.acw, align 4, !tbaa !51
  %wide.load235.1 = load <4 x i32>, ptr %i.acx, align 4, !tbaa !51
  %i.acy = zext i16 %i.act to i64
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.acy ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  store <4 x i32> %wide.load.1, ptr %i.acz, align 4, !tbaa !51
  store <4 x i32> %wide.load235.1, ptr %i.ada, align 4, !tbaa !51
  %i.adb = add i16 %.082.i44.i, 16
  %i.adc = add i16 %.05481.i45.i, 16
  %i.add = zext i16 %i.adc to i64
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.add ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.ade, align 4, !tbaa !51
  %wide.load235.2 = load <4 x i32>, ptr %i.adf, align 4, !tbaa !51
  %i.adg = zext i16 %i.adb to i64
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.adg ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  store <4 x i32> %wide.load.2, ptr %i.adh, align 4, !tbaa !51
  store <4 x i32> %wide.load235.2, ptr %i.adi, align 4, !tbaa !51
  %i.adj = add i16 %.082.i44.i, 24
  %i.adk = add i16 %.05481.i45.i, 24
  %i.adl = zext i16 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.adl ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %wide.load.3 = load <4 x i32>, ptr %i.adm, align 4, !tbaa !51
  %wide.load235.3 = load <4 x i32>, ptr %i.adn, align 4, !tbaa !51
  %i.ado = zext i16 %i.adj to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.ado ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  store <4 x i32> %wide.load.3, ptr %i.adp, align 4, !tbaa !51
  store <4 x i32> %wide.load235.3, ptr %i.adq, align 4, !tbaa !51
  %i.adr = add i16 %.082.i44.i, 32
  %i.ads = add i16 %.05481.i45.i, 32
  %i.adt = zext i16 %i.ads to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.adt ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  %wide.load.4 = load <4 x i32>, ptr %i.adu, align 4, !tbaa !51
  %wide.load235.4 = load <4 x i32>, ptr %i.adv, align 4, !tbaa !51
  %i.adw = zext i16 %i.adr to i64
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.adw ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  store <4 x i32> %wide.load.4, ptr %i.adx, align 4, !tbaa !51
  store <4 x i32> %wide.load235.4, ptr %i.ady, align 4, !tbaa !51
  %i.adz = add i16 %.082.i44.i, 40
  %i.aea = add i16 %.05481.i45.i, 40
  %i.aeb = zext i16 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aeb ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  %wide.load.5 = load <4 x i32>, ptr %i.aec, align 4, !tbaa !51
  %wide.load235.5 = load <4 x i32>, ptr %i.aed, align 4, !tbaa !51
  %i.aee = zext i16 %i.adz to i64
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  store <4 x i32> %wide.load.5, ptr %i.aef, align 4, !tbaa !51
  store <4 x i32> %wide.load235.5, ptr %i.aeg, align 4, !tbaa !51
  %i.aeh = add i16 %.082.i44.i, 48
  %i.aei = add i16 %.05481.i45.i, 48
  %i.aej = zext i16 %i.aei to i64
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aej ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  %wide.load.6 = load <4 x i32>, ptr %i.aek, align 4, !tbaa !51
  %wide.load235.6 = load <4 x i32>, ptr %i.ael, align 4, !tbaa !51
  %i.aem = zext i16 %i.aeh to i64
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aem ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  store <4 x i32> %wide.load.6, ptr %i.aen, align 4, !tbaa !51
  store <4 x i32> %wide.load235.6, ptr %i.aeo, align 4, !tbaa !51
  %i.aep = add i16 %.082.i44.i, 56
  %i.aeq = add i16 %.05481.i45.i, 56
  %i.aer = zext i16 %i.aeq to i64
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aer ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 16
  %wide.load.7 = load <4 x i32>, ptr %i.aes, align 4, !tbaa !51
  %wide.load235.7 = load <4 x i32>, ptr %i.aet, align 4, !tbaa !51
  %i.aeu = zext i16 %i.aep to i64
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aeu ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  store <4 x i32> %wide.load.7, ptr %i.aev, align 4, !tbaa !51
  store <4 x i32> %wide.load235.7, ptr %i.aew, align 4, !tbaa !51
  br label %.loopexit.i59.i

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %.280.i62.i = phi i16 [ %.082.i44.i, %scalar.ph.preheader ], [ %i.afi, %scalar.ph ] ; 3 uses
  %.25279.i63.i = phi i16 [ 64, %scalar.ph.preheader ], [ %i.afl, %scalar.ph ]
  %.25678.i64.i = phi i16 [ %.05481.i45.i, %scalar.ph.preheader ], [ %i.afe, %scalar.ph ] ; 3 uses
  %i.aex = add i16 %.25678.i64.i, 1
  %i.aey = zext i16 %.25678.i64.i to i64
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aey
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !51
  %i.afb = add i16 %.280.i62.i, 1
  %i.afc = zext i16 %.280.i62.i to i64
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.afc
  store i32 %i.afa, ptr %i.afd, align 4, !tbaa !51
  %i.afe = add i16 %.25678.i64.i, 2               ; 2 uses
  %i.aff = zext i16 %i.aex to i64
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.aff
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !51
  %i.afi = add i16 %.280.i62.i, 2                 ; 2 uses
  %i.afj = zext i16 %i.afb to i64
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.afj
  store i32 %i.afh, ptr %i.afk, align 4, !tbaa !51
  %i.afl = add nsw i16 %.25279.i63.i, -2          ; 2 uses
  %.not65.i65.i.1 = icmp eq i16 %i.afl, 0
  br i1 %.not65.i65.i.1, label %.loopexit.i59.i, label %scalar.ph, !llvm.loop !82

bb.da:                                            ; preds = %bb.cz
  store i16 %.05481.i45.i, ptr %i.zy, align 2, !tbaa !42
  %i.afm = add i16 %.082.i44.i, 64                ; 2 uses
  br label %.loopexit.i59.i

.loopexit.i59.i:                                  ; preds = %.lr.ph.i54.i.prol.loopexit, %.lr.ph.i54.i, %scalar.ph, %vector.body233, %middle.block253, %bb.da, %.critedge.thread.i51.i, %.critedge.thread.thread.i68.i
  %.357.i60.i = phi i16 [ %i.zu, %.critedge.thread.thread.i68.i ], [ %i.afm, %bb.da ], [ %i.aaa, %.critedge.thread.i51.i ], [ %i.acl, %vector.body233 ], [ %i.afe, %scalar.ph ], [ %i.aat, %middle.block253 ], [ %.lcssa323.unr, %.lr.ph.i54.i.prol.loopexit ], [ %i.abu, %.lr.ph.i54.i ] ; 2 uses
  %.3.i61.i = phi i16 [ %.082.i44.i, %.critedge.thread.thread.i68.i ], [ %i.afm, %bb.da ], [ %.082.i44.i, %.critedge.thread.i51.i ], [ %i.acm, %vector.body233 ], [ %i.afi, %scalar.ph ], [ %i.aar, %middle.block253 ], [ %.lcssa322.unr, %.lr.ph.i54.i.prol.loopexit ], [ %i.aby, %.lr.ph.i54.i ] ; 2 uses
  %i.afn = zext i16 %.357.i60.i to i32            ; 2 uses
  %i.afo = load i32, ptr %i.bi, align 8, !tbaa !50 ; 2 uses
  %i.afp = icmp ugt i32 %i.afo, %i.afn
  br i1 %i.afp, label %bb.ct, label %._crit_edge.i37.i, !llvm.loop !83

._crit_edge.i37.i:                                ; preds = %.loopexit.i59.i, %bb.cs
  %.0.lcssa.i38.i = phi i16 [ 64, %bb.cs ], [ %.3.i61.i, %.loopexit.i59.i ] ; 2 uses
  %.lcssa.i.i = phi i32 [ %i.yx, %bb.cs ], [ %i.afo, %.loopexit.i59.i ] ; 3 uses
  %i.afq = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not.i39.i = icmp ne i8 %i.afq, 0
  %.pre.i40.i = zext i16 %.0.lcssa.i38.i to i32   ; 3 uses
  %i.afr = icmp samesign ugt i32 %.lcssa.i.i, %.pre.i40.i
  %or.cond.i41.i = select i1 %.not.i39.i, i1 %i.afr, i1 false
  br i1 %or.cond.i41.i, label %bb.db, label %._crit_edge._crit_edge.i42.i

bb.db:                                            ; preds = %._crit_edge.i37.i
  %i.afs = zext nneg i32 %.lcssa.i.i to i64
  %i.aft = zext i16 %.0.lcssa.i38.i to i64
  %i.afu = sub nuw nsw i32 %.lcssa.i.i, %.pre.i40.i
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = shl nuw nsw i64 %i.afv, 2
  %i.afx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i64 noundef %i.afs, i64 noundef %i.aft, i64 noundef %i.afw) ; 0 uses
  br label %._crit_edge._crit_edge.i42.i

._crit_edge._crit_edge.i42.i:                     ; preds = %bb.db, %._crit_edge.i37.i
  store i32 %.pre.i40.i, ptr %i.bi, align 8, !tbaa !50
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %._crit_edge._crit_edge.i42.i
  %indvars.iv98.i.i = phi i64 [ 0, %._crit_edge._crit_edge.i42.i ], [ %indvars.iv.next99.i.i.1, %bb.dc ] ; 3 uses
  %i.afy = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv98.i.i ; 2 uses
  %i.afz = load i16, ptr %i.afy, align 2, !tbaa !42
  %i.aga = lshr i16 %i.afz, 6
  %i.agb = zext nneg i16 %i.aga to i64
  %i.agc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.agb
  %i.agd = load i16, ptr %i.agc, align 2, !tbaa !42
  store i16 %i.agd, ptr %i.afy, align 2, !tbaa !42
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv98.i.i
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 2 ; 2 uses
  %i.agg = load i16, ptr %i.agf, align 2, !tbaa !42
  %i.agh = lshr i16 %i.agg, 6
  %i.agi = zext nneg i16 %i.agh to i64
  %i.agj = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.agi
  %i.agk = load i16, ptr %i.agj, align 2, !tbaa !42
  store i16 %i.agk, ptr %i.agf, align 2, !tbaa !42
  %indvars.iv.next99.i.i.1 = add nuw nsw i64 %indvars.iv98.i.i, 2 ; 2 uses
  %exitcond101.not.i.i.1 = icmp eq i64 %indvars.iv.next99.i.i.1, 1088
  br i1 %exitcond101.not.i.i.1, label %_ZL13compactStage2P8MBCSData.exit.i, label %bb.dc, !llvm.loop !84

_ZL13compactStage2P8MBCSData.exit.i:              ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.dd

bb.dd:                                            ; preds = %_ZL13compactStage2P8MBCSData.exit.i, %_ZL19singleCompactStage2P8MBCSData.exit.i, %.loopexit.i123
  %i.agl = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not21.i = icmp eq i8 %i.agl, 0
  br i1 %.not21.i, label %_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.agm = icmp eq i32 %i.ew, 1
  %.str.29..str.30.i = select i1 %i.agm, ptr @.str.29, ptr @.str.30
  %i.agn = load i32, ptr %i.bi, align 8, !tbaa !50
  %i.ago = zext i32 %i.agn to i64                 ; 2 uses
  %i.agp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %.str.29..str.30.i, i64 noundef %i.ago, i64 noundef %i.ago) ; 0 uses
  %i.agq = load i32, ptr %i.bp, align 4, !tbaa !52
  %i.agr = zext i32 %i.agq to i64
  %i.ags = sext i32 %i.hl to i64
  %i.agt = udiv i64 %i.agr, %i.ags                ; 2 uses
  %i.agu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.hl, i64 noundef %i.agt, i64 noundef %i.agt) ; 0 uses
  br label %_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit

_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit: ; preds = %bb.m, %bb.l, %bb.de, %bb.dd, %bb.am, %bb.b
  %.0 = phi i8 [ 0, %bb.b ], [ 0, %bb.am ], [ %.0105.lcssa, %bb.de ], [ %.0105.lcssa, %bb.dd ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9MBCSWriteP12NewConverterPK20UConverterStaticDataP14UNewDataMemoryi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #2 {
bb.a:
  %4 = alloca %struct._MBCSHeader, align 4        ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 454464
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456523
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18
  %.not = icmp eq i8 %i.d, 0                      ; 4 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456520
  %i.f = load i16, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = zext i16 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 3 uses
  %i.i = lshr i32 %i.h, 10                        ; 2 uses
  %i.j = and i32 %i.h, 1023
  %.not108 = icmp eq i32 %i.j, 0
  br i1 %.not108, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !42   ; 2 uses
  %.not109 = icmp eq i16 %i.n, 0
  br i1 %.not109, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %i.h, 4
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.critedge

bb.e:                                             ; preds = %bb.c, %bb.b
  %.old1.not = icmp eq i32 %i.i, 0
  br i1 %.old1.not, label %.critedge, label %.preheader122

.preheader122:                                    ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.t = zext i16 %i.f to i64
  %i.u = add nuw nsw i64 %i.t, 1
  %i.v = lshr i64 %i.u, 10
  br label %bb.f

bb.f:                                             ; preds = %.preheader122, %bb.f
  %indvars.iv = phi i64 [ %i.v, %.preheader122 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.x = load i16, ptr %i.w, align 2, !tbaa !42   ; 2 uses
  %i.y = icmp eq i16 %i.x, 0
  %i.z = icmp samesign ugt i64 %indvars.iv, 1
  %or.cond = and i1 %i.z, %i.y
  br i1 %or.cond, label %bb.f, label %.critedge.loopexit, !llvm.loop !85

.critedge.loopexit:                               ; preds = %bb.f
  %i.aa = zext i16 %i.x to i32
  %i.ab = add nuw nsw i32 %i.aa, 64
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit, %bb.d
  %.0103 = phi i32 [ %i.r, %bb.d ], [ 64, %bb.e ], [ %i.ab, %.critedge.loopexit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 64, ptr %i.ac, align 4, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.b, ptr %i.ad, align 4, !tbaa !88
  %i.ae = sub i32 %i.b, %.0103                    ; 2 uses
  %i.af = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not110 = icmp eq i8 %i.af, 0
  %.pre134 = zext nneg i32 %.0103 to i64          ; 4 uses
  br i1 %.not110, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ag = zext i32 %i.b to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !52
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %.pre134, i64 noundef %i.ag, i64 noundef %i.aj) ; 0 uses
  %i.al = shl nuw nsw i64 %.pre134, 2
  %i.am = load i32, ptr %i.ah, align 4, !tbaa !52
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.al, %i.an
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i64 noundef %i.ao) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.g, %bb.a
  %i.aq = phi i32 [ 0, %bb.a ], [ 64, %bb.g ], [ 64, %.critedge ]
  %.1104 = phi i64 [ 0, %bb.a ], [ %.pre134, %bb.g ], [ %.pre134, %.critedge ] ; 2 uses
  %.0101 = phi i32 [ %i.b, %bb.a ], [ %i.ae, %bb.g ], [ %i.ae, %.critedge ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 79
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !31
  %i.at = and i8 %i.as, 1
  %.not111 = icmp eq i8 %i.at, 0
  %. = select i1 %.not111, i32 64, i32 1088       ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 132120
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !36
  %i.ay = icmp eq i32 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 65592 ; 2 uses
  %wide.trip.count132 = zext nneg i32 %. to i64   ; 2 uses
  br i1 %i.ay, label %vector.ph141, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.ba = lshr exact i32 %., 1
  %i.bb = trunc nuw nsw i32 %i.ba to i16
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bb, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %index ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bc, align 2, !tbaa !42
  %wide.load139 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !42
  %i.be = add <8 x i16> %wide.load, %broadcast.splat
  %i.bf = add <8 x i16> %wide.load139, %broadcast.splat
  store <8 x i16> %i.be, ptr %i.bc, align 2, !tbaa !42
  store <8 x i16> %i.bf, ptr %i.bd, align 2, !tbaa !42
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %wide.trip.count132
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !89

vector.ph141:                                     ; preds = %._crit_edge
  %i.bh = trunc nuw nsw i32 %. to i16
  %broadcast.splatinsert143 = insertelement <8 x i16> poison, i16 %i.bh, i64 0
  %broadcast.splat144 = shufflevector <8 x i16> %broadcast.splatinsert143, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph141
  %index146 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body145 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %index146 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load147 = load <8 x i16>, ptr %i.bi, align 2, !tbaa !42
  %wide.load148 = load <8 x i16>, ptr %i.bj, align 2, !tbaa !42
  %i.bk = add <8 x i16> %wide.load147, %broadcast.splat144
  %i.bl = add <8 x i16> %wide.load148, %broadcast.splat144
  store <8 x i16> %i.bk, ptr %i.bi, align 2, !tbaa !42
  store <8 x i16> %i.bl, ptr %i.bj, align 2, !tbaa !42
  %index.next149 = add nuw i64 %index146, 16      ; 2 uses
  %i.bm = icmp eq i64 %index.next149, %wide.trip.count132
  br i1 %i.bm, label %middle.block150, label %vector.body145, !llvm.loop !90

middle.block150:                                  ; preds = %vector.body145
  %i.bn = shl i32 %.0101, 1                       ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !52
  %i.bq = shl i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 456522
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !9
  %.not113 = icmp eq i8 %i.bs, 0
  br i1 %.not113, label %bb.i, label %.sink.split

middle.block:                                     ; preds = %vector.body
  %i.bt = shl i32 %.0101, 2                       ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 456522
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !9
  %.not112 = icmp eq i8 %i.bv, 0
  br i1 %.not112, label %bb.i, label %bb.h

bb.h:                                             ; preds = %middle.block
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 456520
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !19 ; 2 uses
  %i.by = zext i16 %i.bx to i32
end_hunk_1
