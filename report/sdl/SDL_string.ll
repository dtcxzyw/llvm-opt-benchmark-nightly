Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_string?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@SDL_CaseFoldUnicode:bb.a
  br label %.thread123

.thread126:                                       ; preds = %bb.k, %bb.i, %._crit_edge142, %bb.b
  store i32 %0, ptr %1, align 4
  br label %.thread123

.thread123:                                       ; preds = %.thread121, %.thread118, %.thread, %bb.l, %.thread126, %bb.c
  %.13 = phi i32 [ 1, %bb.c ], [ 1, %.thread126 ], [ 1, %bb.l ], [ 3, %.thread121 ], [ 2, %.thread118 ], [ 1, %.thread ]
  ret i32 %.13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 1966080) i32 @SDL_StepUTF8_REAL(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @StepUTF8(ptr noundef %0, i64 noundef 4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = load i64, ptr %1, align 8
  %i.d = tail call fastcc i32 @StepUTF8(ptr noundef nonnull %0, i64 noundef %i.c)
  %i.e = load ptr, ptr %0, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %.neg = sub i64 %i.g, %i.f
  %i.h = load i64, ptr %1, align 8
  %i.i = add i64 %.neg, %i.h
  store i64 %i.i, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.a, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 1966080) i32 @StepUTF8(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 8 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = zext i8 %i.b to i32                      ; 7 uses
  %i.d = icmp eq i8 %i.b, 0
  br i1 %i.d, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp sgt i8 %i.b, -1
  br i1 %i.e, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, 224
  %i.g = icmp eq i32 %i.f, 192
  %i.h = icmp ne i64 %1, 1
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f
  %.0 = phi i32 [ %i.o, %bb.f ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @SDL_memcmp_REAL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #24
  ret i32 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @SDL_strlen_REAL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  ret i64 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @SDL_strnlen_REAL(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strnlen(ptr noundef %0, i64 noundef %1) #24
  ret i64 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @SDL_wcslen_REAL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #24
  ret i64 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden i64 @SDL_wcsnlen_REAL(ptr nofree noundef readonly %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @wcsnlen(ptr noundef %0, i64 noundef %1) #24
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @wcsnlen(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_wcslcpy_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @wcslcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #23
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @wcslcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_wcslcat_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @wcslcat(ptr noundef %0, ptr noundef %1, i64 noundef %2) #23
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @wcslcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_wcsdup_REAL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) #24
  %i.b = shl i64 %i.a, 2
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.c) #23 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.d, ptr nonnull align 4 %0, i64 %i.c, i1 false)
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
  %i.a = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %1) #24 ; 4 uses
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
  %i.d = tail call i32 @wcsncmp(ptr noundef nonnull readonly %.01519, ptr noundef nonnull readonly %1, i64 noundef %i.a) #24
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
  %i.a = tail call i32 @wcsncmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #24
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden ptr @SDL_wcsstr_REAL(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @wcsstr(ptr noundef %0, ptr noundef %1) #24
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcsstr(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden i32 @SDL_wcscmp_REAL(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @wcscmp(ptr noundef %0, ptr noundef %1) #24
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 2) i32 @SDL_wcsncasecmp_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 5 uses
  %i.b = alloca [3 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
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

bb.j:                                             ; preds = %bb.i
  %i.t = load i32, ptr %.046, align 4             ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %StepUTF32.exit40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.046, i64 4
  %i.w = icmp ugt i32 %i.t, 1114111
  %i.x = select i1 %i.w, i32 65533, i32 %i.t
  br label %StepUTF32.exit40

StepUTF32.exit40:                                 ; preds = %bb.i, %bb.j, %bb.k
  %.248 = phi ptr [ %.046, %bb.i ], [ %.046, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.1.i39 = phi i32 [ 0, %bb.i ], [ 0, %bb.j ], [ %i.x, %bb.k ]
  %i.y = call i32 @SDL_CaseFoldUnicode(i32 noundef %.1.i39, ptr noundef nonnull %i.b)
  %i.z = ptrtoint ptr %.248 to i64
  %i.aa = ptrtoint ptr %.046 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = sub i64 %.035, %i.ac
  br label %bb.l

bb.l:                                             ; preds = %StepUTF32.exit40, %bb.h
  %.147 = phi ptr [ %.248, %StepUTF32.exit40 ], [ %.046, %bb.h ]
  %.136 = phi i64 [ %i.ad, %StepUTF32.exit40 ], [ %.035, %bb.h ]
  %.130 = phi i32 [ %i.y, %StepUTF32.exit40 ], [ %.029, %bb.h ]
  %.128 = phi i32 [ 1, %StepUTF32.exit40 ], [ %i.q, %bb.h ]
  %.025.in = phi ptr [ %i.b, %StepUTF32.exit40 ], [ %i.s, %bb.h ]
  %.025 = load i32, ptr %.025.in, align 4         ; 2 uses
  %i.ae = icmp ult i32 %.026, %.025
  br i1 %i.ae, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = icmp ugt i32 %.026, %.025
  br i1 %i.af, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = icmp eq i32 %.026, 0
  br i1 %i.ag, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.l, %bb.m, %bb.n
  %.2 = phi i32 [ 0, %bb.n ], [ -1, %bb.l ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_wcstol_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @__isoc23_wcstol(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @__isoc23_wcstol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define hidden i64 @SDL_strlcpy_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i64 @strlcpy(ptr noundef %0, ptr noundef nonnull dereferenceable(1) %1, i64 noundef %2) #23
  ret i64 %i.a
}

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i64 0, -1) i64 @SDL_utf8strlcpy_REAL(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #15 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24
  %i.b = add i64 %2, -1
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.b) ; 6 uses
  %.not40 = icmp eq i64 %i.c, 0
  br i1 %.not40, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i64 %i.c, -1                         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = add i8 %i.f, 64
  %or.cond = icmp ult i8 %i.g, 53
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %or.cond5 = icmp sgt i8 %i.f, -65
  %.not4148 = icmp eq i64 %i.d, 0
  %or.cond50 = or i1 %or.cond5, %.not4148
  br i1 %or.cond50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %UTF8_GetTrailingBytes.exit
  %.049 = phi i64 [ %i.n, %UTF8_GetTrailingBytes.exit ], [ %i.d, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.049
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %i.j = and i8 %i.i, -32
  %or.cond.i = icmp eq i8 %i.j, -64
  br i1 %or.cond.i, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.k = and i8 %i.i, -16
  %or.cond5.i = icmp eq i8 %i.k, -32
  br i1 %or.cond5.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i8 %i.i, 16
  %or.cond8.i = icmp ult i8 %i.l, 5
  br i1 %or.cond8.i, label %select.unfold, label %UTF8_GetTrailingBytes.exit

select.unfold:                                    ; preds = %bb.f, %bb.e, %.lr.ph
  %.0.i.ph = phi i64 [ 3, %bb.e ], [ 2, %.lr.ph ], [ 4, %bb.f ]
  %i.m = sub nuw i64 %i.c, %.049
  %.not43 = icmp eq i64 %i.m, %.0.i.ph
  %spec.select = select i1 %.not43, i64 %i.c, i64 %.049
  br label %.loopexit

UTF8_GetTrailingBytes.exit:                       ; preds = %bb.f
  %i.n = add i64 %.049, -1                        ; 2 uses
  %.not41 = icmp eq i64 %i.n, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph, !llvm.loop !14

.loopexit:                                        ; preds = %UTF8_GetTrailingBytes.exit, %bb.c, %select.unfold, %bb.d
  %.035 = phi i64 [ %i.d, %bb.c ], [ %i.c, %bb.d ], [ %spec.select, %select.unfold ], [ %i.c, %UTF8_GetTrailingBytes.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %1, i64 %.035, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b
  %.1 = phi i64 [ %.035, %.loopexit ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.1
  store i8 0, ptr %i.o, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %.2 = phi i64 [ %.1, %bb.g ], [ 0, %bb.a ]
  ret i64 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @SDL_utf8strlen_REAL(ptr noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]     ; 2 uses
  %i.b = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.a, i64 noundef 4)
  %.not = icmp eq i32 %i.b, 0
  %i.c = add i64 %.0, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @SDL_utf8strnlen_REAL(ptr noundef %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.a, i64 noundef %1)
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ]
  %.06 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  %.035 = phi i64 [ %i.g, %.lr.ph ], [ %1, %bb.a ]
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %.neg.i = add i64 %.035, %i.d
  %i.g = sub i64 %.neg.i, %i.f                    ; 2 uses
  %i.h = add i64 %.06, 1                          ; 2 uses
  %i.i = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.a, i64 noundef %i.g)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define hidden i64 @SDL_strlcat_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i64 @strlcat(ptr noundef %0, ptr noundef %1, i64 noundef %2) #23
  ret i64 %i.a
}

; Function Attrs: nofree nounwind
declare i64 @strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_strdup_REAL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #24
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.b) #23 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @SDL_strndup_REAL(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @strnlen(ptr noundef readonly %0, i64 noundef %1) #24 ; 3 uses
  %i.b = add i64 %i.a, 1
  %i.c = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.b) #23 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %0, i64 %i.a, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.a
  store i8 0, ptr %i.d, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @SDL_strrev_REAL(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #24 ; 3 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %.not13 = icmp eq i64 %i.b, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 %i.a       ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.016.prol = phi i64 [ %i.d, %.lr.ph.prol ], [ %i.b, %.lr.ph.preheader ]
  %.pn15.prol = phi ptr [ %.011.prol, %.lr.ph.prol ], [ %i.c, %.lr.ph.preheader ]
  %.01214.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.011.prol = getelementptr i8, ptr %.pn15.prol, i64 -1 ; 4 uses
  %i.d = add nsw i64 %.016.prol, -1               ; 2 uses
  %i.e = load i8, ptr %.01214.prol, align 1
  %i.f = load i8, ptr %.011.prol, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %.01214.prol, i64 1 ; 2 uses
  store i8 %i.f, ptr %.01214.prol, align 1
  store i8 %i.e, ptr %.011.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.016.unr = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.pn15.unr = phi ptr [ %i.c, %.lr.ph.preheader ], [ %.011.prol, %.lr.ph.prol ]
  %.01214.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %i.h = icmp ult i64 %i.a, 8
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.016 = phi i64 [ %i.r, %.lr.ph ], [ %.016.unr, %.lr.ph.prol.loopexit ]
  %.pn15 = phi ptr [ %.011.3, %.lr.ph ], [ %.pn15.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.01214 = phi ptr [ %i.u, %.lr.ph ], [ %.01214.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.011 = getelementptr i8, ptr %.pn15, i64 -1    ; 2 uses
  %i.i = load i8, ptr %.01214, align 1
  %i.j = load i8, ptr %.011, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.01214, i64 1 ; 2 uses
  store i8 %i.j, ptr %.01214, align 1
  store i8 %i.i, ptr %.011, align 1
  %.011.1 = getelementptr i8, ptr %.pn15, i64 -2  ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = load i8, ptr %.011.1, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.01214, i64 2 ; 2 uses
  store i8 %i.m, ptr %i.k, align 1
  store i8 %i.l, ptr %.011.1, align 1
  %.011.2 = getelementptr i8, ptr %.pn15, i64 -3  ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = load i8, ptr %.011.2, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.01214, i64 3 ; 2 uses
  store i8 %i.p, ptr %i.n, align 1
  store i8 %i.o, ptr %.011.2, align 1
  %.011.3 = getelementptr i8, ptr %.pn15, i64 -4  ; 3 uses
  %i.r = add nsw i64 %.016, -4                    ; 2 uses
  %i.s = load i8, ptr %i.q, align 1
  %i.t = load i8, ptr %.011.3, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.01214, i64 4
  store i8 %i.t, ptr %i.q, align 1
  store i8 %i.s, ptr %.011.3, align 1
  %.not.3 = icmp eq i64 %i.r, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_strupr_REAL(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not7 = icmp eq i8 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i8 [ %i.g, %.lr.ph ], [ %i.a, %bb.a ]
  %.08 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = tail call i32 @SDL_toupper_REAL(i32 noundef %i.c) #23
  %i.e = trunc i32 %i.d to i8
  store i8 %i.e, ptr %.08, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.08, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

declare i32 @SDL_toupper_REAL(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_strlwr_REAL(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %.not7 = icmp eq i8 %i.a, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i8 [ %i.g, %.lr.ph ], [ %i.a, %bb.a ]
  %.08 = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = tail call i32 @SDL_tolower_REAL(i32 noundef %i.c) #23
  %i.e = trunc i32 %i.d to i8
  store i8 %i.e, ptr %.08, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.08, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

declare i32 @SDL_tolower_REAL(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @SDL_strchr_REAL(ptr nofree noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %1) #24
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @SDL_strrchr_REAL(ptr nofree noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %1) #24
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden noundef ptr @SDL_strnstr_REAL(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 4 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not16 = icmp ult i64 %2, %i.a
  br i1 %.not16, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.018 = phi i64 [ %i.g, %bb.c ], [ %2, %.preheader ]
  %.01317 = phi ptr [ %i.f, %bb.c ], [ %0, %.preheader ] ; 4 uses
  %i.c = load i8, ptr %.01317, align 1
  %.not15 = icmp eq i8 %i.c, 0
  br i1 %.not15, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call i32 @strncmp(ptr noundef nonnull readonly %.01317, ptr noundef nonnull readonly %1, i64 noundef %i.a) #24
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01317, i64 1
  %i.g = add i64 %.018, -1                        ; 2 uses
  %.not = icmp ult i64 %i.g, %i.a
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !20

.critedge:                                        ; preds = %bb.b, %bb.c, %.lr.ph, %.preheader, %bb.a
  %.012 = phi ptr [ %0, %bb.a ], [ null, %.preheader ], [ null, %bb.c ], [ %.01317, %bb.b ], [ null, %.lr.ph ]
  ret ptr %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @SDL_strncmp_REAL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #24
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @SDL_strstr_REAL(ptr nofree noundef readonly %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #24
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @SDL_strcasestr_REAL(ptr noundef %0, ptr nofree noundef readonly %1) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = tail call i32 @SDL_strncasecmp_REAL(ptr noundef %i.c, ptr noundef nonnull %1, i64 noundef %i.b)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.a, i64 noundef 4)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !21

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -1, 2) i32 @SDL_strncasecmp_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = alloca [3 x i32], align 4                ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.e = phi ptr [ %1, %bb.a ], [ %i.z, %bb.j ]   ; 2 uses
  %i.f = phi ptr [ %0, %bb.a ], [ %i.p, %bb.j ]   ; 2 uses
  %.033 = phi i64 [ %2, %bb.a ], [ %.134, %bb.j ] ; 3 uses
  %.031 = phi i32 [ 0, %bb.a ], [ %.132, %bb.j ]  ; 2 uses
  %.029 = phi i32 [ 0, %bb.a ], [ %.130, %bb.j ]  ; 3 uses
  %.027 = phi i32 [ 0, %bb.a ], [ %.128, %bb.j ]  ; 2 uses
  %.025 = phi i32 [ 0, %bb.a ], [ %.126, %bb.j ]  ; 3 uses
  %.021 = phi i64 [ %2, %bb.a ], [ %.122, %bb.j ] ; 3 uses
  %.not = icmp eq i32 %.031, %.029
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %.029, 1
  %i.h = sext i32 %.029 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.h
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.a, i64 noundef %.021)
  %i.k = call i32 @SDL_CaseFoldUnicode(i32 noundef %i.j, ptr noundef nonnull %i.c)
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.f to i64
  %.neg = add i64 %.021, %i.n
  %i.o = sub i64 %.neg, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.f, %bb.c ], [ %i.l, %bb.d ]
  %.132 = phi i32 [ %.031, %bb.c ], [ %i.k, %bb.d ]
  %.130 = phi i32 [ %i.g, %bb.c ], [ 1, %bb.d ]
  %.024.in = phi ptr [ %i.i, %bb.c ], [ %i.c, %bb.d ]
  %.122 = phi i64 [ %.021, %bb.c ], [ %i.o, %bb.d ]
  %.024 = load i32, ptr %.024.in, align 4         ; 3 uses
  %.not35 = icmp eq i32 %.027, %.025
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %.025, 1
  %i.r = sext i32 %.025 to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.r
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = call fastcc i32 @StepUTF8(ptr noundef nonnull %i.b, i64 noundef %.033)
  %i.u = call i32 @SDL_CaseFoldUnicode(i32 noundef %i.t, ptr noundef nonnull %i.d)
  %i.v = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.e to i64
  %.neg36 = add i64 %.033, %i.x
  %i.y = sub i64 %.neg36, %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = phi ptr [ %i.e, %bb.f ], [ %i.v, %bb.g ]
  %.134 = phi i64 [ %.033, %bb.f ], [ %i.y, %bb.g ]
  %.128 = phi i32 [ %.027, %bb.f ], [ %i.u, %bb.g ]
  %.126 = phi i32 [ %i.q, %bb.f ], [ 1, %bb.g ]
  %.023.in = phi ptr [ %i.s, %bb.f ], [ %i.d, %bb.g ]
  %.023 = load i32, ptr %.023.in, align 4         ; 2 uses
  %i.aa = icmp ult i32 %.024, %.023
  br i1 %i.aa, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp ugt i32 %.024, %.023
  br i1 %i.ab, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i32 %.024, 0
  br i1 %i.ac, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.h, %bb.i, %bb.j
  %.2 = phi i32 [ 0, %bb.j ], [ -1, %bb.h ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @SDL_uitoa_REAL(i32 noundef %0, ptr nofree noundef returned captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %.not.i = icmp eq i32 %0, 0
  br i1 %.not.i, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.a = zext i32 %0 to i64
  %i.b = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %.015.i = phi ptr [ %1, %.preheader.i ], [ %i.f, %bb.b ] ; 2 uses
  %.01114.i = phi i64 [ %i.a, %.preheader.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.c = urem i64 %.01114.i, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr @ntoa_table, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  store i8 %i.e, ptr %.015.i, align 1
  %i.g = udiv i64 %.01114.i, %i.b
  %.not13.i = icmp ult i64 %.01114.i, %i.b
  br i1 %.not13.i, label %.loopexit.i, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.b, %bb.c
  %.1.i = phi ptr [ %i.h, %bb.c ], [ %i.f, %bb.b ]
  store i8 0, ptr %.1.i, align 1
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 3 uses
  %i.j = lshr i64 %i.i, 1                         ; 4 uses
  %.not13.i.i = icmp eq i64 %i.j, 0
  br i1 %.not13.i.i, label %SDL_ultoa_REAL.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit.i
  %i.k = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.preheader.i.i ]
  %.pn15.i.i.prol = phi ptr [ %.011.i.i.prol, %.lr.ph.i.i.prol ], [ %i.k, %.lr.ph.preheader.i.i ]
  %.01214.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.prol ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %.011.i.i.prol = getelementptr i8, ptr %.pn15.i.i.prol, i64 -1 ; 4 uses
  %i.l = add nsw i64 %.016.i.i.prol, -1           ; 2 uses
  %i.m = load i8, ptr %.01214.i.i.prol, align 1
  %i.n = load i8, ptr %.011.i.i.prol, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.01214.i.i.prol, i64 1 ; 2 uses
  store i8 %i.n, ptr %.01214.i.i.prol, align 1
  store i8 %i.m, ptr %.011.i.i.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !22

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.016.i.i.unr = phi i64 [ %i.j, %.lr.ph.preheader.i.i ], [ %i.l, %.lr.ph.i.i.prol ]
  %.pn15.i.i.unr = phi ptr [ %i.k, %.lr.ph.preheader.i.i ], [ %.011.i.i.prol, %.lr.ph.i.i.prol ]
  %.01214.i.i.unr = phi ptr [ %1, %.lr.ph.preheader.i.i ], [ %i.o, %.lr.ph.i.i.prol ]
  %i.p = icmp ult i64 %i.i, 8
  br i1 %i.p, label %SDL_ultoa_REAL.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.pn15.i.i = phi ptr [ %.011.i.i.3, %.lr.ph.i.i ], [ %.pn15.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01214.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.01214.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.011.i.i = getelementptr i8, ptr %.pn15.i.i, i64 -1 ; 2 uses
  %i.q = load i8, ptr %.01214.i.i, align 1
  %i.r = load i8, ptr %.011.i.i, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.01214.i.i, align 1
  store i8 %i.q, ptr %.011.i.i, align 1
  %.011.i.i.1 = getelementptr i8, ptr %.pn15.i.i, i64 -2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = load i8, ptr %.011.i.i.1, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 2 ; 2 uses
  store i8 %i.u, ptr %i.s, align 1
  store i8 %i.t, ptr %.011.i.i.1, align 1
  %.011.i.i.2 = getelementptr i8, ptr %.pn15.i.i, i64 -3 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = load i8, ptr %.011.i.i.2, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 3 ; 2 uses
  store i8 %i.x, ptr %i.v, align 1
  store i8 %i.w, ptr %.011.i.i.2, align 1
  %.011.i.i.3 = getelementptr i8, ptr %.pn15.i.i, i64 -4 ; 3 uses
  %i.z = add nsw i64 %.016.i.i, -4                ; 2 uses
  %i.aa = load i8, ptr %i.y, align 1
  %i.ab = load i8, ptr %.011.i.i.3, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 4
  store i8 %i.ab, ptr %i.y, align 1
  store i8 %i.aa, ptr %.011.i.i.3, align 1
  %.not.i.i.3 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.3, label %SDL_ultoa_REAL.exit, label %.lr.ph.i.i, !llvm.loop !0

SDL_ultoa_REAL.exit:                              ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.loopexit.i
  ret ptr %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @SDL_ultoa_REAL(i64 noundef %0, ptr nofree noundef returned captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.015 = phi ptr [ %1, %.preheader ], [ %i.e, %bb.b ] ; 2 uses
  %.01114 = phi i64 [ %0, %.preheader ], [ %i.f, %bb.b ] ; 3 uses
  %i.b = urem i64 %.01114, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr @ntoa_table, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 1 ; 2 uses
  store i8 %i.d, ptr %.015, align 1
  %i.f = udiv i64 %.01114, %i.a
  %.not13 = icmp ult i64 %.01114, %i.a
  br i1 %.not13, label %.loopexit, label %bb.b, !llvm.loop !1

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c
  %.1 = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  store i8 0, ptr %.1, align 1
  %i.h = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %.not13.i = icmp eq i64 %i.i, 0
  br i1 %.not13.i, label %SDL_strrev_REAL.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 2 uses
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.016.i.prol = phi i64 [ %i.k, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.preheader.i ]
  %.pn15.i.prol = phi ptr [ %.011.i.prol, %.lr.ph.i.prol ], [ %i.j, %.lr.ph.preheader.i ]
  %.01214.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %.011.i.prol = getelementptr i8, ptr %.pn15.i.prol, i64 -1 ; 4 uses
  %i.k = add nsw i64 %.016.i.prol, -1             ; 2 uses
  %i.l = load i8, ptr %.01214.i.prol, align 1
  %i.m = load i8, ptr %.011.i.prol, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 1 ; 2 uses
  store i8 %i.m, ptr %.01214.i.prol, align 1
  store i8 %i.l, ptr %.011.i.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !23

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.016.i.unr = phi i64 [ %i.i, %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i.prol ]
  %.pn15.i.unr = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %.011.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.h, 8
  br i1 %i.o, label %SDL_strrev_REAL.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.y, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %.pn15.i = phi ptr [ %.011.i.3, %.lr.ph.i ], [ %.pn15.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.011.i = getelementptr i8, ptr %.pn15.i, i64 -1 ; 2 uses
  %i.p = load i8, ptr %.01214.i, align 1
  %i.q = load i8, ptr %.011.i, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1 ; 2 uses
  store i8 %i.q, ptr %.01214.i, align 1
  store i8 %i.p, ptr %.011.i, align 1
  %.011.i.1 = getelementptr i8, ptr %.pn15.i, i64 -2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = load i8, ptr %.011.i.1, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 2 ; 2 uses
  store i8 %i.t, ptr %i.r, align 1
  store i8 %i.s, ptr %.011.i.1, align 1
  %.011.i.2 = getelementptr i8, ptr %.pn15.i, i64 -3 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = load i8, ptr %.011.i.2, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 3 ; 2 uses
  store i8 %i.w, ptr %i.u, align 1
  store i8 %i.v, ptr %.011.i.2, align 1
  %.011.i.3 = getelementptr i8, ptr %.pn15.i, i64 -4 ; 3 uses
  %i.y = add nsw i64 %.016.i, -4                  ; 2 uses
  %i.z = load i8, ptr %i.x, align 1
  %i.aa = load i8, ptr %.011.i.3, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  store i8 %i.aa, ptr %i.x, align 1
  store i8 %i.z, ptr %.011.i.3, align 1
  %.not.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.3, label %SDL_strrev_REAL.exit, label %.lr.ph.i, !llvm.loop !0

SDL_strrev_REAL.exit:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.loopexit
  ret ptr %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @SDL_itoa_REAL(i32 noundef %0, ptr nofree noundef returned captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  store i8 45, ptr %1, align 1
  %i.d = sub nsw i64 0, %i.a
  %i.e = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.i
  %.015.i.i = phi ptr [ %i.c, %.preheader.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %.01114.i.i = phi i64 [ %i.d, %.preheader.i.i ], [ %i.j, %bb.b ] ; 3 uses
  %i.f = urem i64 %.01114.i.i, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr @ntoa_table, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1 ; 2 uses
  store i8 %i.h, ptr %.015.i.i, align 1
  %i.j = udiv i64 %.01114.i.i, %i.e
  %.not13.i.i = icmp ult i64 %.01114.i.i, %i.e
  br i1 %.not13.i.i, label %.loopexit.i.i, label %bb.b, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.b
  store i8 0, ptr %i.i, align 1
  %i.k = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #24 ; 3 uses
  %i.l = lshr i64 %i.k, 1                         ; 4 uses
  %.not13.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not13.i.i.i, label %SDL_ltoa_REAL.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.loopexit.i.i
  %i.m = getelementptr i8, ptr %i.c, i64 %i.k     ; 2 uses
  %xtraiter14 = and i64 %i.l, 3                   ; 2 uses
  %lcmp.mod15.not = icmp eq i64 %xtraiter14, 0
  br i1 %lcmp.mod15.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.prol
  %.016.i.i.i.prol = phi i64 [ %i.n, %.lr.ph.i.i.i.prol ], [ %i.l, %.lr.ph.preheader.i.i.i ]
  %.pn15.i.i.i.prol = phi ptr [ %.011.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.m, %.lr.ph.preheader.i.i.i ]
  %.01214.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.prol ], [ %i.c, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %prol.iter16 = phi i64 [ %prol.iter16.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %.011.i.i.i.prol = getelementptr i8, ptr %.pn15.i.i.i.prol, i64 -1 ; 4 uses
  %i.n = add nsw i64 %.016.i.i.i.prol, -1         ; 2 uses
  %i.o = load i8, ptr %.01214.i.i.i.prol, align 1
  %i.p = load i8, ptr %.011.i.i.i.prol, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.p, ptr %.01214.i.i.i.prol, align 1
  store i8 %i.o, ptr %.011.i.i.i.prol, align 1
  %prol.iter16.next = add i64 %prol.iter16, 1     ; 2 uses
  %prol.iter16.cmp.not = icmp eq i64 %prol.iter16.next, %xtraiter14
  br i1 %prol.iter16.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !24

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %.016.i.i.i.unr = phi i64 [ %i.l, %.lr.ph.preheader.i.i.i ], [ %i.n, %.lr.ph.i.i.i.prol ]
  %.pn15.i.i.i.unr = phi ptr [ %i.m, %.lr.ph.preheader.i.i.i ], [ %.011.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.01214.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.r = icmp ult i64 %i.k, 8
  br i1 %i.r, label %SDL_ltoa_REAL.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.016.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.pn15.i.i.i = phi ptr [ %.011.i.i.i.3, %.lr.ph.i.i.i ], [ %.pn15.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.01214.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.011.i.i.i = getelementptr i8, ptr %.pn15.i.i.i, i64 -1 ; 2 uses
  %i.s = load i8, ptr %.01214.i.i.i, align 1
  %i.t = load i8, ptr %.011.i.i.i, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 1 ; 2 uses
  store i8 %i.t, ptr %.01214.i.i.i, align 1
  store i8 %i.s, ptr %.011.i.i.i, align 1
  %.011.i.i.i.1 = getelementptr i8, ptr %.pn15.i.i.i, i64 -2 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = load i8, ptr %.011.i.i.i.1, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 2 ; 2 uses
  store i8 %i.w, ptr %i.u, align 1
  store i8 %i.v, ptr %.011.i.i.i.1, align 1
  %.011.i.i.i.2 = getelementptr i8, ptr %.pn15.i.i.i, i64 -3 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = load i8, ptr %.011.i.i.i.2, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 3 ; 2 uses
  store i8 %i.z, ptr %i.x, align 1
  store i8 %i.y, ptr %.011.i.i.i.2, align 1
  %.011.i.i.i.3 = getelementptr i8, ptr %.pn15.i.i.i, i64 -4 ; 3 uses
  %i.ab = add nsw i64 %.016.i.i.i, -4             ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = load i8, ptr %.011.i.i.i.3, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 4
  store i8 %i.ad, ptr %i.aa, align 1
  store i8 %i.ac, ptr %.011.i.i.i.3, align 1
  %.not.i.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.3, label %SDL_ltoa_REAL.exit, label %.lr.ph.i.i.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %.not.i9.i = icmp eq i32 %0, 0
  br i1 %.not.i9.i, label %bb.e, label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %bb.c
  %i.af = sext i32 %2 to i64                      ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i10.i
  %.015.i11.i = phi ptr [ %1, %.preheader.i10.i ], [ %i.aj, %bb.d ] ; 2 uses
  %.01114.i12.i = phi i64 [ %i.a, %.preheader.i10.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ag = urem i64 %.01114.i12.i, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr @ntoa_table, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i11.i, i64 1 ; 2 uses
  store i8 %i.ai, ptr %.015.i11.i, align 1
  %i.ak = udiv i64 %.01114.i12.i, %i.af
  %.not13.i13.i = icmp ult i64 %.01114.i12.i, %i.af
  br i1 %.not13.i13.i, label %.loopexit.i14.i, label %bb.d, !llvm.loop !1

bb.e:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1
  br label %.loopexit.i14.i

.loopexit.i14.i:                                  ; preds = %bb.d, %bb.e
  %.1.i15.i = phi ptr [ %i.al, %bb.e ], [ %i.aj, %bb.d ]
  store i8 0, ptr %.1.i15.i, align 1
  %i.am = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 3 uses
  %i.an = lshr i64 %i.am, 1                       ; 4 uses
  %.not13.i.i16.i = icmp eq i64 %i.an, 0
  br i1 %.not13.i.i16.i, label %SDL_ltoa_REAL.exit, label %.lr.ph.preheader.i.i17.i

.lr.ph.preheader.i.i17.i:                         ; preds = %.loopexit.i14.i
  %i.ao = getelementptr i8, ptr %1, i64 %i.am     ; 2 uses
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i18.i.prol.loopexit, label %.lr.ph.i.i18.i.prol

.lr.ph.i.i18.i.prol:                              ; preds = %.lr.ph.preheader.i.i17.i, %.lr.ph.i.i18.i.prol
  %.016.i.i19.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i18.i.prol ], [ %i.an, %.lr.ph.preheader.i.i17.i ]
  %.pn15.i.i20.i.prol = phi ptr [ %.011.i.i22.i.prol, %.lr.ph.i.i18.i.prol ], [ %i.ao, %.lr.ph.preheader.i.i17.i ]
  %.01214.i.i21.i.prol = phi ptr [ %i.as, %.lr.ph.i.i18.i.prol ], [ %1, %.lr.ph.preheader.i.i17.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i18.i.prol ], [ 0, %.lr.ph.preheader.i.i17.i ]
  %.011.i.i22.i.prol = getelementptr i8, ptr %.pn15.i.i20.i.prol, i64 -1 ; 4 uses
  %i.ap = add nsw i64 %.016.i.i19.i.prol, -1      ; 2 uses
  %i.aq = load i8, ptr %.01214.i.i21.i.prol, align 1
  %i.ar = load i8, ptr %.011.i.i22.i.prol, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i21.i.prol, i64 1 ; 2 uses
  store i8 %i.ar, ptr %.01214.i.i21.i.prol, align 1
  store i8 %i.aq, ptr %.011.i.i22.i.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i18.i.prol.loopexit, label %.lr.ph.i.i18.i.prol, !llvm.loop !25

.lr.ph.i.i18.i.prol.loopexit:                     ; preds = %.lr.ph.i.i18.i.prol, %.lr.ph.preheader.i.i17.i
  %.016.i.i19.i.unr = phi i64 [ %i.an, %.lr.ph.preheader.i.i17.i ], [ %i.ap, %.lr.ph.i.i18.i.prol ]
  %.pn15.i.i20.i.unr = phi ptr [ %i.ao, %.lr.ph.preheader.i.i17.i ], [ %.011.i.i22.i.prol, %.lr.ph.i.i18.i.prol ]
  %.01214.i.i21.i.unr = phi ptr [ %1, %.lr.ph.preheader.i.i17.i ], [ %i.as, %.lr.ph.i.i18.i.prol ]
  %i.at = icmp ult i64 %i.am, 8
  br i1 %i.at, label %SDL_ltoa_REAL.exit, label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %.lr.ph.i.i18.i.prol.loopexit, %.lr.ph.i.i18.i
  %.016.i.i19.i = phi i64 [ %i.bd, %.lr.ph.i.i18.i ], [ %.016.i.i19.i.unr, %.lr.ph.i.i18.i.prol.loopexit ]
  %.pn15.i.i20.i = phi ptr [ %.011.i.i22.i.3, %.lr.ph.i.i18.i ], [ %.pn15.i.i20.i.unr, %.lr.ph.i.i18.i.prol.loopexit ] ; 4 uses
  %.01214.i.i21.i = phi ptr [ %i.bg, %.lr.ph.i.i18.i ], [ %.01214.i.i21.i.unr, %.lr.ph.i.i18.i.prol.loopexit ] ; 6 uses
  %.011.i.i22.i = getelementptr i8, ptr %.pn15.i.i20.i, i64 -1 ; 2 uses
  %i.au = load i8, ptr %.01214.i.i21.i, align 1
  %i.av = load i8, ptr %.011.i.i22.i, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i21.i, i64 1 ; 2 uses
  store i8 %i.av, ptr %.01214.i.i21.i, align 1
  store i8 %i.au, ptr %.011.i.i22.i, align 1
  %.011.i.i22.i.1 = getelementptr i8, ptr %.pn15.i.i20.i, i64 -2 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = load i8, ptr %.011.i.i22.i.1, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.01214.i.i21.i, i64 2 ; 2 uses
  store i8 %i.ay, ptr %i.aw, align 1
  store i8 %i.ax, ptr %.011.i.i22.i.1, align 1
  %.011.i.i22.i.2 = getelementptr i8, ptr %.pn15.i.i20.i, i64 -3 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = load i8, ptr %.011.i.i22.i.2, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i21.i, i64 3 ; 2 uses
  store i8 %i.bb, ptr %i.az, align 1
  store i8 %i.ba, ptr %.011.i.i22.i.2, align 1
  %.011.i.i22.i.3 = getelementptr i8, ptr %.pn15.i.i20.i, i64 -4 ; 3 uses
  %i.bd = add nsw i64 %.016.i.i19.i, -4           ; 2 uses
  %i.be = load i8, ptr %i.bc, align 1
  %i.bf = load i8, ptr %.011.i.i22.i.3, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.01214.i.i21.i, i64 4
  store i8 %i.bf, ptr %i.bc, align 1
  store i8 %i.be, ptr %.011.i.i22.i.3, align 1
  %.not.i.i23.i.3 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i23.i.3, label %SDL_ltoa_REAL.exit, label %.lr.ph.i.i18.i, !llvm.loop !0

SDL_ltoa_REAL.exit:                               ; preds = %.lr.ph.i.i18.i.prol.loopexit, %.lr.ph.i.i18.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.loopexit.i.i, %.loopexit.i14.i
  ret ptr %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @SDL_ltoa_REAL(i64 noundef %0, ptr nofree noundef returned captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  store i8 45, ptr %1, align 1
  %i.c = sub nsw i64 0, %0
  %i.d = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %.015.i = phi ptr [ %i.b, %.preheader.i ], [ %i.h, %bb.b ] ; 2 uses
  %.01114.i = phi i64 [ %i.c, %.preheader.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.e = urem i64 %.01114.i, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr @ntoa_table, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  store i8 %i.g, ptr %.015.i, align 1
  %i.i = udiv i64 %.01114.i, %i.d
  %.not13.i = icmp ult i64 %.01114.i, %i.d
  br i1 %.not13.i, label %.loopexit.i, label %bb.b, !llvm.loop !1

.loopexit.i:                                      ; preds = %bb.b
  store i8 0, ptr %i.h, align 1
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #24 ; 3 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %.not13.i.i = icmp eq i64 %i.k, 0
  br i1 %.not13.i.i, label %SDL_ultoa_REAL.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit.i
  %i.l = getelementptr i8, ptr %i.b, i64 %i.j     ; 2 uses
  %xtraiter37 = and i64 %i.k, 3                   ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.k, %.lr.ph.preheader.i.i ]
  %.pn15.i.i.prol = phi ptr [ %.011.i.i.prol, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.preheader.i.i ]
  %.01214.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.b, %.lr.ph.preheader.i.i ] ; 3 uses
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %.011.i.i.prol = getelementptr i8, ptr %.pn15.i.i.prol, i64 -1 ; 4 uses
  %i.m = add nsw i64 %.016.i.i.prol, -1           ; 2 uses
  %i.n = load i8, ptr %.01214.i.i.prol, align 1
  %i.o = load i8, ptr %.011.i.i.prol, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.01214.i.i.prol, i64 1 ; 2 uses
  store i8 %i.o, ptr %.01214.i.i.prol, align 1
  store i8 %i.n, ptr %.011.i.i.prol, align 1
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !26

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.016.i.i.unr = phi i64 [ %i.k, %.lr.ph.preheader.i.i ], [ %i.m, %.lr.ph.i.i.prol ]
  %.pn15.i.i.unr = phi ptr [ %i.l, %.lr.ph.preheader.i.i ], [ %.011.i.i.prol, %.lr.ph.i.i.prol ]
  %.01214.i.i.unr = phi ptr [ %i.b, %.lr.ph.preheader.i.i ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.j, 8
  br i1 %i.q, label %SDL_ultoa_REAL.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.pn15.i.i = phi ptr [ %.011.i.i.3, %.lr.ph.i.i ], [ %.pn15.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01214.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.01214.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.011.i.i = getelementptr i8, ptr %.pn15.i.i, i64 -1 ; 2 uses
  %i.r = load i8, ptr %.01214.i.i, align 1
  %i.s = load i8, ptr %.011.i.i, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 1 ; 2 uses
  store i8 %i.s, ptr %.01214.i.i, align 1
  store i8 %i.r, ptr %.011.i.i, align 1
  %.011.i.i.1 = getelementptr i8, ptr %.pn15.i.i, i64 -2 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = load i8, ptr %.011.i.i.1, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 2 ; 2 uses
  store i8 %i.v, ptr %i.t, align 1
  store i8 %i.u, ptr %.011.i.i.1, align 1
  %.011.i.i.2 = getelementptr i8, ptr %.pn15.i.i, i64 -3 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = load i8, ptr %.011.i.i.2, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 3 ; 2 uses
  store i8 %i.y, ptr %i.w, align 1
  store i8 %i.x, ptr %.011.i.i.2, align 1
  %.011.i.i.3 = getelementptr i8, ptr %.pn15.i.i, i64 -4 ; 3 uses
  %i.aa = add nsw i64 %.016.i.i, -4               ; 2 uses
  %i.ab = load i8, ptr %i.z, align 1
  %i.ac = load i8, ptr %.011.i.i.3, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 4
  store i8 %i.ac, ptr %i.z, align 1
  store i8 %i.ab, ptr %.011.i.i.3, align 1
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %SDL_ultoa_REAL.exit, label %.lr.ph.i.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %.not.i9 = icmp eq i64 %0, 0
  br i1 %.not.i9, label %bb.e, label %.preheader.i10

.preheader.i10:                                   ; preds = %bb.c
  %i.ae = sext i32 %2 to i64                      ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i10
  %.015.i11 = phi ptr [ %1, %.preheader.i10 ], [ %i.ai, %bb.d ] ; 2 uses
  %.01114.i12 = phi i64 [ %0, %.preheader.i10 ], [ %i.aj, %bb.d ] ; 3 uses
  %i.af = urem i64 %.01114.i12, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr @ntoa_table, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i11, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.015.i11, align 1
  %i.aj = udiv i64 %.01114.i12, %i.ae
  %.not13.i13 = icmp ult i64 %.01114.i12, %i.ae
  br i1 %.not13.i13, label %.loopexit.i14, label %bb.d, !llvm.loop !1

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1
  br label %.loopexit.i14

.loopexit.i14:                                    ; preds = %bb.d, %bb.e
  %.1.i15 = phi ptr [ %i.ak, %bb.e ], [ %i.ai, %bb.d ]
  store i8 0, ptr %.1.i15, align 1
  %i.al = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 3 uses
  %i.am = lshr i64 %i.al, 1                       ; 4 uses
  %.not13.i.i16 = icmp eq i64 %i.am, 0
  br i1 %.not13.i.i16, label %SDL_ultoa_REAL.exit, label %.lr.ph.preheader.i.i17

.lr.ph.preheader.i.i17:                           ; preds = %.loopexit.i14
  %i.an = getelementptr i8, ptr %1, i64 %i.al     ; 2 uses
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol

.lr.ph.i.i18.prol:                                ; preds = %.lr.ph.preheader.i.i17, %.lr.ph.i.i18.prol
  %.016.i.i19.prol = phi i64 [ %i.ao, %.lr.ph.i.i18.prol ], [ %i.am, %.lr.ph.preheader.i.i17 ]
  %.pn15.i.i20.prol = phi ptr [ %.011.i.i22.prol, %.lr.ph.i.i18.prol ], [ %i.an, %.lr.ph.preheader.i.i17 ]
  %.01214.i.i21.prol = phi ptr [ %i.ar, %.lr.ph.i.i18.prol ], [ %1, %.lr.ph.preheader.i.i17 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i18.prol ], [ 0, %.lr.ph.preheader.i.i17 ]
  %.011.i.i22.prol = getelementptr i8, ptr %.pn15.i.i20.prol, i64 -1 ; 4 uses
  %i.ao = add nsw i64 %.016.i.i19.prol, -1        ; 2 uses
  %i.ap = load i8, ptr %.01214.i.i21.prol, align 1
  %i.aq = load i8, ptr %.011.i.i22.prol, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i.i21.prol, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.01214.i.i21.prol, align 1
  store i8 %i.ap, ptr %.011.i.i22.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol, !llvm.loop !27

.lr.ph.i.i18.prol.loopexit:                       ; preds = %.lr.ph.i.i18.prol, %.lr.ph.preheader.i.i17
  %.016.i.i19.unr = phi i64 [ %i.am, %.lr.ph.preheader.i.i17 ], [ %i.ao, %.lr.ph.i.i18.prol ]
  %.pn15.i.i20.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i17 ], [ %.011.i.i22.prol, %.lr.ph.i.i18.prol ]
  %.01214.i.i21.unr = phi ptr [ %1, %.lr.ph.preheader.i.i17 ], [ %i.ar, %.lr.ph.i.i18.prol ]
  %i.as = icmp ult i64 %i.al, 8
  br i1 %i.as, label %SDL_ultoa_REAL.exit, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18
  %.016.i.i19 = phi i64 [ %i.bc, %.lr.ph.i.i18 ], [ %.016.i.i19.unr, %.lr.ph.i.i18.prol.loopexit ]
  %.pn15.i.i20 = phi ptr [ %.011.i.i22.3, %.lr.ph.i.i18 ], [ %.pn15.i.i20.unr, %.lr.ph.i.i18.prol.loopexit ] ; 4 uses
  %.01214.i.i21 = phi ptr [ %i.bf, %.lr.ph.i.i18 ], [ %.01214.i.i21.unr, %.lr.ph.i.i18.prol.loopexit ] ; 6 uses
  %.011.i.i22 = getelementptr i8, ptr %.pn15.i.i20, i64 -1 ; 2 uses
  %i.at = load i8, ptr %.01214.i.i21, align 1
  %i.au = load i8, ptr %.011.i.i22, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i.i21, i64 1 ; 2 uses
  store i8 %i.au, ptr %.01214.i.i21, align 1
  store i8 %i.at, ptr %.011.i.i22, align 1
  %.011.i.i22.1 = getelementptr i8, ptr %.pn15.i.i20, i64 -2 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = load i8, ptr %.011.i.i22.1, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i21, i64 2 ; 2 uses
  store i8 %i.ax, ptr %i.av, align 1
  store i8 %i.aw, ptr %.011.i.i22.1, align 1
  %.011.i.i22.2 = getelementptr i8, ptr %.pn15.i.i20, i64 -3 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = load i8, ptr %.011.i.i22.2, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.01214.i.i21, i64 3 ; 2 uses
  store i8 %i.ba, ptr %i.ay, align 1
  store i8 %i.az, ptr %.011.i.i22.2, align 1
  %.011.i.i22.3 = getelementptr i8, ptr %.pn15.i.i20, i64 -4 ; 3 uses
  %i.bc = add nsw i64 %.016.i.i19, -4             ; 2 uses
  %i.bd = load i8, ptr %i.bb, align 1
  %i.be = load i8, ptr %.011.i.i22.3, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i21, i64 4
  store i8 %i.be, ptr %i.bb, align 1
  store i8 %i.bd, ptr %.011.i.i22.3, align 1
  %.not.i.i23.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i23.3, label %SDL_ultoa_REAL.exit, label %.lr.ph.i.i18, !llvm.loop !0

SDL_ultoa_REAL.exit:                              ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.loopexit.i14, %.loopexit.i
  ret ptr %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @SDL_lltoa_REAL(i64 noundef %0, ptr nofree noundef returned captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  store i8 45, ptr %1, align 1
  %i.c = sub nsw i64 0, %0
  %i.d = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i
  %.015.i = phi ptr [ %i.b, %.preheader.i ], [ %i.h, %bb.b ] ; 2 uses
  %.01114.i = phi i64 [ %i.c, %.preheader.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.e = urem i64 %.01114.i, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr @ntoa_table, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  store i8 %i.g, ptr %.015.i, align 1
  %i.i = udiv i64 %.01114.i, %i.d
  %.not13.i = icmp ult i64 %.01114.i, %i.d
  br i1 %.not13.i, label %.loopexit.i, label %bb.b, !llvm.loop !2

.loopexit.i:                                      ; preds = %bb.b
  store i8 0, ptr %i.h, align 1
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #24 ; 3 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %.not13.i.i = icmp eq i64 %i.k, 0
  br i1 %.not13.i.i, label %SDL_ulltoa_REAL.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.loopexit.i
  %i.l = getelementptr i8, ptr %i.b, i64 %i.j     ; 2 uses
  %xtraiter37 = and i64 %i.k, 3                   ; 2 uses
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %.016.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.k, %.lr.ph.preheader.i.i ]
  %.pn15.i.i.prol = phi ptr [ %.011.i.i.prol, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.preheader.i.i ]
  %.01214.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.b, %.lr.ph.preheader.i.i ] ; 3 uses
  %prol.iter39 = phi i64 [ %prol.iter39.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %.011.i.i.prol = getelementptr i8, ptr %.pn15.i.i.prol, i64 -1 ; 4 uses
  %i.m = add nsw i64 %.016.i.i.prol, -1           ; 2 uses
  %i.n = load i8, ptr %.01214.i.i.prol, align 1
  %i.o = load i8, ptr %.011.i.i.prol, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.01214.i.i.prol, i64 1 ; 2 uses
  store i8 %i.o, ptr %.01214.i.i.prol, align 1
  store i8 %i.n, ptr %.011.i.i.prol, align 1
  %prol.iter39.next = add i64 %prol.iter39, 1     ; 2 uses
  %prol.iter39.cmp.not = icmp eq i64 %prol.iter39.next, %xtraiter37
  br i1 %prol.iter39.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !28

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.016.i.i.unr = phi i64 [ %i.k, %.lr.ph.preheader.i.i ], [ %i.m, %.lr.ph.i.i.prol ]
  %.pn15.i.i.unr = phi ptr [ %i.l, %.lr.ph.preheader.i.i ], [ %.011.i.i.prol, %.lr.ph.i.i.prol ]
  %.01214.i.i.unr = phi ptr [ %i.b, %.lr.ph.preheader.i.i ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.j, 8
  br i1 %i.q, label %SDL_ulltoa_REAL.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.016.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.pn15.i.i = phi ptr [ %.011.i.i.3, %.lr.ph.i.i ], [ %.pn15.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.01214.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.01214.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.011.i.i = getelementptr i8, ptr %.pn15.i.i, i64 -1 ; 2 uses
  %i.r = load i8, ptr %.01214.i.i, align 1
  %i.s = load i8, ptr %.011.i.i, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 1 ; 2 uses
  store i8 %i.s, ptr %.01214.i.i, align 1
  store i8 %i.r, ptr %.011.i.i, align 1
  %.011.i.i.1 = getelementptr i8, ptr %.pn15.i.i, i64 -2 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = load i8, ptr %.011.i.i.1, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 2 ; 2 uses
  store i8 %i.v, ptr %i.t, align 1
  store i8 %i.u, ptr %.011.i.i.1, align 1
  %.011.i.i.2 = getelementptr i8, ptr %.pn15.i.i, i64 -3 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = load i8, ptr %.011.i.i.2, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 3 ; 2 uses
  store i8 %i.y, ptr %i.w, align 1
  store i8 %i.x, ptr %.011.i.i.2, align 1
  %.011.i.i.3 = getelementptr i8, ptr %.pn15.i.i, i64 -4 ; 3 uses
  %i.aa = add nsw i64 %.016.i.i, -4               ; 2 uses
  %i.ab = load i8, ptr %i.z, align 1
  %i.ac = load i8, ptr %.011.i.i.3, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 4
  store i8 %i.ac, ptr %i.z, align 1
  store i8 %i.ab, ptr %.011.i.i.3, align 1
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %SDL_ulltoa_REAL.exit, label %.lr.ph.i.i, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %.not.i9 = icmp eq i64 %0, 0
  br i1 %.not.i9, label %bb.e, label %.preheader.i10

.preheader.i10:                                   ; preds = %bb.c
  %i.ae = sext i32 %2 to i64                      ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i10
  %.015.i11 = phi ptr [ %1, %.preheader.i10 ], [ %i.ai, %bb.d ] ; 2 uses
  %.01114.i12 = phi i64 [ %0, %.preheader.i10 ], [ %i.aj, %bb.d ] ; 3 uses
  %i.af = urem i64 %.01114.i12, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr @ntoa_table, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i11, i64 1 ; 2 uses
  store i8 %i.ah, ptr %.015.i11, align 1
  %i.aj = udiv i64 %.01114.i12, %i.ae
  %.not13.i13 = icmp ult i64 %.01114.i12, %i.ae
  br i1 %.not13.i13, label %.loopexit.i14, label %bb.d, !llvm.loop !2

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1
  br label %.loopexit.i14

.loopexit.i14:                                    ; preds = %bb.d, %bb.e
  %.1.i15 = phi ptr [ %i.ak, %bb.e ], [ %i.ai, %bb.d ]
  store i8 0, ptr %.1.i15, align 1
  %i.al = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 3 uses
  %i.am = lshr i64 %i.al, 1                       ; 4 uses
  %.not13.i.i16 = icmp eq i64 %i.am, 0
  br i1 %.not13.i.i16, label %SDL_ulltoa_REAL.exit, label %.lr.ph.preheader.i.i17

.lr.ph.preheader.i.i17:                           ; preds = %.loopexit.i14
  %i.an = getelementptr i8, ptr %1, i64 %i.al     ; 2 uses
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol

.lr.ph.i.i18.prol:                                ; preds = %.lr.ph.preheader.i.i17, %.lr.ph.i.i18.prol
  %.016.i.i19.prol = phi i64 [ %i.ao, %.lr.ph.i.i18.prol ], [ %i.am, %.lr.ph.preheader.i.i17 ]
  %.pn15.i.i20.prol = phi ptr [ %.011.i.i22.prol, %.lr.ph.i.i18.prol ], [ %i.an, %.lr.ph.preheader.i.i17 ]
  %.01214.i.i21.prol = phi ptr [ %i.ar, %.lr.ph.i.i18.prol ], [ %1, %.lr.ph.preheader.i.i17 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i18.prol ], [ 0, %.lr.ph.preheader.i.i17 ]
  %.011.i.i22.prol = getelementptr i8, ptr %.pn15.i.i20.prol, i64 -1 ; 4 uses
  %i.ao = add nsw i64 %.016.i.i19.prol, -1        ; 2 uses
  %i.ap = load i8, ptr %.01214.i.i21.prol, align 1
  %i.aq = load i8, ptr %.011.i.i22.prol, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i.i21.prol, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.01214.i.i21.prol, align 1
  store i8 %i.ap, ptr %.011.i.i22.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol, !llvm.loop !29

.lr.ph.i.i18.prol.loopexit:                       ; preds = %.lr.ph.i.i18.prol, %.lr.ph.preheader.i.i17
  %.016.i.i19.unr = phi i64 [ %i.am, %.lr.ph.preheader.i.i17 ], [ %i.ao, %.lr.ph.i.i18.prol ]
  %.pn15.i.i20.unr = phi ptr [ %i.an, %.lr.ph.preheader.i.i17 ], [ %.011.i.i22.prol, %.lr.ph.i.i18.prol ]
  %.01214.i.i21.unr = phi ptr [ %1, %.lr.ph.preheader.i.i17 ], [ %i.ar, %.lr.ph.i.i18.prol ]
  %i.as = icmp ult i64 %i.al, 8
  br i1 %i.as, label %SDL_ulltoa_REAL.exit, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18
  %.016.i.i19 = phi i64 [ %i.bc, %.lr.ph.i.i18 ], [ %.016.i.i19.unr, %.lr.ph.i.i18.prol.loopexit ]
  %.pn15.i.i20 = phi ptr [ %.011.i.i22.3, %.lr.ph.i.i18 ], [ %.pn15.i.i20.unr, %.lr.ph.i.i18.prol.loopexit ] ; 4 uses
  %.01214.i.i21 = phi ptr [ %i.bf, %.lr.ph.i.i18 ], [ %.01214.i.i21.unr, %.lr.ph.i.i18.prol.loopexit ] ; 6 uses
  %.011.i.i22 = getelementptr i8, ptr %.pn15.i.i20, i64 -1 ; 2 uses
  %i.at = load i8, ptr %.01214.i.i21, align 1
  %i.au = load i8, ptr %.011.i.i22, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i.i21, i64 1 ; 2 uses
  store i8 %i.au, ptr %.01214.i.i21, align 1
  store i8 %i.at, ptr %.011.i.i22, align 1
  %.011.i.i22.1 = getelementptr i8, ptr %.pn15.i.i20, i64 -2 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = load i8, ptr %.011.i.i22.1, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i21, i64 2 ; 2 uses
  store i8 %i.ax, ptr %i.av, align 1
  store i8 %i.aw, ptr %.011.i.i22.1, align 1
  %.011.i.i22.2 = getelementptr i8, ptr %.pn15.i.i20, i64 -3 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = load i8, ptr %.011.i.i22.2, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.01214.i.i21, i64 3 ; 2 uses
  store i8 %i.ba, ptr %i.ay, align 1
  store i8 %i.az, ptr %.011.i.i22.2, align 1
  %.011.i.i22.3 = getelementptr i8, ptr %.pn15.i.i20, i64 -4 ; 3 uses
  %i.bc = add nsw i64 %.016.i.i19, -4             ; 2 uses
  %i.bd = load i8, ptr %i.bb, align 1
  %i.be = load i8, ptr %.011.i.i22.3, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.01214.i.i21, i64 4
  store i8 %i.be, ptr %i.bb, align 1
  store i8 %i.bd, ptr %.011.i.i22.3, align 1
  %.not.i.i23.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i23.3, label %SDL_ulltoa_REAL.exit, label %.lr.ph.i.i18, !llvm.loop !0

SDL_ulltoa_REAL.exit:                             ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.loopexit.i14, %.loopexit.i
  ret ptr %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef ptr @SDL_ulltoa_REAL(i64 noundef %0, ptr nofree noundef returned captures(ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = sext i32 %2 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.015 = phi ptr [ %1, %.preheader ], [ %i.e, %bb.b ] ; 2 uses
  %.01114 = phi i64 [ %0, %.preheader ], [ %i.f, %bb.b ] ; 3 uses
  %i.b = urem i64 %.01114, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr @ntoa_table, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 1 ; 2 uses
  store i8 %i.d, ptr %.015, align 1
  %i.f = udiv i64 %.01114, %i.a
  %.not13 = icmp ult i64 %.01114, %i.a
  br i1 %.not13, label %.loopexit, label %bb.b, !llvm.loop !2

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 48, ptr %1, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c
  %.1 = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ]
  store i8 0, ptr %.1, align 1
  %i.h = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %.not13.i = icmp eq i64 %i.i, 0
  br i1 %.not13.i, label %SDL_strrev_REAL.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.j = getelementptr i8, ptr %1, i64 %i.h       ; 2 uses
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %.016.i.prol = phi i64 [ %i.k, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.preheader.i ]
  %.pn15.i.prol = phi ptr [ %.011.i.prol, %.lr.ph.i.prol ], [ %i.j, %.lr.ph.preheader.i ]
  %.01214.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %.011.i.prol = getelementptr i8, ptr %.pn15.i.prol, i64 -1 ; 4 uses
  %i.k = add nsw i64 %.016.i.prol, -1             ; 2 uses
  %i.l = load i8, ptr %.01214.i.prol, align 1
  %i.m = load i8, ptr %.011.i.prol, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.01214.i.prol, i64 1 ; 2 uses
  store i8 %i.m, ptr %.01214.i.prol, align 1
  store i8 %i.l, ptr %.011.i.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !30

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.016.i.unr = phi i64 [ %i.i, %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i.prol ]
  %.pn15.i.unr = phi ptr [ %i.j, %.lr.ph.preheader.i ], [ %.011.i.prol, %.lr.ph.i.prol ]
  %.01214.i.unr = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %i.h, 8
  br i1 %i.o, label %SDL_strrev_REAL.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.y, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %.pn15.i = phi ptr [ %.011.i.3, %.lr.ph.i ], [ %.pn15.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.01214.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.011.i = getelementptr i8, ptr %.pn15.i, i64 -1 ; 2 uses
  %i.p = load i8, ptr %.01214.i, align 1
  %i.q = load i8, ptr %.011.i, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.01214.i, i64 1 ; 2 uses
  store i8 %i.q, ptr %.01214.i, align 1
  store i8 %i.p, ptr %.011.i, align 1
  %.011.i.1 = getelementptr i8, ptr %.pn15.i, i64 -2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = load i8, ptr %.011.i.1, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i, i64 2 ; 2 uses
  store i8 %i.t, ptr %i.r, align 1
  store i8 %i.s, ptr %.011.i.1, align 1
  %.011.i.2 = getelementptr i8, ptr %.pn15.i, i64 -3 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = load i8, ptr %.011.i.2, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i, i64 3 ; 2 uses
  store i8 %i.w, ptr %i.u, align 1
  store i8 %i.v, ptr %.011.i.2, align 1
  %.011.i.3 = getelementptr i8, ptr %.pn15.i, i64 -4 ; 3 uses
  %i.y = add nsw i64 %.016.i, -4                  ; 2 uses
  %i.z = load i8, ptr %i.x, align 1
  %i.aa = load i8, ptr %.011.i.3, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  store i8 %i.aa, ptr %i.x, align 1
  store i8 %i.z, ptr %.011.i.3, align 1
  %.not.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.3, label %SDL_strrev_REAL.exit, label %.lr.ph.i, !llvm.loop !0

SDL_strrev_REAL.exit:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.loopexit
  ret ptr %1
}

; Function Attrs: nofree nounwind memory(read) uwtable
define hidden i32 @SDL_atoi_REAL(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @__isoc23_strtol(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10) #23, !inline_history !31
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define hidden double @SDL_atof_REAL(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call double @strtod(ptr noundef nonnull captures(none) %0, ptr noundef null) #23, !inline_history !32
  ret double %i.a
}

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_strtol_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @__isoc23_strtol(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_strtoul_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @__isoc23_strtoul(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_strtoll_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @__isoc23_strtoll(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden i64 @SDL_strtoull_REAL(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @__isoc23_strtoull(ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  ret i64 %i.a
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define hidden double @SDL_strtod_REAL(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = tail call double @strtod(ptr noundef %0, ptr noundef %1) #23
  ret double %i.a
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @SDL_strcmp_REAL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #24
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_sscanf_REAL(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @__isoc23_vsscanf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #23
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #20

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_vsscanf_REAL(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @__isoc23_vsscanf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #20

; Function Attrs: nounwind
declare i32 @__isoc23_vsscanf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define hidden noundef i32 @SDL_snprintf_REAL(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ...) local_unnamed_addr #13 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.va_start.p0(ptr nonnull %3)
  %.not.i = icmp eq ptr %2, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str, ptr %2
  %i.a = call noundef i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %3) #23
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %i.a
}

; Function Attrs: nofree nounwind uwtable
define hidden noundef i32 @SDL_vsnprintf_REAL(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #13 {
bb.a:
  %.not = icmp eq ptr %2, null
  %spec.store.select = select i1 %.not, ptr @.str, ptr %2
  %i.a = tail call i32 @vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %spec.store.select, ptr noundef %3) #23
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_swprintf_REAL(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) local_unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = call i32 @SDL_vswprintf_REAL(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
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
  %i.b = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %2) #24
  %i.c = shl i64 %i.b, 2
  %i.d = add i64 %i.c, 4
  %i.e = tail call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i64 noundef %i.d) #23 ; 2 uses
  %.not56 = icmp eq ptr %i.e, null
  br i1 %.not56, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.044 = phi ptr [ %i.e, %bb.d ], [ null, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.va_copy.p0(ptr nonnull %4, ptr %3)
  %.not.i = icmp eq ptr %.044, null
  %spec.store.select.i = select i1 %.not.i, ptr @.str, ptr %.044 ; 2 uses
  %i.f = call noundef i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %4) #23 ; 5 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @SDL_free_REAL(ptr noundef %.044) #23
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
  %i.k = call noalias ptr @SDL_malloc_REAL(i64 noundef %.pre65) #23 ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @SDL_free_REAL(ptr noundef %.044) #23
  br label %bb.q

bb.k:                                             ; preds = %.thread, %bb.i
  %i.l = phi ptr [ %i.j, %.thread ], [ %i.k, %bb.i ] ; 3 uses
  %i.m = call noundef i32 @vsnprintf(ptr noundef nonnull %i.l, i64 noundef %.pre65, ptr noundef nonnull %spec.store.select.i, ptr noundef %3) #23
  %.not58 = icmp sgt i32 %i.m, %i.f
  br i1 %.not58, label %.thread63, label %._crit_edge

.thread63:                                        ; preds = %bb.k
  call void @SDL_free_REAL(ptr noundef %.044) #23
  %i.n = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3) #23
  %i.o = zext i1 %i.n to i32
  br label %bb.q

._crit_edge:                                      ; preds = %bb.g, %bb.k
  %.042 = phi i1 [ %i.i, %bb.k ], [ false, %bb.g ]
  %.041 = phi ptr [ %i.l, %bb.k ], [ null, %bb.g ] ; 2 uses
  %.040 = phi ptr [ %i.l, %bb.k ], [ %i.a, %bb.g ]
  call void @SDL_free_REAL(ptr noundef %.044) #23
  %i.p = call ptr @SDL_iconv_string_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, ptr noundef nonnull %.040, i64 noundef %.pre65) #23 ; 4 uses
  %.not59 = icmp eq ptr %i.p, null
  br i1 %.not59, label %bb.o, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = call i64 @wcslcpy(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i64 noundef %1) #23 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.r = call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %i.p) #24
  %i.s = trunc i64 %i.r to i32
  call void @SDL_free_REAL(ptr noundef nonnull %i.p) #23
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n
  %.0 = phi i32 [ %i.s, %bb.n ], [ -1, %._crit_edge ] ; 2 uses
  %i.t = icmp eq ptr %.041, null
  %or.cond = or i1 %.042, %i.t
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @SDL_free_REAL(ptr noundef nonnull %.041) #23
  br label %bb.q

bb.q:                                             ; preds = %.thread63, %bb.j, %bb.p, %bb.o, %bb.f
  %.2 = phi i32 [ -1, %bb.f ], [ -1, %bb.j ], [ %i.o, %.thread63 ], [ %.0, %bb.p ], [ %.0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.q
  %.3 = phi i32 [ %.2, %bb.q ], [ -1, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #14

declare ptr @SDL_iconv_string_REAL(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #20

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #10

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @SDL_asprintf_REAL(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ...) local_unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr null, ptr %0, align 8
  %i.a = call noalias ptr @SDL_malloc_REAL(i64 noundef 100) #23 ; 2 uses
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
  %i.c = call noundef i32 @vsnprintf(ptr noundef nonnull %.0.i, i64 noundef %i.b, ptr noundef nonnull %spec.store.select.i.i, ptr noundef nonnull %2) #23 ; 5 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @SDL_free_REAL(ptr noundef nonnull %.0.i) #23
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
  %i.h = call ptr @SDL_realloc_REAL(ptr noundef nonnull %.0.i, i64 noundef %i.g) #25 ; 2 uses
  %.not26.i = icmp eq ptr %i.h, null
  br i1 %.not26.i, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @SDL_free_REAL(ptr noundef nonnull %.0.i) #23
  br label %SDL_vasprintf_REAL.exit

SDL_vasprintf_REAL.exit:                          ; preds = %bb.a, %bb.c, %bb.e, %bb.g
  %.022.i = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.e ], [ -1, %bb.g ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.022.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 2147483647) i32 @SDL_vasprintf_REAL(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr null, ptr %0, align 8
  %i.a = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 100) #23 ; 2 uses
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
  %i.c = call noundef i32 @vsnprintf(ptr noundef nonnull %.0, i64 noundef %i.b, ptr noundef nonnull %spec.store.select.i, ptr noundef nonnull %3) #23 ; 5 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @SDL_free_REAL(ptr noundef nonnull %.0) #23
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
  %i.h = call ptr @SDL_realloc_REAL(ptr noundef nonnull %.0, i64 noundef %i.g) #25 ; 2 uses
  %.not26 = icmp eq ptr %i.h, null
  br i1 %.not26, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @SDL_free_REAL(ptr noundef nonnull %.0) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.e, %bb.c
  %.022 = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.e ], [ -1, %bb.g ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.022
}

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @SDL_strpbrk_REAL(ptr nofree noundef readonly %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @strpbrk(ptr noundef %0, ptr noundef %1) #24
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #22

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
attributes #17 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(1) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = distinct !{!1, !6}
!2 = distinct !{!2, !6}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{null}
!32 = distinct !{null}
end_hunk_0
