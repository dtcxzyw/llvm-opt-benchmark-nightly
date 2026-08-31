Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_persist?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zend_persist_op_array_ex:bb.a
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !20 ; 6 uses
  br i1 %.not477, label %bb.ew, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !22
  %i.qm = and i32 %i.ql, 64
  %.not.i486 = icmp eq i32 %i.qm, 0
  br i1 %.not.i486, label %bb.eu, label %zend_string_release_ex.exit487

bb.eu:                                            ; preds = %bb.et
  %i.qn = load i32, ptr %i.qj, align 4, !tbaa !23 ; 2 uses
  %i.qo = icmp ne i32 %i.qn, 0
  call void @llvm.assume(i1 %i.qo)
  %i.qp = add i32 %i.qn, -1                       ; 2 uses
  store i32 %i.qp, ptr %i.qj, align 4, !tbaa !23
  %i.qq = icmp eq i32 %i.qp, 0
  br i1 %i.qq, label %bb.ev, label %zend_string_release_ex.exit487

bb.ev:                                            ; preds = %bb.eu
  call void @_efree(ptr noundef nonnull %i.qj) #6
  %.pre566 = load ptr, ptr %i.po, align 8, !tbaa !297
  br label %zend_string_release_ex.exit487

zend_string_release_ex.exit487:                   ; preds = %bb.et, %bb.eu, %bb.ev
  %i.qr = phi ptr [ %i.qh, %bb.et ], [ %i.qh, %bb.eu ], [ %.pre566, %bb.ev ]
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %indvars.iv549
  store ptr %i.qg, ptr %i.qs, align 8, !tbaa !20
  br label %bb.ff

bb.ew:                                            ; preds = %bb.es
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !12
  %i.qv = add i64 %i.qu, 25
  %i.qw = call ptr @zend_shared_memdup_put(ptr noundef %i.qj, i64 noundef %i.qv) #6 ; 4 uses
  %i.qx = load ptr, ptr %i.po, align 8, !tbaa !297 ; 3 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv549
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !20 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !22
  %i.rc = and i32 %i.rb, 64
  %.not.i = icmp eq i32 %i.rc, 0
  br i1 %.not.i, label %bb.ex, label %zend_string_release_ex.exit

bb.ex:                                            ; preds = %bb.ew
  %i.rd = load i32, ptr %i.qz, align 4, !tbaa !23 ; 2 uses
  %i.re = icmp ne i32 %i.rd, 0
  call void @llvm.assume(i1 %i.re)
  %i.rf = add i32 %i.rd, -1                       ; 2 uses
  store i32 %i.rf, ptr %i.qz, align 4, !tbaa !23
  %i.rg = icmp eq i32 %i.rf, 0
  br i1 %i.rg, label %bb.ey, label %zend_string_release_ex.exit

bb.ey:                                            ; preds = %bb.ex
  call void @_efree(ptr noundef nonnull %i.qz) #6
  %.pre567 = load ptr, ptr %i.po, align 8, !tbaa !297
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.ew, %bb.ex, %bb.ey
  %i.rh = phi ptr [ %i.qx, %bb.ew ], [ %i.qx, %bb.ex ], [ %.pre567, %bb.ey ]
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv549
  store ptr %i.qw, ptr %i.ri, align 8, !tbaa !20
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !96
  %.not.i510 = icmp eq i64 %i.rk, 0
  br i1 %.not.i510, label %bb.ez, label %zend_string_hash_val.exit

bb.ez:                                            ; preds = %zend_string_release_ex.exit
  %i.rl = call i64 @zend_string_hash_func(ptr noundef nonnull %i.qw) #6 ; 0 uses
  %.pre568 = load ptr, ptr %i.po, align 8, !tbaa !297
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre568, i64 %indvars.iv549
  %.pre569 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %zend_string_hash_val.exit

zend_string_hash_val.exit:                        ; preds = %zend_string_release_ex.exit, %bb.ez
  %i.rm = phi ptr [ %i.qw, %zend_string_release_ex.exit ], [ %.pre569, %bb.ez ] ; 3 uses
  store i32 2, ptr %i.rm, align 4, !tbaa !23
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 4 ; 2 uses
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !22
  %i.rp = and i32 %i.ro, 512                      ; 2 uses
  %i.rq = load i8, ptr @file_cache_only, align 1, !tbaa !97, !range !63, !noundef !64
  %i.rr = trunc nuw i8 %i.rq to i1
  br i1 %i.rr, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %zend_string_hash_val.exit
  %i.rs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 400), align 8, !tbaa !41 ; 2 uses
  %.not479 = icmp eq ptr %i.rs, null
  br i1 %.not479, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 400
  %i.ru = load i8, ptr %i.rt, align 8, !tbaa !49, !range !63, !noundef !64
  %i.rv = trunc nuw i8 %i.ru to i1
  br i1 %i.rv, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb, %zend_string_hash_val.exit
  store i32 86, ptr %i.rn, align 4, !tbaa !22
  %i.rw = or disjoint i32 %i.rp, 86
  %.pre570 = load ptr, ptr %i.po, align 8, !tbaa !297
  %.phi.trans.insert571 = getelementptr inbounds nuw [8 x i8], ptr %.pre570, i64 %indvars.iv549
  %.pre572 = load ptr, ptr %.phi.trans.insert571, align 8, !tbaa !20
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb, %bb.fa
  %i.rx = or disjoint i32 %i.rp, 342
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.ry = phi ptr [ %.pre572, %bb.fc ], [ %i.rm, %bb.fd ]
  %.0357 = phi i32 [ %i.rw, %bb.fc ], [ %i.rx, %bb.fd ]
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  store i32 %.0357, ptr %i.rz, align 4, !tbaa !22
  br label %bb.ff

bb.ff:                                            ; preds = %zend_string_release_ex.exit487, %bb.fe, %bb.er
  %indvars.iv.next550 = add nuw nsw i64 %indvars.iv549, 1 ; 2 uses
  %i.sa = load i32, ptr %i.pq, align 4, !tbaa !312
  %i.sb = sext i32 %i.sa to i64
  %i.sc = icmp slt i64 %indvars.iv.next550, %i.sb
  br i1 %i.sc, label %.lr.ph539, label %.loopexit522, !llvm.loop !313

.loopexit522:                                     ; preds = %bb.ff, %bb.eq, %bb.ep
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !233 ; 2 uses
  %.not475 = icmp eq i32 %i.se, 0
  br i1 %.not475, label %.sink.split, label %bb.fg

bb.fg:                                            ; preds = %.loopexit522
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !234
  %i.sh = zext i32 %i.se to i64
  %i.si = shl nuw nsw i64 %i.sh, 3
  %i.sj = call ptr @zend_shared_memdup_put_free(ptr noundef %i.sg, i64 noundef %i.si) #6 ; 2 uses
  store ptr %i.sj, ptr %i.sf, align 8, !tbaa !234
  %i.sk = load i32, ptr %i.sd, align 4, !tbaa !233
  %.not547 = icmp eq i32 %i.sk, 0
  br i1 %.not547, label %.sink.split, label %.lr.ph542

.lr.ph542:                                        ; preds = %bb.fg
  %i.sl = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.fh

bb.fh:                                            ; preds = %.lr.ph542, %bb.fh
  %i.sm = phi ptr [ %i.sj, %.lr.ph542 ], [ %i.sq, %bb.fh ]
  %indvars.iv552 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next553, %bb.fh ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %indvars.iv552
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !235
  store ptr %i.so, ptr %3, align 8, !tbaa !22
  store i32 13, ptr %i.sl, align 8, !tbaa !22
  call fastcc void @zend_persist_op_array(ptr noundef nonnull %3)
  %i.sp = load ptr, ptr %3, align 8, !tbaa !22
  %i.sq = load ptr, ptr %i.sf, align 8, !tbaa !234 ; 2 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %indvars.iv552
  store ptr %i.sp, ptr %i.sr, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1 ; 2 uses
  %i.ss = load i32, ptr %i.sd, align 4, !tbaa !233
  %i.st = zext i32 %i.ss to i64
  %i.su = icmp samesign ult i64 %indvars.iv.next553, %i.st
  br i1 %i.su, label %bb.fh, label %.sink.split, !llvm.loop !314

.sink.split:                                      ; preds = %bb.fh, %.loopexit522, %bb.fg, %bb.ba, %bb.bb
  %i.sv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !172 ; 2 uses
  %i.sw = call i64 @zend_extensions_op_array_persist(ptr noundef nonnull %0, ptr noundef %i.sv) #6
  %i.sx = add i64 %i.sw, 7
  %i.sy = and i64 %i.sx, -8
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sy
  store ptr %i.sz, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 392), align 8, !tbaa !172
  br label %bb.fi

bb.fi:                                            ; preds = %.sink.split, %bb.bd
  ret void
}

declare i32 @zend_jit_op_array(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zend_jit_script(ptr noundef) local_unnamed_addr #2

declare void @zend_jit_protect() local_unnamed_addr #2

declare void @_efree(ptr noundef) local_unnamed_addr #2

declare i64 @zend_string_hash_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @zend_map_ptr_new_static() local_unnamed_addr #2

declare zeroext i1 @zend_accel_in_shm(ptr noundef) local_unnamed_addr #2

declare void @gc_remove_from_buffer(ptr noundef) local_unnamed_addr #2

declare ptr @zend_shared_memdup_put_free(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @zend_persist_ast(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct._zval_struct, align 8       ; 6 uses
  %i.a = load i16, ptr %0, align 8, !tbaa !315    ; 6 uses
  %i.b = and i16 %i.a, -2
  %switch = icmp eq i16 %i.b, 64
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @zend_shared_memdup(ptr noundef nonnull %0, i64 noundef 24) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call fastcc void @zend_persist_zval(ptr noundef nonnull %i.d)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = and i16 %i.a, 128
  %.not46 = icmp eq i16 %i.e, 0
  br i1 %.not46, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !318
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = add nuw nsw i64 %i.i, 16
  %i.k = tail call ptr @zend_shared_memdup(ptr noundef nonnull %0, i64 noundef %i.j) #6 ; 3 uses
  %i.l = load i32, ptr %i.f, align 8, !tbaa !318  ; 2 uses
  %.not53 = icmp eq i32 %i.l, 0
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.n = phi i32 [ %i.l, %.lr.ph ], [ %i.r, %bb.g ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !320  ; 2 uses
  %.not45 = icmp eq ptr %i.p, null
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc ptr @zend_persist_ast(ptr noundef nonnull %i.p)
  store ptr %i.q, ptr %i.o, align 8, !tbaa !320
  %.pre = load i32, ptr %i.f, align 8, !tbaa !318
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.r = phi i32 [ %i.n, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.e, label %.loopexit, !llvm.loop !321

bb.h:                                             ; preds = %bb.c
  switch i16 %i.a, label %zend_ast_is_decl.exit [
    i16 66, label %bb.i
    i16 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.u = tail call ptr @zend_shared_memdup(ptr noundef nonnull %0, i64 noundef 16) #6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !322
  store ptr %i.w, ptr %1, align 8, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 13, ptr %i.x, align 8, !tbaa !22
  call fastcc void @zend_persist_op_array(ptr noundef nonnull %1)
  %i.y = load ptr, ptr %1, align 8, !tbaa !22
  store ptr %i.y, ptr %i.v, align 8, !tbaa !322
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.z = tail call ptr @zend_shared_memdup(ptr noundef nonnull %0, i64 noundef 16) #6
  br label %.loopexit

zend_ast_is_decl.exit:                            ; preds = %bb.h
  %2 = and i16 %i.a, 64
  %3 = icmp eq i16 %2, 0
  %4 = icmp ult i16 %i.a, 68
  %spec.select.not = or i1 %4, %3
  tail call void @llvm.assume(i1 %spec.select.not)
  %i.aa = lshr i16 %i.a, 8                        ; 3 uses
  %i.ab = shl nuw nsw i16 %i.aa, 3
  %narrow = add nuw nsw i16 %i.ab, 8
  %i.ac = zext nneg i16 %narrow to i64
  %i.ad = tail call ptr @zend_shared_memdup(ptr noundef nonnull %0, i64 noundef %i.ac) #6 ; 3 uses
  %.not54 = icmp eq i16 %i.aa, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph52

.lr.ph52:                                         ; preds = %zend_ast_is_decl.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %wide.trip.count = zext nneg i16 %i.aa to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph52, %bb.m
  %indvars.iv57 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next58, %bb.m ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv57 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !320 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call fastcc ptr @zend_persist_ast(ptr noundef nonnull %i.ag)
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !320
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !324

.loopexit:                                        ; preds = %bb.g, %bb.m, %bb.d, %zend_ast_is_decl.exit, %bb.j, %bb.i, %bb.b
  %.040 = phi ptr [ %i.c, %bb.b ], [ %i.ad, %zend_ast_is_decl.exit ], [ %i.u, %bb.i ], [ %i.z, %bb.j ], [ %i.k, %bb.d ], [ %i.ad, %bb.m ], [ %i.k, %bb.g ]
  ret ptr %.040
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_persist_type(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !325  ; 3 uses
  %i.c = and i32 %i.b, 4194304
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !326    ; 5 uses
  %i.e = and i32 %i.b, 1048576
  %.not54 = icmp eq i32 %i.e, 0
  br i1 %.not54, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call zeroext i1 @zend_accel_in_shm(ptr noundef %i.d) #6
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load i32, ptr %i.d, align 8, !tbaa !327
  %i.h = add i32 %i.g, -1
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.j, 24
  %i.l = tail call ptr @zend_shared_memdup_put(ptr noundef nonnull %i.d, i64 noundef %i.k) #6
  %i.m = load i32, ptr %i.a, align 8, !tbaa !325
  %i.n = and i32 %i.m, -1048577                   ; 2 uses
  store i32 %i.n, ptr %i.a, align 8, !tbaa !325
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !327
  %i.p = add i32 %i.o, -1
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = add nuw nsw i64 %i.r, 24
  %i.t = tail call ptr @zend_shared_memdup_put_free(ptr noundef nonnull %i.d, i64 noundef %i.s) #6
  %.pre.pre = load i32, ptr %i.a, align 8, !tbaa !325
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre = phi i32 [ %i.n, %bb.d ], [ %.pre.pre, %bb.e ]
  %.046 = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ]
  store ptr %.046, ptr %0, align 8, !tbaa !326
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.u = phi i32 [ %.pre, %bb.f ], [ %i.b, %bb.a ]
  %i.v = and i32 %i.u, 4194304
  %.not55 = icmp eq i32 %i.v, 0
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %0, align 8, !tbaa !326    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.w, align 8, !tbaa !327
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.z
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.048 = phi ptr [ %i.x, %bb.h ], [ %0, %bb.i ]
  %.047 = phi ptr [ %i.aa, %bb.h ], [ %i.ab, %bb.i ]
  br label %bb.k

bb.k:                                             ; preds = %zend_accel_get_class_name_map_ptr.exit, %bb.j
  %.149 = phi ptr [ %.048, %bb.j ], [ %i.db, %zend_accel_get_class_name_map_ptr.exit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.149, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !325 ; 2 uses
  %i.ae = and i32 %i.ad, 4194304
  %.not56 = icmp eq i32 %i.ae, 0
  br i1 %.not56, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @zend_persist_type(ptr noundef nonnull %.149)
  br label %zend_accel_get_class_name_map_ptr.exit

bb.m:                                             ; preds = %bb.k
  %i.af = and i32 %i.ad, 16777216
  %.not57 = icmp eq i32 %i.af, 0
  br i1 %.not57, label %zend_accel_get_class_name_map_ptr.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %.149, align 8, !tbaa !326 ; 14 uses
  %i.ah = load ptr, ptr @accel_shared_globals, align 8, !tbaa !86 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !88
  %.not58 = icmp ult ptr %i.ag, %i.aj
  br i1 %.not58, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.am = icmp ult ptr %i.ag, %i.al
  br i1 %i.am, label %zend_string_release_ex.exit63, label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.an = tail call ptr @zend_shared_alloc_get_xlat_entry(ptr noundef %i.ag) #6 ; 4 uses
  %.not59 = icmp eq ptr %i.an, null
  br i1 %.not59, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !22
  %i.aq = and i32 %i.ap, 64
  %.not.i62 = icmp eq i32 %i.aq, 0
  br i1 %.not.i62, label %bb.r, label %zend_string_release_ex.exit63

bb.r:                                             ; preds = %bb.q
  %i.ar = load i32, ptr %i.ag, align 4, !tbaa !23 ; 2 uses
  %i.as = icmp ne i32 %i.ar, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ag, align 4, !tbaa !23
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.s, label %zend_string_release_ex.exit63

bb.s:                                             ; preds = %bb.r
  tail call void @_efree(ptr noundef nonnull %i.ag) #6
  br label %zend_string_release_ex.exit63

bb.t:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !12
  %i.ax = add i64 %i.aw, 25
  %i.ay = tail call ptr @zend_shared_memdup_put(ptr noundef %i.ag, i64 noundef %i.ax) #6 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22
  %i.bb = and i32 %i.ba, 64
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %bb.u, label %zend_string_release_ex.exit

bb.u:                                             ; preds = %bb.t
  %i.bc = load i32, ptr %i.ag, align 8, !tbaa !23 ; 2 uses
  %i.bd = icmp ne i32 %i.bc, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.be, ptr %i.ag, align 8, !tbaa !23
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.v, label %zend_string_release_ex.exit

bb.v:                                             ; preds = %bb.u
  tail call void @_efree(ptr noundef nonnull %i.ag) #6
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.t, %bb.u, %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !96
  %.not.i64 = icmp eq i64 %i.bh, 0
  br i1 %.not.i64, label %bb.w, label %zend_string_hash_val.exit

bb.w:                                             ; preds = %zend_string_release_ex.exit
  %i.bi = tail call i64 @zend_string_hash_func(ptr noundef nonnull %i.ay) #6 ; 0 uses
  br label %zend_string_hash_val.exit

zend_string_hash_val.exit:                        ; preds = %zend_string_release_ex.exit, %bb.w
  store i32 2, ptr %i.ay, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !22
  %i.bl = and i32 %i.bk, 512
end_hunk_0
