Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ReceiveData:bb.a
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 %i.de
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.df) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %ForceZero.exit.i
  store ptr %i.bw, ptr %i.ck, align 8, !tbaa !141
  store i32 5, ptr %i.cm, align 8, !tbaa !142
  store i8 0, ptr %i.bu, align 4, !tbaa !172
  store i8 0, ptr %i.db, align 1, !tbaa !175
  store i32 0, ptr %i.bz, align 4, !tbaa !174
  store i32 %i.cb, ptr %i.bx, align 16, !tbaa !173
  br label %ShrinkInputBuffer.exit

ShrinkInputBuffer.exit:                           ; preds = %bb.b, %bb.aa, %bb.w, %bb.v, %bb.u, %bb.a, %ssl_in_handshake.exit.thread68, %bb.r, %bb.m, %bb.l, %bb.j
  %.1 = phi i32 [ %i.ai, %ssl_in_handshake.exit.thread68 ], [ -1, %bb.a ], [ 0, %bb.j ], [ 0, %bb.l ], [ %.us-phi, %bb.m ], [ 0, %bb.r ], [ %i.c, %bb.b ], [ %i.bn, %bb.u ], [ %i.bn, %bb.v ], [ %i.bn, %bb.w ], [ %i.bn, %bb.aa ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -387, 1) i32 @SendAlert_ex(ptr noundef nonnull initializes((672, 680)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  store i32 %2, ptr %i.b, align 16, !tbaa !196
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  store i32 %1, ptr %i.c, align 4, !tbaa !195
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.g = load i32, ptr %i.f, align 16, !tbaa !188 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !189  ; 2 uses
  %i.j = add i32 %i.i, %i.g                       ; 3 uses
  %i.k = sub i32 %i.e, %i.j
  %i.l = icmp ult i32 %i.k, 104
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = xor i32 %i.i, -1
  %.not.i.i = icmp ugt i32 %i.g, %i.m
  %.not40.i.i = icmp ugt i32 %i.j, -105
  %or.cond.i = or i1 %.not.i.i, %.not40.i.i
  br i1 %or.cond.i, label %CheckAvailableSize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i32 %i.j, 104                    ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = tail call ptr @wolfSSL_Malloc(i64 noundef %i.o) #27 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %CheckAvailableSize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.f, align 16, !tbaa !188 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.r, 0
  br i1 %.not42.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143
  %i.u = load i32, ptr %i.h, align 4, !tbaa !189
  %i.v = add i32 %i.u, %i.r
  %i.w = zext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.t, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4, !tbaa !176
  %.not43.i.i = icmp eq i8 %i.y, 0
  br i1 %.not43.i.i, label %.thread50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !143 ; 2 uses
  %.not44.i.i = icmp eq ptr %i.aa, null
  br i1 %.not44.i.i, label %.thread50, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 413
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !177
  %i.ad = zext i8 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.af) #27
  br label %.thread50

.thread50:                                        ; preds = %bb.f, %bb.g, %bb.h
  store i8 1, ptr %i.x, align 4, !tbaa !176
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 413
  store i8 0, ptr %i.ag, align 1, !tbaa !177
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !143
  store i32 %i.n, ptr %i.d, align 8, !tbaa !144
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !143 ; 2 uses
  %i.ai = icmp eq ptr %.pre, null
  br i1 %i.ai, label %CheckAvailableSize.exit, label %bb.j

bb.j:                                             ; preds = %.thread50, %bb.i
  %i.aj = phi ptr [ %i.p, %.thread50 ], [ %.pre, %bb.i ]
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !189
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.f, align 16, !tbaa !188
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao ; 7 uses
  %i.aq = trunc i32 %1 to i8
  store i8 %i.aq, ptr %i.a, align 2, !tbaa !52
  %i.ar = trunc i32 %2 to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 %2, ptr %i.at, align 8, !tbaa !478
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 668
  store i32 %1, ptr %i.au, align 4, !tbaa !479
  %i.av = icmp eq i32 %1, 2
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 16
  %i.ay = or i64 %i.ax, 524288
  store i64 %i.ay, ptr %i.aw, align 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !51
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %IsEncryptionOn.exit.thread, label %IsEncryptionOn.exit

IsEncryptionOn.exit:                              ; preds = %bb.l
  %.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 297
  %.in.i = load i8, ptr %.in.in.i, align 1, !tbaa !52
  %.not = icmp eq i8 %.in.i, 0
  br i1 %.not, label %IsEncryptionOn.exit.thread, label %bb.n

IsEncryptionOn.exit.thread:                       ; preds = %bb.l, %IsEncryptionOn.exit
  store i8 21, ptr %i.ap, align 1, !tbaa !260
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !259
  %i.be = load i16, ptr %i.bb, align 2            ; 3 uses
  %i.bf = and i16 %i.be, 255
  %i.bg = icmp ne i16 %i.bf, 3
  %i.bh = icmp ult i16 %i.be, 1024
  %.not15.i = or i1 %i.bh, %i.bg
  %i.bi = lshr i16 %i.be, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  %.sink.i = select i1 %.not15.i, i8 %i.bj, i8 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %.sink.i, ptr %i.bk, align 1, !tbaa !261
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bm = load i64, ptr %i.bl, align 16
  %i.bn = and i64 %i.bm, 131072
  %.not12.i = icmp eq i64 %i.bn, 0
  br i1 %.not12.i, label %bb.m, label %.thread

bb.m:                                             ; preds = %IsEncryptionOn.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  store i8 0, ptr %i.bo, align 1, !tbaa !52
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i8 2, ptr %i.bp, align 1, !tbaa !52
  br label %.thread

.thread:                                          ; preds = %bb.m, %IsEncryptionOn.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.br = load i16, ptr %i.a, align 2
  store i16 %i.br, ptr %i.bq, align 1
  br label %bb.o

bb.n:                                             ; preds = %IsEncryptionOn.exit
  %i.bs = call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, i32 noundef 104, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 21, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %CheckAvailableSize.exit, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %.044 = phi i32 [ 7, %.thread ], [ %i.bs, %bb.n ]
  %i.bu = load i32, ptr %i.f, align 16, !tbaa !188
  %i.bv = add i32 %i.bu, %.044
  store i32 %i.bv, ptr %i.f, align 16, !tbaa !188
  %i.bw = call i32 @SendBuffered(ptr noundef nonnull %0)
  store i32 0, ptr %i.b, align 16, !tbaa !196
  store i32 0, ptr %i.c, align 4, !tbaa !195
  br label %CheckAvailableSize.exit

CheckAvailableSize.exit:                          ; preds = %bb.c, %bb.b, %bb.n, %bb.i, %bb.o
  %.035 = phi i32 [ %i.bw, %bb.o ], [ -320, %bb.n ], [ -132, %bb.i ], [ -125, %bb.b ], [ -125, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define ptr @wolfSSL_ERR_reason_error_string(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = trunc i64 %0 to i32                      ; 2 uses
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 false) ; 5 uses
  %i.c = add i32 %i.b, -97
  %or.cond = icmp ult i32 %i.c, 204
  %i.d = add i32 %i.b, -1000
  %or.cond3 = icmp ult i32 %i.d, 1000
  %or.cond15 = or i1 %or.cond, %or.cond3
  br i1 %or.cond15, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %spec.select = sub nsw i32 0, %i.b
  %i.e = tail call ptr @wc_GetErrorString(i32 noundef %spec.select) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %1 = icmp ne i32 %i.a, 0
  %i.f = icmp ult i32 %i.b, 521
  %or.cond16 = and i1 %1, %i.f
  br i1 %or.cond16, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = sub nuw i32 520, %i.b
  %i.g = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wolfSSL_ERR_reason_error_string, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.c, %bb.b
  %.013 = phi ptr [ %i.e, %bb.b ], [ %switch.load, %switch.lookup ], [ @.str.1, %bb.c ]
  ret ptr %.013
}

declare ptr @wc_GetErrorString(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @wolfSSL_ERR_func_error_string(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.183
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @wolfSSL_ERR_lib_error_string(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.183
}

; Function Attrs: nounwind uwtable
define void @SetErrorString(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call ptr @wolfSSL_ERR_reason_error_string(i64 noundef %i.a)
  %i.c = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 80) #27 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 79
  store i8 0, ptr %i.d, align 1, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @GetCipherNames() local_unnamed_addr #1 {
bb.a:
  ret ptr @cipher_names
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @GetCipherNamesSize() local_unnamed_addr #1 {
bb.a:
  ret i32 27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @GetCipherNameInternal(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #17 {
bb.a:
  switch i8 %0, label %.loopexit [
    i8 19, label %bb.b
    i8 0, label %bb.d
    i8 -64, label %bb.e
    i8 -52, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i8 %1, -1                ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %.loopexit

.fold.split53:                                    ; preds = %bb.d
  br label %bb.c

.fold.split57:                                    ; preds = %bb.d
  br label %bb.c

.fold.split58:                                    ; preds = %bb.d
  br label %bb.c

.fold.split59:                                    ; preds = %bb.d
  br label %bb.c

.fold.split60:                                    ; preds = %bb.d
  br label %bb.c

.fold.split69:                                    ; preds = %bb.f
  br label %bb.c

.fold.split70:                                    ; preds = %bb.f
  br label %bb.c

.fold.split71:                                    ; preds = %bb.f
  br label %bb.c

.fold.split72:                                    ; preds = %bb.f
  br label %bb.c

.fold.split73:                                    ; preds = %bb.f
  br label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GetCipherNameIana, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

switch.hole_check:                                ; preds = %bb.e
  %switch.maskindex = zext nneg i8 %switch.tableidx74 to i64
  %switch.shifted = lshr i64 879595883523, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup76, label %.loopexit

switch.lookup76:                                  ; preds = %switch.hole_check
  %i.c = zext nneg i8 %switch.tableidx74 to i64
  %switch.gep77 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GetCipherNameIana.18, i64 %i.c
  %switch.load78 = load ptr, ptr %switch.gep77, align 8
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup76, %switch.lookup, %bb.f, %.fold.split73, %.fold.split72, %.fold.split71, %.fold.split70, %.fold.split69, %bb.d, %.fold.split60, %.fold.split59, %.fold.split58, %.fold.split57, %.fold.split53
  %.lcssa = phi ptr [ %switch.load, %switch.lookup ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 600), %.fold.split72 ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 624), %.fold.split73 ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 72), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 576), %.fold.split71 ], [ %switch.load78, %switch.lookup76 ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 96), %.fold.split53 ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 552), %.fold.split70 ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 528), %.fold.split69 ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 504), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 216), %.fold.split57 ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 240), %.fold.split58 ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 264), %.fold.split59 ], [ getelementptr inbounds nuw (i8, ptr @cipher_names, i64 288), %.fold.split60 ]
  %i.d = load ptr, ptr %.lcssa, align 8, !tbaa !278
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  switch i8 %1, label %.loopexit [
    i8 51, label %bb.c
    i8 57, label %.fold.split53
    i8 103, label %.fold.split57
    i8 107, label %.fold.split58
    i8 -98, label %.fold.split59
    i8 -97, label %.fold.split60
  ]

bb.e:                                             ; preds = %bb.a
  %switch.tableidx74 = add i8 %1, -9              ; 3 uses
  %i.e = icmp ult i8 %switch.tableidx74, 40
  br i1 %i.e, label %switch.hole_check, label %.loopexit

bb.f:                                             ; preds = %bb.a
  switch i8 %1, label %.loopexit [
    i8 -88, label %bb.c
    i8 -87, label %.fold.split69
    i8 -86, label %.fold.split70
    i8 19, label %.fold.split71
    i8 20, label %.fold.split72
    i8 21, label %.fold.split73
  ]

.loopexit:                                        ; preds = %switch.hole_check, %bb.e, %bb.b, %bb.f, %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ @.str.184, %bb.e ], [ @.str.184, %bb.d ], [ @.str.184, %bb.b ], [ @.str.184, %bb.f ], [ @.str.184, %bb.a ], [ @.str.184, %switch.hole_check ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define ptr @GetCipherNameIana(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #17 {
bb.a:
  switch i8 %0, label %.loopexit [
    i8 19, label %bb.b
    i8 0, label %bb.d
    i8 -64, label %bb.e
    i8 -52, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i8 %1, -1                ; 2 uses
  %i.a = icmp ult i8 %switch.tableidx, 3
  br i1 %i.a, label %switch.lookup, label %.loopexit

.fold.split53:                                    ; preds = %bb.d
  br label %bb.c

.fold.split57:                                    ; preds = %bb.d
  br label %bb.c

.fold.split58:                                    ; preds = %bb.d
  br label %bb.c

.fold.split59:                                    ; preds = %bb.d
  br label %bb.c

.fold.split60:                                    ; preds = %bb.d
  br label %bb.c

.fold.split69:                                    ; preds = %bb.f
  br label %bb.c

.fold.split70:                                    ; preds = %bb.f
  br label %bb.c

.fold.split71:                                    ; preds = %bb.f
  br label %bb.c

.fold.split72:                                    ; preds = %bb.f
  br label %bb.c

.fold.split73:                                    ; preds = %bb.f
  br label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.GetCipherNameIana, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

switch.hole_check:                                ; preds = %bb.e
end_hunk_0
