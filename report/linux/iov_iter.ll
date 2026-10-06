Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/iov_iter?download=true
inline.NumInlined: 487
inline.NumDeleted: 98
begin_hunk_0_@iov_iter_extract_xarray_pages:bb.a

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i53 = phi i64 [ %i.ca, %bb.o ], [ %i.by, %bb.n ] ; 6 uses
  %.val.i = load i8, ptr %0, align 8
  switch i8 %.val.i, label %iov_iter_advance.exit [
    i8 0, label %bb.q
    i8 5, label %bb.q
    i8 1, label %.critedge.i54
    i8 3, label %.critedge.i54
    i8 2, label %bb.r
    i8 4, label %bb.s
    i8 6, label %bb.t
  ], !prof !45

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.cc = load i64, ptr %i.c, align 8
  %i.cd = add i64 %i.cc, %.0.i53
  store i64 %i.cd, ptr %i.c, align 8
  %i.ce = sub i64 %i.ca, %.0.i53
  store i64 %i.ce, ptr %i.bz, align 8
  br label %iov_iter_advance.exit

.critedge.i54:                                    ; preds = %bb.p, %bb.p
  call fastcc void @iov_iter_iovec_advance(ptr noundef %0, i64 noundef %.0.i53) #16, !srcloc !46
  br label %iov_iter_advance.exit

bb.r:                                             ; preds = %bb.p
  call fastcc void @iov_iter_bvec_advance(ptr noundef %0, i64 noundef %.0.i53) #16, !srcloc !47
  br label %iov_iter_advance.exit

bb.s:                                             ; preds = %bb.p
  call fastcc void @iov_iter_folioq_advance(ptr noundef %0, i64 noundef %.0.i53) #16, !srcloc !48
  br label %iov_iter_advance.exit

bb.t:                                             ; preds = %bb.p
  %i.cf = sub i64 %i.ca, %.0.i53
  store i64 %i.cf, ptr %i.bz, align 8
  br label %iov_iter_advance.exit

iov_iter_advance.exit:                            ; preds = %bb.b, %bb.c, %bb.t, %bb.s, %bb.r, %.critedge.i54, %bb.q, %bb.p, %bb.l, %bb.m
  %.0 = phi i64 [ %i.by, %bb.t ], [ -12, %bb.c ], [ 0, %bb.m ], [ 0, %bb.l ], [ %i.by, %bb.p ], [ %i.by, %bb.q ], [ %i.by, %.critedge.i54 ], [ %i.by, %bb.r ], [ %i.by, %bb.s ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @iov_iter_extract_bvecs(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i16 noundef zeroext %4, i32 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i16, ptr %3, align 2                ; 2 uses
  %i.d = sub i16 %4, %i.c                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !annotation !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.e = zext i16 %i.c to i64
  %i.f = getelementptr [16 x i8], ptr %1, i64 %i.e
  %i.g = zext i16 %i.d to i64
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g
  store ptr %i.h, ptr %i.b, align 8
  %i.i = zext i16 %i.d to i32
  %i.j = call i64 @iov_iter_extract_pages(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %2, i32 noundef %i.i, i32 noundef %5, ptr noundef nonnull %i.a) #16 ; 8 uses
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  %.not47 = icmp eq i64 %i.j, 0
  %i.l = select i1 %.not47, i64 -14, i64 %i.j
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8              ; 2 uses
  %.pre = load i16, ptr %3, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %get_contig_folio_len.exit
  %i.o = phi i16 [ %.pre, %bb.c ], [ %i.br, %get_contig_folio_len.exit ]
  %.03954 = phi i64 [ %i.j, %bb.c ], [ %i.bs, %get_contig_folio_len.exit ] ; 4 uses
  %.04053 = phi i16 [ 0, %bb.c ], [ %i.bp, %get_contig_folio_len.exit ] ; 2 uses
  %i.p = phi i64 [ %i.m, %bb.c ], [ 0, %get_contig_folio_len.exit ] ; 4 uses
  %i.q = zext i16 %.04053 to i64
  %i.r = getelementptr [8 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load volatile i64, ptr %i.t, align 8     ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.w = and i64 %i.u, 1
  %i.x = add nsw i64 %i.w, -1
  %i.y = or i64 %i.x, %i.u
  %i.z = and i64 %i.y, %i.v                       ; 3 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = sub i64 4096, %i.p
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %.03954) ; 3 uses
  %.neg67.i = sub i64 %i.z, %i.v
  %i.ad = load volatile i64, ptr %i.aa, align 8
  %i.ae = and i64 %i.ad, 64
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %folio_size.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.aa, i64 64
  %.val.i.i.i = load i64, ptr %i.af, align 16
  %i.ag = and i64 %.val.i.i.i, 255
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i64 [ %i.ag, %bb.e ], [ 0, %bb.d ]
  %i.ah = shl i64 4096, %.0.i.i.i
  %.neg55.i = shl i64 %.neg67.i, 6
  %.neg56.i = sub i64 %.neg55.i, %i.p
  %i.ai = add i64 %.neg56.i, %i.ah
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %.03954)
  %i.ak = add i64 %i.p, 4095
  %i.al = add i64 %i.ak, %i.aj
  %i.am = lshr i64 %i.al, 12                      ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 1
  br i1 %i.ao, label %.lr.ph.preheader.i, label %get_contig_folio_len.exit

.lr.ph.preheader.i:                               ; preds = %folio_size.exit.i
  %i.ap = sub nuw i64 %.03954, %i.ac
  %wide.trip.count.i = and i64 %i.am, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.04659.i = phi i64 [ %i.ap, %.lr.ph.preheader.i ], [ %i.be, %bb.g ] ; 2 uses
  %.04758.i = phi i64 [ %i.ac, %.lr.ph.preheader.i ], [ %i.bd, %bb.g ] ; 3 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %.04659.i, i64 4096) ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv.i ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load volatile i64, ptr %i.at, align 8   ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = and i64 %i.au, 1
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = or i64 %i.ax, %i.au
  %i.az = and i64 %i.ay, %i.av
  %.not.i = icmp eq i64 %i.az, %i.z
  br i1 %.not.i, label %bb.f, label %.thread.loopexit.split.loop.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr i8, ptr %i.ar, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 64
  %.not50.i = icmp eq ptr %i.as, %i.bc
  br i1 %.not50.i, label %bb.g, label %.thread.loopexit.split.loop.exit69.i

bb.g:                                             ; preds = %bb.f
  %i.bd = add i64 %i.aq, %.04758.i                ; 2 uses
  %i.be = sub i64 %.04659.i, %i.aq
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_contig_folio_len.exit, label %.lr.ph.i, !llvm.loop !168

.thread.loopexit.split.loop.exit.i:               ; preds = %.lr.ph.i
  %i.bf = trunc nuw i64 %indvars.iv.i to i32
  br label %get_contig_folio_len.exit

.thread.loopexit.split.loop.exit69.i:             ; preds = %bb.f
  %i.bg = trunc nuw i64 %indvars.iv.i to i32
  br label %get_contig_folio_len.exit

get_contig_folio_len.exit:                        ; preds = %bb.g, %folio_size.exit.i, %.thread.loopexit.split.loop.exit.i, %.thread.loopexit.split.loop.exit69.i
  %.049.lcssa.i = phi i32 [ 1, %folio_size.exit.i ], [ %i.bg, %.thread.loopexit.split.loop.exit69.i ], [ %i.bf, %.thread.loopexit.split.loop.exit.i ], [ %i.an, %bb.g ]
  %.047.lcssa.i = phi i64 [ %i.ac, %folio_size.exit.i ], [ %.04758.i, %.thread.loopexit.split.loop.exit69.i ], [ %.04758.i, %.thread.loopexit.split.loop.exit.i ], [ %i.bd, %bb.g ] ; 2 uses
  %i.bh = trunc i64 %.047.lcssa.i to i32
  %i.bi = and i64 %.047.lcssa.i, 4294967295
  %i.bj = zext i16 %i.o to i64
  %i.bk = getelementptr [16 x i8], ptr %1, i64 %i.bj ; 3 uses
  %i.bl = trunc i64 %i.p to i32
  store ptr %i.s, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 8
  store i32 %i.bh, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.bk, i64 12
  store i32 %i.bl, ptr %i.bn, align 4
  %i.bo = trunc i32 %.049.lcssa.i to i16
  %i.bp = add i16 %.04053, %i.bo                  ; 3 uses
  %i.bq = load i16, ptr %3, align 2
  %i.br = add i16 %i.bq, 1                        ; 2 uses
  store i16 %i.br, ptr %3, align 2
  %i.bs = sub i64 %.03954, %i.bi                  ; 2 uses
  %.not = icmp eq i64 %i.bs, 0
  br i1 %.not, label %bb.h, label %bb.d, !llvm.loop !169

bb.h:                                             ; preds = %get_contig_folio_len.exit
  tail call void @iov_iter_revert(ptr noundef %0, i64 noundef 0) #16
  %.val = load i8, ptr %0, align 8
  %spec.select.i.i = icmp ult i8 %.val, 2
  br i1 %spec.select.i.i, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h
  %i.bt = add i64 %i.m, %i.j
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %i.bu, 4095
  %i.bw = lshr i32 %i.bv, 12
  %i.bx = and i32 %i.bw, 65535                    ; 2 uses
  %i.by = zext i16 %i.bp to i32
  %i.bz = icmp samesign ugt i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %6 = zext i16 %i.bp to i64
  %wide.trip.count = zext nneg i32 %i.bx to i64
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %.lr.ph.a
  %indvars.iv = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next, %.lr.ph.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void @unpin_user_page(ptr noundef %i.cb) #13
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.a, !llvm.loop !170

.loopexit:                                        ; preds = %.lr.ph.a, %bb.h, %.preheader, %bb.b
  %.042 = phi i64 [ %i.l, %bb.b ], [ %i.j, %bb.h ], [ %i.j, %.preheader ], [ %i.j, %.lr.ph.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i64 %.042
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unpin_user_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @xas_next_entry(ptr noundef %0) unnamed_addr #8 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 3
  %.not.i = icmp ne i64 %i.d, 0
  %.not2.i = icmp eq ptr %i.b, null
  %spec.select.i = or i1 %.not2.i, %.not.i
  br i1 %spec.select.i, label %.loopexit.sink.split, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 8
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %.loopexit.sink.split, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 18         ; 2 uses
  %i.g = load i8, ptr %i.f, align 2               ; 3 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = and i64 %i.j, 63
  %.not26 = icmp eq i64 %i.k, %i.h
  br i1 %.not26, label %.preheader, label %.loopexit.sink.split, !prof !20

.preheader:                                       ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 48
  %i.m = icmp eq i64 %i.j, -1
  %i.n = icmp eq i8 %i.g, 63
  %or.cond1 = or i1 %i.m, %i.n
  br i1 %or.cond1, label %.loopexit.sink.split, label %.lr.ph, !prof !173

bb.d:                                             ; preds = %bb.e
  %i.o = icmp eq i64 %i.z, -1
  %i.p = icmp eq i8 %i.y, 63
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %.loopexit.sink.split, label %.lr.ph, !prof !174, !llvm.loop !172

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.q = phi i64 [ %i.z, %bb.d ], [ %i.j, %.preheader ]
  %i.r = phi i8 [ %i.y, %bb.d ], [ %i.g, %.preheader ] ; 2 uses
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %i.l, i64 %i.s
  %i.u = load volatile ptr, ptr %i.t, align 8     ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 3
  %i.x = icmp eq i64 %i.w, 2
  br i1 %i.x, label %.loopexit.sink.split, label %bb.e, !prof !17

bb.e:                                             ; preds = %.lr.ph
  %i.y = add i8 %i.r, 1                           ; 3 uses
  store i8 %i.y, ptr %i.f, align 2
  %i.z = add nuw i64 %i.q, 1                      ; 3 uses
  store i64 %i.z, ptr %i.i, align 8
  %.not25 = icmp eq ptr %i.u, null
  br i1 %.not25, label %bb.d, label %.loopexit, !llvm.loop !172

.loopexit.sink.split:                             ; preds = %bb.d, %.lr.ph, %.preheader, %bb.c, %bb.a, %bb.b
  %i.aa = tail call ptr @xas_find(ptr noundef %0, i64 noundef -1) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.loopexit.sink.split
  %.0 = phi ptr [ %i.aa, %.loopexit.sink.split ], [ %i.u, %bb.e ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_mc_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_mc_to_kernel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_to_nontemporal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_user_flushcache(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__memcpy_flushcache(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_to_user_nofault(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @want_pages_array(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i64 %1, 4095
  %i.b = add i64 %i.a, %2
  %i.c = lshr i64 %i.b, 12
  %i.d = trunc i64 %i.c to i32
  %spec.select = tail call i32 @llvm.umin.i32(i32 %3, i32 %i.d) ; 3 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "671: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 671b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 671) #14, !srcloc !52
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 904, i32 2305, i64 16) #14, !srcloc !53
  tail call void asm sideeffect "672: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 672b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 672) #14, !srcloc !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8
  %.not24 = icmp eq ptr %i.e, null
  br i1 %.not24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = zext i32 %spec.select to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.g, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #17 ; 2 uses
  store ptr %i.h, ptr %0, align 8
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ %spec.select, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_user_pages_fast(i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @iter_folioq_get_pages(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef range(i32 1, 0) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i8, ptr %i.c, align 8               ; 2 uses
  %i.e = zext nneg i8 %i.d to i32
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ugt i8 %i.d, 30
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.b, i64 288
  %i.l = load ptr, ptr %i.k, align 8
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "673: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 673b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 673) #14, !srcloc !175
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 925, i32 2305, i64 16) #14, !srcloc !176
  tail call void asm sideeffect "674: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 674b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 674) #14, !srcloc !177
  br label %want_pages_array.exit.thread

.critedge:                                        ; preds = %bb.b, %bb.a
  %.080 = phi i32 [ 0, %bb.b ], [ %i.e, %bb.a ]
  %.076 = phi ptr [ %i.l, %bb.b ], [ %i.b, %bb.a ]
  %i.m = and i64 %i.i, 4095                       ; 2 uses
  %i.n = add i64 %2, 4095
  %i.o = add i64 %i.n, %i.m
  %i.p = lshr i64 %i.o, 12
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %3, i32 %i.q) ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0                   ; 2 uses
  br i1 %.not.i, label %bb.d, label %.thread, !prof !17

bb.d:                                             ; preds = %.critedge
  tail call void asm sideeffect "671: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 671b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 671) #14, !srcloc !52
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 904, i32 2305, i64 16) #14, !srcloc !53
  tail call void asm sideeffect "672: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 672b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 672) #14, !srcloc !54
  %i.r = load ptr, ptr %1, align 8
  %.not24.i = icmp eq ptr %i.r, null
  br i1 %.not24.i, label %bb.e, label %want_pages_array.exit.thread

end_hunk_0
