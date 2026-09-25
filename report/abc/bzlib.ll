Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bzlib?download=true
inline.NumInlined: 47
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@BZ2_bzReadClose:bb.a
  tail call void %i.r(ptr noundef %i.t, ptr noundef nonnull %i.p) #24, !inline_history !74
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 3160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %.not27.i = icmp eq ptr %i.v, null
  br i1 %.not27.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 5080
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  tail call void %i.x(ptr noundef %i.z, ptr noundef nonnull %i.v) #24, !inline_history !74
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 3168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %.not28.i = icmp eq ptr %i.ab, null
  br i1 %.not28.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 5080
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  tail call void %i.ad(ptr noundef %i.af, ptr noundef nonnull %i.ab) #24, !inline_history !74
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 5080
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !29
  tail call void %i.ah(ptr noundef %i.aj, ptr noundef %i.ak) #24, !inline_history !74
  br label %BZ2_bzDecompressEnd.exit

BZ2_bzDecompressEnd.exit:                         ; preds = %bb.o, %bb.h, %bb.g, %bb.f
  tail call void @free(ptr noundef nonnull %1) #24
  br label %bb.p

bb.p:                                             ; preds = %.thread23, %bb.b, %BZ2_bzDecompressEnd.exit, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BZ2_bzRead(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 10 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not88 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not88, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5096 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !64
  %i.b = icmp eq ptr %2, null
  %i.c = icmp slt i32 %3, 0
  %or.cond3 = or i1 %i.b, %i.c
  br i1 %or.cond3, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.c, %bb.d
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread
  store i32 -2, ptr %0, align 4, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  br i1 %.not88, label %bb.aq, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 5096
  store i32 -2, ptr %i.d, align 8, !tbaa !64
  br label %bb.aq

bb.h:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5012
  %i.f = load i8, ptr %i.e, align 4, !tbaa !68
  %.not89 = icmp eq i8 %i.f, 0
  br i1 %.not89, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr %0, align 4, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  store i32 -1, ptr %i.a, align 8, !tbaa !64
  br label %bb.aq

bb.l:                                             ; preds = %bb.h
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %0, align 4, !tbaa !47
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  store i32 0, ptr %i.a, align 8, !tbaa !64
  br label %bb.aq

bb.p:                                             ; preds = %bb.l
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5016 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 5048 ; 4 uses
  store i32 %3, ptr %i.i, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 5040
  store ptr %2, ptr %i.j, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 5024 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5008
  br label %bb.q

bb.q:                                             ; preds = %bb.an, %bb.p
  %i.n = load ptr, ptr %1, align 8, !tbaa !67     ; 3 uses
  %i.o = tail call i32 @ferror(ptr noundef %i.n) #24
  %.not90 = icmp eq i32 %i.o, 0
  br i1 %.not90, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 -6, ptr %0, align 4, !tbaa !47
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  store i32 -6, ptr %i.a, align 8, !tbaa !64
  br label %bb.aq

bb.u:                                             ; preds = %bb.q
  %i.p = load i32, ptr %i.k, align 8, !tbaa !69
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.v, label %myfeof.exit

bb.v:                                             ; preds = %bb.u
  %i.r = tail call i32 @fgetc(ptr noundef %i.n)   ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %myfeof.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.t = tail call i32 @ungetc(i32 noundef %i.r, ptr noundef %i.n) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !67
  %i.v = tail call i64 @fread(ptr noundef nonnull %i.l, i64 noundef 1, i64 noundef 5000, ptr noundef %i.u)
  %i.w = load ptr, ptr %1, align 8, !tbaa !67
  %i.x = tail call i32 @ferror(ptr noundef %i.w) #24
  %.not92 = icmp eq i32 %i.x, 0
  br i1 %.not92, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 -6, ptr %0, align 4, !tbaa !47
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  store i32 -6, ptr %i.a, align 8, !tbaa !64
  br label %bb.aq

bb.aa:                                            ; preds = %bb.w
  %i.y = trunc i64 %i.v to i32                    ; 2 uses
  store i32 %i.y, ptr %i.m, align 8, !tbaa !66
  store i32 %i.y, ptr %i.k, align 8, !tbaa !69
  store ptr %i.l, ptr %i.h, align 8, !tbaa !70
  br label %myfeof.exit

myfeof.exit:                                      ; preds = %bb.v, %bb.aa, %bb.u
  %i.z = tail call i32 @BZ2_bzDecompress(ptr noundef nonnull %i.h) ; 4 uses
  %i.aa = and i32 %i.z, -5
  %or.cond5.not = icmp eq i32 %i.aa, 0
  br i1 %or.cond5.not, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %myfeof.exit
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.z, ptr %0, align 4, !tbaa !47
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  store i32 %i.z, ptr %i.a, align 8, !tbaa !64
  br label %bb.aq

bb.ae:                                            ; preds = %myfeof.exit
  switch i32 %i.z, label %bb.an [
    i32 0, label %bb.af
    i32 4, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ab = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.ac = tail call i32 @fgetc(ptr noundef %i.ab) ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %myfeof.exit96, label %myfeof.exit96.thread

myfeof.exit96.thread:                             ; preds = %bb.af
  %i.ae = tail call i32 @ungetc(i32 noundef %i.ac, ptr noundef %i.ab) ; 0 uses
  br label %bb.an

myfeof.exit96:                                    ; preds = %bb.af
  %i.af = load i32, ptr %i.k, align 8, !tbaa !69
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %myfeof.exit96
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !71
  %.not94 = icmp eq i32 %i.ah, 0
  br i1 %.not94, label %.thread103, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 -7, ptr %0, align 4, !tbaa !47
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  store i32 -7, ptr %i.a, align 8, !tbaa !64
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ae
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 4, ptr %0, align 4, !tbaa !47
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  store i32 4, ptr %i.a, align 8, !tbaa !64
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !71
  %i.aj = sub i32 %3, %i.ai
  br label %bb.aq

bb.an:                                            ; preds = %myfeof.exit96, %myfeof.exit96.thread, %bb.ae
  %.pr = load i32, ptr %i.i, align 8, !tbaa !71
  %i.ak = icmp eq i32 %.pr, 0
  br i1 %i.ak, label %.thread103, label %bb.q

.thread103:                                       ; preds = %bb.an, %bb.ag
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.thread103
  store i32 0, ptr %0, align 4, !tbaa !47
  br label %bb.ap

bb.ap:                                            ; preds = %.thread103, %bb.ao
  store i32 0, ptr %i.a, align 8, !tbaa !64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.o, %bb.k, %bb.f, %bb.g, %bb.ap, %bb.am, %bb.aj, %bb.ad, %bb.z, %bb.t
  %.0 = phi i32 [ 0, %bb.z ], [ 0, %bb.f ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %bb.ad ], [ 0, %bb.aj ], [ %i.aj, %bb.am ], [ %3, %bb.ap ], [ 0, %bb.g ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @BZ2_bzReadGetUnused(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %0, null
  br i1 %.not33, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 -2, ptr %0, align 4, !tbaa !47
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5096 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64
  %.not = icmp eq i32 %i.c, 4
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not32 = icmp eq ptr %0, null
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %0, align 4, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  store i32 -1, ptr %i.b, align 8, !tbaa !64
  br label %bb.o

bb.h:                                             ; preds = %bb.d
  %i.d = icmp eq ptr %2, null
  %i.e = icmp eq ptr %3, null
  %or.cond = or i1 %i.d, %i.e
  %.not31 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 -2, ptr %0, align 4, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  store i32 -2, ptr %i.b, align 8, !tbaa !64
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  br i1 %.not31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %0, align 4, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  store i32 0, ptr %i.b, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 5016
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5024
  %i.h = load i32, ptr %i.g, align 8, !tbaa !69
  store i32 %i.h, ptr %3, align 4, !tbaa !47
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !70
  store ptr %i.i, ptr %2, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.b, %bb.n, %bb.k, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -8, 1) i32 @BZ2_bzBuffToBuffCompress(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 {
bb.a:
  %7 = alloca %struct.bz_stream, align 8          ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = add i32 %4, -10
  %i.e = icmp ult i32 %i.d, -9
  %or.cond7 = or i1 %or.cond3, %i.e
  %i.f = icmp ugt i32 %5, 4
  %or.cond11 = or i1 %i.f, %or.cond7
  %i.g = icmp ugt i32 %6, 250
  %or.cond15 = or i1 %i.g, %or.cond11
  br i1 %or.cond15, label %BZ2_bzCompressEnd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %6, 0
  %spec.store.select = select i1 %i.h, i32 30, i32 %6
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.l = call i32 @BZ2_bzCompressInit(ptr noundef nonnull %7, i32 noundef %4, i32 noundef %5, i32 noundef %spec.store.select) ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %BZ2_bzCompressEnd.exit

bb.c:                                             ; preds = %bb.b
  store ptr %2, ptr %7, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !42
  %i.o = load i32, ptr %1, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i32 %i.o, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 12 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %BZ2_bzCompressEnd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.t, %7
  br i1 %.not.i, label %.preheader.i, label %BZ2_bzCompressEnd.exit

.preheader.i:                                     ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %.promoted.i = load i32, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  switch i32 %.promoted.i, label %.thread62 [
    i32 1, label %isempty_RL.exit.thread.loopexit.i
    i32 2, label %.split65.us.loopexit89.loopexit.i
    i32 3, label %isempty_RL.exit.thread.loopexit.i
    i32 4, label %.preheader.i..split65.us.i_crit_edge
  ]

.preheader.i..split65.us.i_crit_edge:             ; preds = %.preheader.i
  %.pre = load i32, ptr %i.v, align 8, !tbaa !43
  br label %.split65.us.i

.split65.us.loopexit89.loopexit.i:                ; preds = %.preheader.i
  store i32 %3, ptr %i.v, align 8, !tbaa !43
  store i32 4, ptr %i.u, align 8, !tbaa !25
  br label %.split65.us.i

.split65.us.i:                                    ; preds = %.preheader.i..split65.us.i_crit_edge, %.split65.us.loopexit89.loopexit.i
  %i.w = phi i32 [ %.pre, %.preheader.i..split65.us.i_crit_edge ], [ %3, %.split65.us.loopexit89.loopexit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !42
  %.not40.i = icmp eq i32 %i.w, %i.y
  br i1 %.not40.i, label %bb.e, label %.thread62

bb.e:                                             ; preds = %.split65.us.i
  %i.z = call fastcc zeroext i8 @handle_compress(ptr nonnull %i.r)
  %.not41.i = icmp eq i8 %i.z, 0
  br i1 %.not41.i, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !43
  %.not42.i = icmp eq i32 %i.aa, 0
  br i1 %.not42.i, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 92
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34
  %i.ad = icmp ult i32 %i.ac, 256
  br i1 %i.ad, label %bb.h, label %isempty_RL.exit52.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !35
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.p, label %isempty_RL.exit52.i

isempty_RL.exit52.i:                              ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !37
  %i.al = icmp slt i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.p, label %bb.i

end_hunk_0
