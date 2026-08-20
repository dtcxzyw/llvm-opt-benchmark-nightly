inline.NumInlined: 558
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Scl_LibertyStart:bb.a
bb.h:                                             ; preds = %Scl_LibertyFileSize.exit.thread, %Scl_LibertyFileSize.exit, %Scl_LibertyCountItems.exit
  %.0 = phi ptr [ %calloc, %Scl_LibertyCountItems.exit ], [ null, %Scl_LibertyFileSize.exit ], [ null, %Scl_LibertyFileSize.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define void @Scl_LibertyStop(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %i.e = mul i64 %i.d, 80
  %i.f = add i64 %i.e, %i.b
  %i.g = uitofp i64 %i.f to double
  %i.h = fmul nnan double %i.g, f0x3EB0000000000000
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.h) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.j = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #33
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %Abc_Clock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %2, align 8, !tbaa !61
  %i.m = mul nsw i64 %i.l, 1000000
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !63
  %i.p = sdiv i64 %i.o, 1000
  %i.q = add nsw i64 %i.p, %i.m
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !64
  %i.t = sub nsw i64 %.0.i, %i.s
  %i.u = sitofp i64 %i.t to double
  %i.v = fdiv double %i.u, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.18, double noundef %i.v)
  br label %bb.d

bb.d:                                             ; preds = %Abc_Clock.exit, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %Vec_StrFree.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.z) #33
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %bb.d, %bb.e
  call void @free(ptr noundef nonnull %i.x) #33
  %i.aa = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %.not21 = icmp eq ptr %i.aa, null
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %Vec_StrFree.exit
  call void @free(ptr noundef nonnull %i.aa) #33
  store ptr null, ptr %0, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %Vec_StrFree.exit, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %.not22 = icmp eq ptr %i.ac, null
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ac) #33
  store ptr null, ptr %i.ab, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %.not23 = icmp eq ptr %i.ae, null
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.ae) #33
  store ptr null, ptr %i.ad, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  %.not24 = icmp eq ptr %i.ag, null
  br i1 %.not24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.ag) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @free(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 noundef range(i32 0, 2) %0, ptr noundef %1, ...) unnamed_addr #15 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !69
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #33
  %.not8 = icmp eq i32 %i.b, 0
  %i.c = icmp eq i32 %0, 0                        ; 2 uses
  br i1 %.not8, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.128) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.f = tail call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef 9, ptr noundef nonnull @.str.128) #33 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.g = call i32 (...) @Abc_FrameIsBridgeMode() #33
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #33 ; 3 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !25
  %i.j = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #34
  %i.k = trunc i64 %i.j to i32
  %i.l = call i32 @Gia_ManToBridgeText(ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull %i.h) #33 ; 0 uses
  call void @free(ptr noundef %i.h) #33
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !25, !noalias !70
  %i.n = call i32 @vfprintf(ptr noundef %i.m, ptr noundef %1, ptr noundef nonnull %2) #33, !inline_history !73 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define noundef ptr @Scl_LibertyParse(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = tail call ptr @Scl_LibertyStart(ptr noundef %0) ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 4 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !65   ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 3 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -1 ; 3 uses
  %i.k = icmp sgt i64 %i.g, 1
  br i1 %i.k, label %.lr.ph50.i, label %Scl_LibertyWipeOutComments.exit

.lr.ph50.i:                                       ; preds = %bb.b, %.loopexit.i
  %.03049.i = phi ptr [ %i.dt, %.loopexit.i ], [ %i.e, %bb.b ] ; 59 uses
  %.0304958.i = ptrtoaddr ptr %.03049.i to i64    ; 2 uses
  %i.l = load i8, ptr %.03049.i, align 1, !tbaa !20
  %i.m = icmp eq i8 %i.l, 47
  br i1 %i.m, label %bb.c, label %.loopexit.i

bb.c:                                             ; preds = %.lr.ph50.i
  %i.n = getelementptr inbounds nuw i8, ptr %.03049.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20    ; 2 uses
  %i.p = icmp eq i8 %i.o, 42
  br i1 %i.p, label %.preheader33.i, label %bb.h

.preheader33.i:                                   ; preds = %bb.c
  %i.q = icmp ult ptr %.03049.i, %i.j
  br i1 %i.q, label %.lr.ph45.preheader.i, label %.loopexit.i

.lr.ph45.preheader.i:                             ; preds = %.preheader33.i
  %i.r = getelementptr i8, ptr %.03049.i, i64 %i.i
  %scevgep61.i = getelementptr i8, ptr %i.r, i64 -1
  %i.s = sub i64 0, %.0304958.i
  %scevgep62.i = getelementptr i8, ptr %scevgep61.i, i64 %i.s ; 2 uses
  %scevgep64.i = getelementptr i8, ptr %.03049.i, i64 2
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.g, %.lr.ph45.preheader.i
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %.lr.ph45.preheader.i ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep65.i, %bb.g ], [ %scevgep64.i, %.lr.ph45.preheader.i ] ; 2 uses
  %.13144.i = phi ptr [ %i.dk, %bb.g ], [ %.03049.i, %.lr.ph45.preheader.i ] ; 8 uses
  %i.t = load i8, ptr %.13144.i, align 1, !tbaa !20
  %i.u = icmp eq i8 %i.t, 42
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph45.i
  %i.v = getelementptr inbounds nuw i8, ptr %.13144.i, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = icmp eq i8 %i.w, 47
  br i1 %i.x, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %.13144.i, i64 2
  %5 = icmp ult ptr %.03049.i, %4
  br i1 %5, label %iter.check, label %.loopexit.i

iter.check:                                       ; preds = %.preheader.i
  %i.y = add i64 %indvar, 2                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph48.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check54 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 4 uses
  %i.aa = getelementptr i8, ptr %.03049.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue148, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue148 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %.03049.i, i64 %index ; 3 uses
  %i.ab = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.ab, i64 1
  %i.ac = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep56 = getelementptr i8, ptr %i.ac, i64 2
  %i.ad = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep57 = getelementptr i8, ptr %i.ad, i64 3
  %i.ae = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep58 = getelementptr i8, ptr %i.ae, i64 4
  %i.af = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep59 = getelementptr i8, ptr %i.af, i64 5
  %i.ag = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep60 = getelementptr i8, ptr %i.ag, i64 6
  %i.ah = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep61 = getelementptr i8, ptr %i.ah, i64 7
  %i.ai = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep62 = getelementptr i8, ptr %i.ai, i64 8
  %i.aj = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep63 = getelementptr i8, ptr %i.aj, i64 9
  %i.ak = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.ak, i64 10
  %i.al = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.al, i64 11
  %i.am = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.am, i64 12
  %i.an = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.an, i64 13
  %i.ao = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.ao, i64 14
  %i.ap = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.ap, i64 15
  %i.aq = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.aq, i64 16
  %i.ar = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.ar, i64 17
  %i.as = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.as, i64 18
  %i.at = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.at, i64 19
  %i.au = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.au, i64 20
  %i.av = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.av, i64 21
  %i.aw = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.aw, i64 22
  %i.ax = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep77 = getelementptr i8, ptr %i.ax, i64 23
  %i.ay = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep78 = getelementptr i8, ptr %i.ay, i64 24
  %i.az = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep79 = getelementptr i8, ptr %i.az, i64 25
  %i.ba = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep80 = getelementptr i8, ptr %i.ba, i64 26
  %i.bb = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep81 = getelementptr i8, ptr %i.bb, i64 27
  %i.bc = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep82 = getelementptr i8, ptr %i.bc, i64 28
  %i.bd = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep83 = getelementptr i8, ptr %i.bd, i64 29
  %i.be = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep84 = getelementptr i8, ptr %i.be, i64 30
  %i.bf = getelementptr i8, ptr %.03049.i, i64 %index
  %next.gep85 = getelementptr i8, ptr %i.bf, i64 31
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !20
  %wide.load86 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !20
  %i.bh = icmp ne <16 x i8> %wide.load, splat (i8 10) ; 16 uses
  %i.bi = icmp ne <16 x i8> %wide.load86, splat (i8 10) ; 16 uses
  %i.bj = extractelement <16 x i1> %i.bh, i64 0
  br i1 %i.bj, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 32, ptr %next.gep, align 1, !tbaa !20
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bk = extractelement <16 x i1> %i.bh, i64 1
  br i1 %i.bk, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue
  store i8 32, ptr %next.gep55, align 1, !tbaa !20
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue
  %i.bl = extractelement <16 x i1> %i.bh, i64 2
  br i1 %i.bl, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  store i8 32, ptr %next.gep56, align 1, !tbaa !20
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %i.bm = extractelement <16 x i1> %i.bh, i64 3
  br i1 %i.bm, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  store i8 32, ptr %next.gep57, align 1, !tbaa !20
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %i.bn = extractelement <16 x i1> %i.bh, i64 4
  br i1 %i.bn, label %pred.store.if93, label %pred.store.continue94

pred.store.if93:                                  ; preds = %pred.store.continue92
  store i8 32, ptr %next.gep58, align 1, !tbaa !20
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.if93, %pred.store.continue92
  %i.bo = extractelement <16 x i1> %i.bh, i64 5
  br i1 %i.bo, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  store i8 32, ptr %next.gep59, align 1, !tbaa !20
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %i.bp = extractelement <16 x i1> %i.bh, i64 6
  br i1 %i.bp, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue96
  store i8 32, ptr %next.gep60, align 1, !tbaa !20
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue96
  %i.bq = extractelement <16 x i1> %i.bh, i64 7
  br i1 %i.bq, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  store i8 32, ptr %next.gep61, align 1, !tbaa !20
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.br = extractelement <16 x i1> %i.bh, i64 8
  br i1 %i.br, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  store i8 32, ptr %next.gep62, align 1, !tbaa !20
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.bs = extractelement <16 x i1> %i.bh, i64 9
  br i1 %i.bs, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  store i8 32, ptr %next.gep63, align 1, !tbaa !20
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.bt = extractelement <16 x i1> %i.bh, i64 10
  br i1 %i.bt, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  store i8 32, ptr %next.gep64, align 1, !tbaa !20
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.bu = extractelement <16 x i1> %i.bh, i64 11
  br i1 %i.bu, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  store i8 32, ptr %next.gep65, align 1, !tbaa !20
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %i.bv = extractelement <16 x i1> %i.bh, i64 12
  br i1 %i.bv, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  store i8 32, ptr %next.gep66, align 1, !tbaa !20
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %i.bw = extractelement <16 x i1> %i.bh, i64 13
  br i1 %i.bw, label %pred.store.if111, label %pred.store.continue112

pred.store.if111:                                 ; preds = %pred.store.continue110
  store i8 32, ptr %next.gep67, align 1, !tbaa !20
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.if111, %pred.store.continue110
  %i.bx = extractelement <16 x i1> %i.bh, i64 14
  br i1 %i.bx, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue112
end_hunk_0
begin_hunk_1_@Scl_LibertyParse:bb.a

pred.store.if141:                                 ; preds = %pred.store.continue140
  store i8 32, ptr %next.gep82, align 1, !tbaa !20
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.if141, %pred.store.continue140
  %i.cm = extractelement <16 x i1> %i.bi, i64 13
  br i1 %i.cm, label %pred.store.if143, label %pred.store.continue144

pred.store.if143:                                 ; preds = %pred.store.continue142
  store i8 32, ptr %next.gep83, align 1, !tbaa !20
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue142
  %i.cn = extractelement <16 x i1> %i.bi, i64 14
  br i1 %i.cn, label %pred.store.if145, label %pred.store.continue146

pred.store.if145:                                 ; preds = %pred.store.continue144
  store i8 32, ptr %next.gep84, align 1, !tbaa !20
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.co = extractelement <16 x i1> %i.bi, i64 15
  br i1 %i.co, label %pred.store.if147, label %pred.store.continue148

pred.store.if147:                                 ; preds = %pred.store.continue146
  store i8 32, ptr %next.gep85, align 1, !tbaa !20
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %pred.store.continue148
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph48.i.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec149 = and i64 %i.y, -8                    ; 3 uses
  %i.cq = getelementptr i8, ptr %.03049.i, i64 %n.vec149
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue175, %vec.epilog.ph
  %index150 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next176, %pred.store.continue175 ] ; 9 uses
  %next.gep151 = getelementptr i8, ptr %.03049.i, i64 %index150 ; 2 uses
  %i.cr = getelementptr i8, ptr %.03049.i, i64 %index150
  %next.gep152 = getelementptr i8, ptr %i.cr, i64 1
  %i.cs = getelementptr i8, ptr %.03049.i, i64 %index150
  %next.gep153 = getelementptr i8, ptr %i.cs, i64 2
  %i.ct = getelementptr i8, ptr %.03049.i, i64 %index150
  %next.gep154 = getelementptr i8, ptr %i.ct, i64 3
  %i.cu = getelementptr i8, ptr %.03049.i, i64 %index150
  %next.gep155 = getelementptr i8, ptr %i.cu, i64 4
  %i.cv = getelementptr i8, ptr %.03049.i, i64 %index150
  %next.gep156 = getelementptr i8, ptr %i.cv, i64 5
  %i.cw = getelementptr i8, ptr %.03049.i, i64 %index150
  %next.gep157 = getelementptr i8, ptr %i.cw, i64 6
  %i.cx = getelementptr i8, ptr %.03049.i, i64 %index150
  %next.gep158 = getelementptr i8, ptr %i.cx, i64 7
  %wide.load159 = load <8 x i8>, ptr %next.gep151, align 1, !tbaa !20
  %i.cy = icmp ne <8 x i8> %wide.load159, splat (i8 10) ; 8 uses
  %i.cz = extractelement <8 x i1> %i.cy, i64 0
  br i1 %i.cz, label %pred.store.if160, label %pred.store.continue161

pred.store.if160:                                 ; preds = %vec.epilog.vector.body
  store i8 32, ptr %next.gep151, align 1, !tbaa !20
  br label %pred.store.continue161

pred.store.continue161:                           ; preds = %pred.store.if160, %vec.epilog.vector.body
  %i.da = extractelement <8 x i1> %i.cy, i64 1
  br i1 %i.da, label %pred.store.if162, label %pred.store.continue163

pred.store.if162:                                 ; preds = %pred.store.continue161
  store i8 32, ptr %next.gep152, align 1, !tbaa !20
  br label %pred.store.continue163

pred.store.continue163:                           ; preds = %pred.store.if162, %pred.store.continue161
  %i.db = extractelement <8 x i1> %i.cy, i64 2
  br i1 %i.db, label %pred.store.if164, label %pred.store.continue165

pred.store.if164:                                 ; preds = %pred.store.continue163
  store i8 32, ptr %next.gep153, align 1, !tbaa !20
  br label %pred.store.continue165

pred.store.continue165:                           ; preds = %pred.store.if164, %pred.store.continue163
  %i.dc = extractelement <8 x i1> %i.cy, i64 3
  br i1 %i.dc, label %pred.store.if166, label %pred.store.continue167

pred.store.if166:                                 ; preds = %pred.store.continue165
  store i8 32, ptr %next.gep154, align 1, !tbaa !20
  br label %pred.store.continue167

pred.store.continue167:                           ; preds = %pred.store.if166, %pred.store.continue165
  %i.dd = extractelement <8 x i1> %i.cy, i64 4
  br i1 %i.dd, label %pred.store.if168, label %pred.store.continue169

pred.store.if168:                                 ; preds = %pred.store.continue167
  store i8 32, ptr %next.gep155, align 1, !tbaa !20
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.if168, %pred.store.continue167
  %i.de = extractelement <8 x i1> %i.cy, i64 5
  br i1 %i.de, label %pred.store.if170, label %pred.store.continue171

pred.store.if170:                                 ; preds = %pred.store.continue169
  store i8 32, ptr %next.gep156, align 1, !tbaa !20
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.if170, %pred.store.continue169
  %i.df = extractelement <8 x i1> %i.cy, i64 6
  br i1 %i.df, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %pred.store.continue171
  store i8 32, ptr %next.gep157, align 1, !tbaa !20
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %pred.store.continue171
  %i.dg = extractelement <8 x i1> %i.cy, i64 7
  br i1 %i.dg, label %pred.store.if174, label %pred.store.continue175

pred.store.if174:                                 ; preds = %pred.store.continue173
  store i8 32, ptr %next.gep158, align 1, !tbaa !20
  br label %pred.store.continue175

pred.store.continue175:                           ; preds = %pred.store.if174, %pred.store.continue173
  %index.next176 = add nuw i64 %index150, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next176, %n.vec149
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %pred.store.continue175
  %cmp.n177 = icmp eq i64 %i.y, %n.vec149
  br i1 %cmp.n177, label %.loopexit.i, label %.lr.ph48.i.preheader

.lr.ph48.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.047.i.ph = phi ptr [ %.03049.i, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.preheader, %bb.f
  %.047.i = phi ptr [ %i.dj, %bb.f ], [ %.047.i.ph, %.lr.ph48.i.preheader ] ; 3 uses
  %i.di = load i8, ptr %.047.i, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.di, 10
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph48.i
  store i8 32, ptr %.047.i, align 1, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph48.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.047.i, i64 1 ; 2 uses
  %exitcond67.not.i = icmp eq ptr %i.dj, %indvars.iv.i
  br i1 %exitcond67.not.i, label %.loopexit.i, label %.lr.ph48.i, !llvm.loop !76

bb.g:                                             ; preds = %bb.d, %.lr.ph45.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.13144.i, i64 1 ; 2 uses
  %exitcond63.not.i = icmp eq ptr %i.dk, %scevgep62.i
  %scevgep65.i = getelementptr i8, ptr %indvars.iv.i, i64 1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond63.not.i, label %.loopexit.i, label %.lr.ph45.i, !llvm.loop !35

bb.h:                                             ; preds = %bb.c
  %i.dl = icmp eq i8 %i.o, 47
  %i.dm = icmp ult ptr %.03049.i, %i.h
  %or.cond51.i = and i1 %i.dm, %i.dl
  br i1 %or.cond51.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %scevgep.i = getelementptr i8, ptr %.03049.i, i64 %i.i
  %i.dn = sub i64 0, %.0304958.i
  %scevgep59.i = getelementptr i8, ptr %scevgep.i, i64 %i.dn ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %indvar.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvar.next.i, %bb.i ] ; 2 uses
  %.241.i = phi ptr [ %.03049.i, %.lr.ph.preheader.i ], [ %i.ds, %bb.i ] ; 6 uses
  %i.do = load i8, ptr %.241.i, align 1, !tbaa !20
  %i.dp = icmp eq i8 %i.do, 10
  %i.dq = icmp eq ptr %.241.i, %i.j
  %or.cond.i = or i1 %i.dq, %i.dp
  br i1 %or.cond.i, label %.preheader35.i, label %bb.i

.preheader35.i:                                   ; preds = %.lr.ph.i
  %i.dr = icmp ult ptr %.03049.i, %.241.i
  br i1 %i.dr, label %.lr.ph43.preheader.i, label %.loopexit.i

.lr.ph43.preheader.i:                             ; preds = %.preheader35.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.03049.i, i8 32, i64 %indvar.i, i1 false), !tbaa !20
  br label %.loopexit.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.241.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ds, %scevgep59.i
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !36

.loopexit.i:                                      ; preds = %bb.i, %bb.g, %bb.f, %middle.block, %vec.epilog.middle.block, %.lr.ph43.preheader.i, %.preheader35.i, %bb.h, %.preheader.i, %.preheader33.i, %.lr.ph50.i
  %.3.i = phi ptr [ %.03049.i, %.lr.ph50.i ], [ %.241.i, %.preheader35.i ], [ %.13144.i, %.preheader.i ], [ %scevgep62.i, %bb.g ], [ %.03049.i, %bb.h ], [ %.241.i, %.lr.ph43.preheader.i ], [ %.03049.i, %.preheader33.i ], [ %.13144.i, %middle.block ], [ %.13144.i, %bb.f ], [ %.13144.i, %vec.epilog.middle.block ], [ %scevgep59.i, %bb.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.3.i, i64 1 ; 2 uses
  %i.du = icmp ult ptr %i.dt, %i.j
  br i1 %i.du, label %.lr.ph50.i, label %Scl_LibertyWipeOutComments.exit.loopexit, !llvm.loop !37

Scl_LibertyWipeOutComments.exit.loopexit:         ; preds = %.loopexit.i
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !14
  %.pre32 = load i64, ptr %i.f, align 8, !tbaa !65
  br label %Scl_LibertyWipeOutComments.exit

Scl_LibertyWipeOutComments.exit:                  ; preds = %Scl_LibertyWipeOutComments.exit.loopexit, %bb.b
  %i.dv = phi i64 [ %.pre32, %Scl_LibertyWipeOutComments.exit.loopexit ], [ %i.g, %bb.b ]
  %i.dw = phi ptr [ %.pre, %Scl_LibertyWipeOutComments.exit.loopexit ], [ %i.e, %bb.b ]
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.dv
  %i.dy = call i64 @Scl_LibertyBuildItem(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.dx)
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %Scl_LibertyWipeOutComments.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !54 ; 2 uses
  %.not17 = icmp eq ptr %i.ea, null
  br i1 %.not17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %i.ea) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.ed = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #33
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %Abc_Clock.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ef = load i64, ptr %3, align 8, !tbaa !61
  %i.eg = mul nsw i64 %i.ef, 1000000
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !63
  %i.ej = sdiv i64 %i.ei, 1000
  %i.ek = add nsw i64 %i.ej, %i.eg
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.l, %bb.m
  %.0.i = phi i64 [ %i.ek, %bb.m ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.sink.split

bb.n:                                             ; preds = %Scl_LibertyWipeOutComments.exit
  %.not16 = icmp eq i32 %1, 0
  br i1 %.not16, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.el = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.em = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #33
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %Abc_Clock.exit19, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eo = load i64, ptr %2, align 8, !tbaa !61
  %i.ep = mul nsw i64 %i.eo, 1000000
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !63
  %i.es = sdiv i64 %i.er, 1000
  %i.et = add nsw i64 %i.es, %i.ep
  br label %Abc_Clock.exit19

Abc_Clock.exit19:                                 ; preds = %bb.o, %bb.p
  %.0.i18 = phi i64 [ %i.et, %bb.p ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %.sink.split

.sink.split:                                      ; preds = %Abc_Clock.exit19, %Abc_Clock.exit
  %.0.i.sink = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.0.i18, %Abc_Clock.exit19 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !64
  %i.ew = sub nsw i64 %.0.i.sink, %i.ev
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.21)
  %i.ex = sitofp i64 %i.ew to double
  %i.ey = fdiv double %i.ex, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.18, double noundef %i.ey)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.n, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Scl_LibertyReadCellIsFlop(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %Scl_LibertyCompare.exit.thread._crit_edge, label %Scl_LibertyItem.exit

Scl_LibertyItem.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %Scl_LibertyCompare.exit.thread._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %Scl_LibertyItem.exit
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Scl_LibertyItem.exit15
  %.022 = phi ptr [ %i.f, %.lr.ph ], [ %i.u, %Scl_LibertyItem.exit15 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.022, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %.val12, i64 %i.j ; 2 uses
  %i.n = sub nsw i64 %i.l, %i.j                   ; 4 uses
  %i.o = tail call i32 @strncmp(ptr noundef readonly %i.m, ptr noundef nonnull @.str.23, i64 noundef %i.n) #34
  %.not.i = icmp eq i32 %i.o, 0
  %.not18 = icmp eq i64 %i.n, 2
  %or.cond = and i1 %.not18, %.not.i
  br i1 %or.cond, label %Scl_LibertyCompare.exit.thread._crit_edge, label %Scl_LibertyCompare.exit.thread

Scl_LibertyCompare.exit.thread:                   ; preds = %bb.b
  %i.p = tail call i32 @strncmp(ptr noundef readonly %i.m, ptr noundef nonnull @.str.24, i64 noundef %i.n) #34
  %.not.i13 = icmp eq i32 %i.p, 0
  %.not19 = icmp eq i64 %i.n, 5
  %or.cond20 = and i1 %.not19, %.not.i13
  br i1 %or.cond20, label %Scl_LibertyCompare.exit.thread._crit_edge, label %Scl_LibertyCompare.exit14.thread

Scl_LibertyCompare.exit14.thread:                 ; preds = %Scl_LibertyCompare.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %.022, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %Scl_LibertyCompare.exit.thread._crit_edge, label %Scl_LibertyItem.exit15

Scl_LibertyItem.exit15:                           ; preds = %Scl_LibertyCompare.exit14.thread
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %i.r
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %Scl_LibertyCompare.exit.thread._crit_edge, label %bb.b, !llvm.loop !77

Scl_LibertyCompare.exit.thread._crit_edge:        ; preds = %Scl_LibertyCompare.exit14.thread, %Scl_LibertyItem.exit15, %bb.b, %Scl_LibertyCompare.exit.thread, %bb.a, %Scl_LibertyItem.exit
  %.09 = phi i32 [ 0, %Scl_LibertyItem.exit ], [ 0, %bb.a ], [ 0, %Scl_LibertyCompare.exit14.thread ], [ 1, %Scl_LibertyCompare.exit.thread ], [ 1, %bb.b ], [ 0, %Scl_LibertyItem.exit15 ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Scl_LibertyReadCellIsDontUse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %.fr = freeze i32 %2                            ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %Scl_LibertyItem.exit

Scl_LibertyItem.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %.not29 = icmp eq ptr %i.e, null
  br i1 %.not29, label %.loopexit, label %.lr.ph31

.lr.ph31:                                         ; preds = %Scl_LibertyItem.exit
  %i.g = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.not2127 = icmp sgt i32 %.fr, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %.not2127, label %.lr.ph31.split.us.preheader, label %.lr.ph31.split

.lr.ph31.split.us.preheader:                      ; preds = %.lr.ph31
  %wide.trip.count = zext nneg i32 %.fr to i64
  br label %.lr.ph31.split.us

.lr.ph31.split.us:                                ; preds = %.lr.ph31.split.us.preheader, %Scl_LibertyItem.exit22.us
  %.01730.us = phi ptr [ %i.y, %Scl_LibertyItem.exit22.us ], [ %i.f, %.lr.ph31.split.us.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01730.us, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.01730.us, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %.val.us = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.o = getelementptr inbounds i8, ptr %.val.us, i64 %i.l
  %i.p = sub nsw i64 %i.n, %i.l                   ; 2 uses
  %i.q = tail call i32 @strncmp(ptr noundef readonly %i.o, ptr noundef nonnull @.str.25, i64 noundef %i.p) #34
  %.not.i.us = icmp eq i32 %i.q, 0
  %.not24.us = icmp eq i64 %i.p, 8
  %or.cond.us = and i1 %.not24.us, %.not.i.us
  br i1 %or.cond.us, label %.loopexit, label %Scl_LibertyCompare.exit.thread.us

Scl_LibertyCompare.exit.thread.us:                ; preds = %.lr.ph31.split.us
  %i.r = load i64, ptr %i.h, align 8
  %i.s = load i64, ptr %i.i, align 8
  %i.t = tail call ptr @Scl_LibertyReadString(ptr noundef nonnull %0, i64 %i.r, i64 %i.s)
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_1
