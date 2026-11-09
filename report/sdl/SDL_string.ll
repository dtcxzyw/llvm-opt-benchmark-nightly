Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_string?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@StepUTF8:bb.a
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = and i32 %i.k, 192
  %i.m = icmp eq i32 %i.l, 128
  br i1 %i.m, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.n = shl nuw nsw i32 %i.c, 6
  %i.o = and i32 %i.n, 1984                       ; 2 uses
  %i.p = icmp samesign ult i32 %i.o, 128
  br i1 %i.p, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.f
  %i.q = and i32 %i.k, 63
  %i.r = or disjoint i32 %i.q, %i.o
  br label %.thread.sink.split

bb.g:                                             ; preds = %bb.d
  %i.s = and i32 %i.c, 240
  %i.t = icmp eq i32 %i.s, 224
  %i.u = icmp ugt i64 %1, 2
  %or.cond8 = and i1 %i.u, %i.t
  br i1 %or.cond8, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = and i32 %i.x, 192
  %i.z = icmp eq i32 %i.y, 128
  br i1 %i.z, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = and i32 %i.ac, 192
  %i.ae = icmp eq i32 %i.ad, 128
  br i1 %i.ae, label %bb.j, label %.critedge.thread

bb.j:                                             ; preds = %bb.i
  %i.af = shl nuw nsw i32 %i.x, 6
  %i.ag = and i32 %i.af, 4032
  %i.ah = shl nuw nsw i32 %i.c, 12
  %i.ai = and i32 %i.ah, 61440                    ; 2 uses
  %i.aj = or disjoint i32 %i.ag, %i.ai            ; 3 uses
  %i.ak = icmp samesign ugt i32 %i.aj, 2047
  br i1 %i.ak, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %bb.j
  %i.al = and i32 %i.ac, 63
  %i.am = or disjoint i32 %i.al, %i.aj
  %i.an = icmp samesign ult i32 %i.aj, 55296
  %i.ao = icmp samesign ugt i32 %i.ai, 57343
  %or.cond10 = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond10, label %.thread.sink.split, label %.critedge.thread

bb.l:                                             ; preds = %bb.g
  %i.ap = and i32 %i.c, 248
  %i.aq = icmp eq i32 %i.ap, 240
  %i.ar = icmp ugt i64 %1, 3
  %or.cond12 = and i1 %i.ar, %i.aq
  br i1 %or.cond12, label %bb.m, label %.critedge.thread

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.at to i32                    ; 2 uses
  %i.ax = and i32 %i.aw, 192
  %i.ay = icmp eq i32 %i.ax, 128
  br i1 %i.ay, label %bb.n, label %.critedge.thread

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = and i32 %i.bb, 192
  %i.bd = icmp eq i32 %i.bc, 128
  br i1 %i.bd, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  %i.be = zext i8 %i.av to i32                    ; 2 uses
  %i.bf = and i32 %i.be, 192
  %i.bg = icmp eq i32 %i.bf, 128
  br i1 %i.bg, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %bb.o
  %i.bh = shl nuw nsw i32 %i.aw, 12
  %i.bi = and i32 %i.bh, 126976
  %i.bj = shl nuw nsw i32 %i.c, 18
  %i.bk = and i32 %i.bj, 1835008
  %i.bl = or disjoint i32 %i.bi, %i.bk            ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bl, 65536
  br i1 %i.bm, label %.critedge.thread, label %.critedge80

.critedge80:                                      ; preds = %bb.p
  %i.bn = shl nuw nsw i32 %i.bb, 6
  %i.bo = and i32 %i.bn, 4032
  %i.bp = and i32 %i.be, 63
  %i.bq = or disjoint i32 %i.bp, %i.bo
  %i.br = or disjoint i32 %i.bq, %i.bl
  br label %.thread.sink.split

.critedge.thread:                                 ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.h, %bb.i, %bb.j, %bb.k, %bb.e, %bb.f, %bb.l
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.k, %bb.c, %.critedge.thread, %.critedge, %.critedge80
  %.sink92 = phi i64 [ 4, %.critedge80 ], [ 1, %bb.c ], [ 2, %.critedge ], [ 1, %.critedge.thread ], [ 3, %bb.k ]
  %.9.ph = phi i32 [ %i.br, %.critedge80 ], [ %i.c, %bb.c ], [ %i.r, %.critedge ], [ 65533, %.critedge.thread ], [ %i.am, %bb.k ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink92
  store ptr %i.bs, ptr %0, align 8
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a, %bb.b
  %.9 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.9.ph, %.thread.sink.split ]
  ret i32 %.9
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 1966080) i32 @SDL_StepBackUTF8_REAL(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 5 uses
  %.not11 = icmp ugt ptr %i.c, %0
  br i1 %.not11, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoaddr ptr %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.e = sub i64 %i.a, %i.d
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.e
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.f = icmp eq ptr %i.h, %0
  br i1 %i.f, label %bb.f, label %bb.e, !llvm.loop !12

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.g = phi ptr [ %i.c, %bb.c ], [ %i.h, %bb.d ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp slt i8 %i.i, -64
  br i1 %i.j, label %bb.d, label %bb.f, !llvm.loop !12

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.k = phi ptr [ %scevgep, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  store ptr %i.k, ptr %i.b, align 8
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  store ptr %i.k, ptr %1, align 8
  %i.o = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.b, i64 noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @SDL_memcmp_REAL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #23
  ret i32 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @SDL_strlen_REAL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  ret i64 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @SDL_strnlen_REAL(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strnlen(ptr noundef %0, i64 noundef %1) #23
  ret i64 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @SDL_wcslen_REAL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef %0) #23
  ret i64 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden i64 @SDL_wcsnlen_REAL(ptr nofree noundef readonly %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @wcsnlen(ptr noundef %0, i64 noundef %1) #23
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @wcsnlen(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_wcslcpy_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @wcslcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #22
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @wcslcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_wcslcat_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @wcslcat(ptr noundef %0, ptr noundef %1, i64 noundef %2) #22
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @wcslcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_wcsdup_REAL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef readonly %0) #23
  %i.b = shl i64 %i.a, 2
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.c) #22 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.d, ptr align 4 %0, i64 %i.c, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.d
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind memory(read) uwtable
define hidden noundef ptr @SDL_wcsnstr_REAL(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef readonly %1) #23 ; 4 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not18 = icmp ult i64 %2, %i.a
  br i1 %.not18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.020 = phi i64 [ %i.g, %bb.c ], [ %2, %.preheader ]
  %.01519 = phi ptr [ %i.f, %bb.c ], [ %0, %.preheader ] ; 4 uses
  %i.c = load i32, ptr %.01519, align 4
  %.not17 = icmp eq i32 %i.c, 0
  br i1 %.not17, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call i32 @wcsncmp(ptr noundef nonnull readonly %.01519, ptr noundef readonly %1, i64 noundef %i.a) #23
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01519, i64 4
  %i.g = add i64 %.020, -1                        ; 2 uses
  %.not = icmp ult i64 %i.g, %i.a
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !13

.critedge:                                        ; preds = %bb.b, %bb.c, %.lr.ph, %.preheader, %bb.a
  %.014 = phi ptr [ %0, %bb.a ], [ null, %.preheader ], [ null, %bb.c ], [ %.01519, %bb.b ], [ null, %.lr.ph ]
  ret ptr %.014
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden i32 @SDL_wcsncmp_REAL(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @wcsncmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #23
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden ptr @SDL_wcsstr_REAL(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @wcsstr(ptr noundef %0, ptr noundef %1) #23
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcsstr(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden i32 @SDL_wcscmp_REAL(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @wcscmp(ptr noundef %0, ptr noundef %1) #23
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcsncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 2) i32 @SDL_wcscasecmp_REAL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.032 = phi ptr [ %0, %bb.a ], [ %.133, %bb.h ] ; 3 uses
  %.029 = phi ptr [ %1, %bb.a ], [ %.130, %bb.h ] ; 3 uses
  %.023 = phi i32 [ 0, %bb.a ], [ %.124, %bb.h ]  ; 3 uses
  %.021 = phi i32 [ 0, %bb.a ], [ %.122, %bb.h ]  ; 2 uses
  %.019 = phi i32 [ 0, %bb.a ], [ %.120, %bb.h ]  ; 3 uses
  %.015 = phi i32 [ 0, %bb.a ], [ %.116, %bb.h ]  ; 2 uses
  %.not = icmp eq i32 %.015, %.023
  br i1 %.not, label %StepUTF32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.023, 1
  %i.d = sext i32 %.023 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.d
  br label %bb.d

StepUTF32.exit:                                   ; preds = %bb.b
  %i.f = load i32, ptr %.032, align 4             ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = icmp ugt i32 %i.f, 1114111
  %i.i = select i1 %i.h, i32 65533, i32 %i.f
  %.234.idx = select i1 %i.g, i64 0, i64 4
  %.234 = getelementptr inbounds nuw i8, ptr %.032, i64 %.234.idx
  %i.j = call i32 @SDL_CaseFoldUnicode(i32 noundef %i.i, ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %StepUTF32.exit, %bb.c
  %.133 = phi ptr [ %.234, %StepUTF32.exit ], [ %.032, %bb.c ]
  %.124 = phi i32 [ 1, %StepUTF32.exit ], [ %i.c, %bb.c ]
  %.018.in = phi ptr [ %i.a, %StepUTF32.exit ], [ %i.e, %bb.c ]
  %.116 = phi i32 [ %i.j, %StepUTF32.exit ], [ %.015, %bb.c ]
  %.018 = load i32, ptr %.018.in, align 4         ; 3 uses
  %.not25 = icmp eq i32 %.021, %.019
  br i1 %.not25, label %StepUTF32.exit27, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %.019, 1
  %i.l = sext i32 %.019 to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.l
  br label %bb.f

StepUTF32.exit27:                                 ; preds = %bb.d
  %i.n = load i32, ptr %.029, align 4             ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = icmp ugt i32 %i.n, 1114111
  %i.q = select i1 %i.p, i32 65533, i32 %i.n
  %.231.idx = select i1 %i.o, i64 0, i64 4
  %.231 = getelementptr inbounds nuw i8, ptr %.029, i64 %.231.idx
  %i.r = call i32 @SDL_CaseFoldUnicode(i32 noundef %i.q, ptr noundef nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %StepUTF32.exit27, %bb.e
  %.130 = phi ptr [ %.231, %StepUTF32.exit27 ], [ %.029, %bb.e ]
  %.122 = phi i32 [ %i.r, %StepUTF32.exit27 ], [ %.021, %bb.e ]
  %.120 = phi i32 [ 1, %StepUTF32.exit27 ], [ %i.k, %bb.e ]
  %.017.in = phi ptr [ %i.b, %StepUTF32.exit27 ], [ %i.m, %bb.e ]
  %.017 = load i32, ptr %.017.in, align 4         ; 2 uses
  %i.s = icmp ult i32 %.018, %.017
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ugt i32 %.018, %.017
  br i1 %i.t, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %.018, 0
  br i1 %i.u, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.2 = phi i32 [ 0, %bb.h ], [ -1, %bb.f ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 2) i32 @SDL_wcsncasecmp_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.049 = phi ptr [ %0, %bb.a ], [ %.150, %bb.n ] ; 6 uses
  %.046 = phi ptr [ %1, %bb.a ], [ %.147, %bb.n ] ; 6 uses
  %.035 = phi i64 [ %2, %bb.a ], [ %.136, %bb.n ] ; 3 uses
  %.033 = phi i32 [ 0, %bb.a ], [ %.134, %bb.n ]  ; 2 uses
  %.031 = phi i32 [ 0, %bb.a ], [ %.132, %bb.n ]  ; 3 uses
  %.029 = phi i32 [ 0, %bb.a ], [ %.130, %bb.n ]  ; 2 uses
  %.027 = phi i32 [ 0, %bb.a ], [ %.128, %bb.n ]  ; 3 uses
  %.023 = phi i64 [ %2, %bb.a ], [ %.124, %bb.n ] ; 3 uses
  %.not = icmp eq i32 %.033, %.031
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %.031, 1
  %i.d = sext i32 %.031 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.d
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %.023, 0
  br i1 %.not.i, label %StepUTF32.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %.049, align 4             ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %StepUTF32.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.i = icmp ugt i32 %i.f, 1114111
  %i.j = select i1 %i.i, i32 65533, i32 %i.f
  br label %StepUTF32.exit

StepUTF32.exit:                                   ; preds = %bb.d, %bb.e, %bb.f
  %.251 = phi ptr [ %.049, %bb.d ], [ %.049, %bb.e ], [ %i.h, %bb.f ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.j, %bb.f ]
  %i.k = call i32 @SDL_CaseFoldUnicode(i32 noundef %.1.i, ptr noundef nonnull %i.a)
  %i.l = ptrtoint ptr %.251 to i64
  %i.m = ptrtoint ptr %.049 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = sub i64 %.023, %i.o
  br label %bb.g

bb.g:                                             ; preds = %StepUTF32.exit, %bb.c
  %.150 = phi ptr [ %.251, %StepUTF32.exit ], [ %.049, %bb.c ]
  %.134 = phi i32 [ %i.k, %StepUTF32.exit ], [ %.033, %bb.c ]
  %.132 = phi i32 [ 1, %StepUTF32.exit ], [ %i.c, %bb.c ]
  %.026.in = phi ptr [ %i.a, %StepUTF32.exit ], [ %i.e, %bb.c ]
  %.124 = phi i64 [ %i.p, %StepUTF32.exit ], [ %.023, %bb.c ]
  %.026 = load i32, ptr %.026.in, align 4         ; 3 uses
  %.not37 = icmp eq i32 %.029, %.027
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %.027, 1
  %i.r = sext i32 %.027 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.r
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not.i38 = icmp eq i64 %.035, 0
  br i1 %.not.i38, label %StepUTF32.exit40, label %bb.j
end_hunk_0
begin_hunk_1_@SDL_strtoul_REAL:bb.a
; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_strtoll_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @__isoc23_strtoll(ptr noundef %0, ptr noundef %1, i32 noundef %2) #22
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_strtoull_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @__isoc23_strtoull(ptr noundef %0, ptr noundef %1, i32 noundef %2) #22
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define hidden double @SDL_strtod_REAL(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call double @strtod(ptr noundef %0, ptr noundef %1) #22
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @SDL_strcmp_REAL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #23
  ret i32 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 2) i32 @SDL_strcasecmp_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = alloca [3 x i32], align 4                ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.022 = phi i32 [ 0, %bb.a ], [ %.123, %bb.j ]  ; 3 uses
  %.020 = phi i32 [ 0, %bb.a ], [ %.121, %bb.j ]  ; 2 uses
  %.018 = phi i32 [ 0, %bb.a ], [ %.119, %bb.j ]  ; 3 uses
  %.014 = phi i32 [ 0, %bb.a ], [ %.115, %bb.j ]  ; 2 uses
  %.not = icmp eq i32 %.014, %.022
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %.022, 1
  %i.f = sext i32 %.022 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.a, i64 noundef 4)
  %i.i = call i32 @SDL_CaseFoldUnicode(i32 noundef %i.h, ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.123 = phi i32 [ %i.e, %bb.c ], [ 1, %bb.d ]
  %.017.in = phi ptr [ %i.g, %bb.c ], [ %i.c, %bb.d ]
  %.115 = phi i32 [ %.014, %bb.c ], [ %i.i, %bb.d ]
  %.017 = load i32, ptr %.017.in, align 4         ; 3 uses
  %.not24 = icmp eq i32 %.020, %.018
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %.018, 1
  %i.k = sext i32 %.018 to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.b, i64 noundef 4)
  %i.n = call i32 @SDL_CaseFoldUnicode(i32 noundef %i.m, ptr noundef nonnull %i.d)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.121 = phi i32 [ %.020, %bb.f ], [ %i.n, %bb.g ]
  %.119 = phi i32 [ %i.j, %bb.f ], [ 1, %bb.g ]
  %.016.in = phi ptr [ %i.l, %bb.f ], [ %i.d, %bb.g ]
  %.016 = load i32, ptr %.016.in, align 4         ; 2 uses
  %i.o = icmp ult i32 %.017, %.016
  br i1 %i.o, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp ugt i32 %.017, %.016
  br i1 %i.p, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = icmp eq i32 %.017, 0
  br i1 %i.q, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.h, %bb.i, %bb.j
  %.2 = phi i32 [ 0, %bb.j ], [ -1, %bb.h ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_sscanf_REAL(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @__isoc23_vsscanf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #22
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_vsscanf_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @__isoc23_vsscanf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nounwind
declare i32 @__isoc23_vsscanf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define hidden noundef i32 @SDL_snprintf_REAL(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #13 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.va_start.p0(ptr nonnull %3)
  %.not.i = icmp eq ptr %2, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str, ptr %2
  %i.a = call noundef i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %3) #22
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %i.a
}

; Function Attrs: nofree nounwind uwtable
define hidden noundef i32 @SDL_vsnprintf_REAL(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #13 {
bb.a:
  %.not = icmp eq ptr %2, null
  %spec.store.select = select i1 %.not, ptr @.str, ptr %2
  %i.a = tail call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %spec.store.select, ptr noundef %3) #22
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_swprintf_REAL(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) local_unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @SDL_vswprintf_REAL(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_vswprintf_REAL(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not55 = icmp eq ptr %2, null
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i64 @wcslen(ptr noundef nonnull readonly %2) #23
  %i.c = shl i64 %i.b, 2
  %i.d = add i64 %i.c, 4
  %i.e = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i64 noundef %i.d) #22 ; 2 uses
  %.not56 = icmp eq ptr %i.e, null
  br i1 %.not56, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.044 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.va_copy.p0(ptr nonnull %4, ptr %3)
  %.not.i = icmp eq ptr %.044, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str, ptr %.044 ; 2 uses
  %i.f = call noundef i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %4) #22 ; 5 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @SDL_free_REAL(ptr noundef %.044) #22
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.h = icmp samesign ult i32 %i.f, 64
  %.pre = add nuw nsw i32 %i.f, 1
  %.pre65 = zext nneg i32 %.pre to i64            ; 4 uses
  br i1 %i.h, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = icmp samesign ult i32 %i.f, 127          ; 2 uses
  br i1 %i.i, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.j = alloca i8, i64 %.pre65, align 16
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.k = call noalias ptr @SDL_malloc_REAL(i64 noundef %.pre65) #22 ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @SDL_free_REAL(ptr noundef %.044) #22
  br label %bb.q

bb.k:                                             ; preds = %.thread, %bb.i
  %i.l = phi ptr [ %i.j, %.thread ], [ %i.k, %bb.i ] ; 3 uses
  %i.m = call noundef i32 @vsnprintf(ptr noundef nonnull %i.l, i64 noundef %.pre65, ptr noundef nonnull %spec.store.select.i, ptr noundef %3) #22
  %.not58 = icmp sgt i32 %i.m, %i.f
  br i1 %.not58, label %.thread63, label %._crit_edge

.thread63:                                        ; preds = %bb.k
  call void @SDL_free_REAL(ptr noundef %.044) #22
  %i.n = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3) #22
  %i.o = zext i1 %i.n to i32
  br label %bb.q

._crit_edge:                                      ; preds = %bb.g, %bb.k
  %.042 = phi i1 [ %i.i, %bb.k ], [ false, %bb.g ]
  %.041 = phi ptr [ %i.l, %bb.k ], [ null, %bb.g ] ; 2 uses
  %.040 = phi ptr [ %i.l, %bb.k ], [ %i.a, %bb.g ]
  call void @SDL_free_REAL(ptr noundef %.044) #22
  %i.p = call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, ptr noundef nonnull %.040, i64 noundef %.pre65) #22 ; 4 uses
  %.not59 = icmp eq ptr %i.p, null
  br i1 %.not59, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = call i64 @wcslcpy(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i64 noundef %1) #22 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.r = call i64 @wcslen(ptr noundef nonnull readonly %i.p) #23
  %i.s = trunc i64 %i.r to i32
  call void @SDL_free_REAL(ptr noundef nonnull %i.p) #22
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %.0 = phi i32 [ %i.s, %bb.n ], [ -1, %._crit_edge ] ; 2 uses
  %i.t = icmp eq ptr %.041, null
  %or.cond = or i1 %.042, %i.t
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @SDL_free_REAL(ptr noundef nonnull %.041) #22
  br label %bb.q

bb.q:                                             ; preds = %.thread63, %bb.j, %bb.p, %bb.o, %bb.f
  %.2 = phi i32 [ -1, %bb.f ], [ -1, %bb.j ], [ %i.o, %.thread63 ], [ %.0, %bb.p ], [ %.0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.q
  %.3 = phi i32 [ %.2, %bb.q ], [ -1, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #14

declare ptr @SDL_iconv_string_REAL(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #19

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #10

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @SDL_asprintf_REAL(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ...) local_unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr null, ptr %0, align 8
  %i.a = call noalias ptr @SDL_malloc_REAL(i64 noundef 100) #22 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %SDL_vasprintf_REAL.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  %spec.store.select.i.i = select i1 %.not.i.i, ptr @.str, ptr %1
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.preheader.i
  %.021.i = phi i32 [ %i.f, %bb.f ], [ 100, %.preheader.i ] ; 2 uses
  %.0.i = phi ptr [ %i.h, %bb.f ], [ %i.a, %.preheader.i ] ; 5 uses
  call void @llvm.va_copy.p0(ptr nonnull %2, ptr nonnull %3)
  %i.b = zext nneg i32 %.021.i to i64
  %i.c = call noundef i32 @vsnprintf(ptr noundef nonnull %.0.i, i64 noundef %i.b, ptr noundef nonnull %spec.store.select.i.i, ptr noundef nonnull %2) #22 ; 5 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @SDL_free_REAL(ptr noundef nonnull %.0.i) #22
  br label %SDL_vasprintf_REAL.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i32 %i.c, %.021.i
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %.0.i, ptr %0, align 8
  br label %SDL_vasprintf_REAL.exit

bb.f:                                             ; preds = %bb.d
  %i.f = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = call ptr @SDL_realloc_REAL(ptr noundef nonnull %.0.i, i64 noundef %i.g) #24 ; 2 uses
  %.not26.i = icmp eq ptr %i.h, null
  br i1 %.not26.i, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @SDL_free_REAL(ptr noundef nonnull %.0.i) #22
  br label %SDL_vasprintf_REAL.exit

SDL_vasprintf_REAL.exit:                          ; preds = %bb.a, %bb.c, %bb.e, %bb.g
  %.022.i = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.e ], [ -1, %bb.g ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %.022.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @SDL_vasprintf_REAL(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %0, align 8
  %i.a = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 100) #22 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str, ptr %1
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.021 = phi i32 [ %i.f, %bb.f ], [ 100, %.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.h, %bb.f ], [ %i.a, %.preheader ] ; 5 uses
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.b = zext nneg i32 %.021 to i64
  %i.c = call noundef i32 @vsnprintf(ptr noundef nonnull %.0, i64 noundef %i.b, ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %3) #22 ; 5 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @SDL_free_REAL(ptr noundef nonnull %.0) #22
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i32 %i.c, %.021
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %.0, ptr %0, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.f = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = call ptr @SDL_realloc_REAL(ptr noundef nonnull %.0, i64 noundef %i.g) #24 ; 2 uses
  %.not26 = icmp eq ptr %i.h, null
  br i1 %.not26, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @SDL_free_REAL(ptr noundef nonnull %.0) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.e, %bb.c
  %.022 = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.e ], [ -1, %bb.g ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %.022
}

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @SDL_strpbrk_REAL(ptr nofree noundef readonly %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @strpbrk(ptr noundef %0, ptr noundef %1) #23
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(1) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = distinct !{!1, !6}
end_hunk_1
