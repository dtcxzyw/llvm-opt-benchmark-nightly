Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rsrc?download=true
inline.NumInlined: 216
inline.NumDeleted: 92
begin_hunk_0_@io_clone_buffers:bb.a

bb.ac:                                            ; preds = %bb.ab, %._crit_edge147
  %i.dy = phi i32 [ %.pre162, %bb.ab ], [ %i.du, %._crit_edge147 ]
  %.not119 = icmp eq i32 %i.dy, 0
  br i1 %.not119, label %bb.ae, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %bb.ac
  tail call void asm sideeffect "840: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 840b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 840) #15, !srcloc !83
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1394, i32 2307, i64 16) #15, !srcloc !84
  tail call void asm sideeffect "841: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 841b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 841) #15, !srcloc !85
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %io_rsrc_data_alloc.exit.thread

io_rsrc_data_alloc.exit.thread:                   ; preds = %bb.u, %io_cache_free.exit, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.d, %bb.e, %bb.a, %bb.b, %bb.ae
  %.2 = phi i32 [ -22, %bb.a ], [ -6, %bb.h ], [ -22, %bb.k ], [ -22, %bb.e ], [ -75, %bb.l ], [ -75, %bb.m ], [ -22, %bb.n ], [ -12, %bb.o ], [ 0, %bb.ae ], [ -16, %bb.g ], [ -22, %bb.d ], [ -22, %bb.b ], [ -12, %bb.u ], [ %i.cn, %io_cache_free.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @io_vec_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kfree(ptr noundef nonnull %i.a) #16
  store ptr null, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @io_vec_realloc(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
_kmalloc_noprof.exit:
  %i.a = zext i32 %1 to i64
  %i.b = shl nuw nsw i64 %i.a, 4
  %i.c = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -1, 9223372030412324866) %i.b, i32 noundef 4205760) #18 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_kmalloc_noprof.exit
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i17 = icmp eq ptr %i.d, null
  br i1 %.not.i17, label %io_vec_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kfree(ptr noundef nonnull %i.d) #16
  br label %io_vec_free.exit

io_vec_free.exit:                                 ; preds = %bb.a, %bb.b
  store ptr %i.c, ptr %0, align 8
  %i.e = getelementptr i8, ptr %0, i64 8
  store i32 %1, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %_kmalloc_noprof.exit, %io_vec_free.exit
  %.0 = phi i32 [ 0, %io_vec_free.exit ], [ -12, %_kmalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -75, 1) i32 @io_import_reg_vec(i32 noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 96
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %2, i64 72         ; 6 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = and i64 %i.d, 68719476736
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %io_find_buf_node.exit

bb.b:                                             ; preds = %bb.a
  %i.f = or disjoint i64 %i.d, 68719476736
  store i64 %i.f, ptr %i.c, align 8
  %i.g = and i32 %5, 2
  %.not.i.i = icmp eq i32 %i.g, 0                 ; 3 uses
  br i1 %.not.i.i, label %io_ring_submit_lock.exit.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 64
  tail call void @mutex_lock(ptr noundef %i.h) #16
  br label %io_ring_submit_lock.exit.i

io_ring_submit_lock.exit.i:                       ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %i.b, i64 176
  %i.j = getelementptr i8, ptr %2, i64 66
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = load i32, ptr %i.i, align 8              ; 2 uses
  %i.n = icmp ugt i32 %i.m, %i.l
  br i1 %i.n, label %io_rsrc_node_lookup.exit.i, label %io_rsrc_node_lookup.exit.thread.i

io_rsrc_node_lookup.exit.i:                       ; preds = %io_ring_submit_lock.exit.i
  %i.o = getelementptr i8, ptr %i.b, i64 184
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i64 asm sideeffect "cmp $1,$2; sbb $0,$0", "=r,ir,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %i.m, i32 %i.l) #15, !srcloc !33
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, %i.l
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8              ; 5 uses
  %.not19.i = icmp eq ptr %i.v, null
  br i1 %.not19.i, label %io_rsrc_node_lookup.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %io_rsrc_node_lookup.exit.i
  %i.w = getelementptr i8, ptr %i.v, i64 4        ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  %i.z = getelementptr i8, ptr %2, i64 112
  store ptr %i.v, ptr %i.z, align 8
  br i1 %.not.i.i, label %io_find_buf_node.exit.thread104, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.b, i64 64
  tail call void @mutex_unlock(ptr noundef %i.aa) #16
  br label %io_find_buf_node.exit.thread104

io_rsrc_node_lookup.exit.thread.i:                ; preds = %io_rsrc_node_lookup.exit.i, %io_ring_submit_lock.exit.i
  %i.ab = load i64, ptr %i.c, align 8
  %i.ac = and i64 %i.ab, -68719476737
  store i64 %i.ac, ptr %i.c, align 8
  br i1 %.not.i.i, label %.critedge, label %bb.f, !prof !14

bb.f:                                             ; preds = %io_rsrc_node_lookup.exit.thread.i
  %i.ad = getelementptr i8, ptr %i.b, i64 64
  tail call void @mutex_unlock(ptr noundef %i.ad) #16
  br label %.critedge

io_find_buf_node.exit:                            ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %2, i64 112
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.critedge, label %io_find_buf_node.exit.thread104

io_find_buf_node.exit.thread104:                  ; preds = %bb.d, %bb.e, %io_find_buf_node.exit
  %.0.i107 = phi ptr [ %i.af, %io_find_buf_node.exit ], [ %i.v, %bb.e ], [ %i.v, %bb.d ]
  %i.ag = getelementptr i8, ptr %.0.i107, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 13 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 29
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw i32 1, %0
  %i.am = and i32 %i.al, %i.ak
  %.not60 = icmp eq i32 %i.am, 0
  br i1 %.not60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %io_find_buf_node.exit.thread104
  %i.an = getelementptr i8, ptr %3, i64 8         ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = sub i32 %i.ao, %4
  %i.aq = load ptr, ptr %3, align 8               ; 3 uses
  %i.ar = zext i32 %i.ap to i64
  %i.as = getelementptr [16 x i8], ptr %i.aq, i64 %i.ar ; 4 uses
  %i.at = getelementptr i8, ptr %i.ah, i64 28     ; 2 uses
  %i.au = load i8, ptr %i.at, align 4             ; 2 uses
  %i.av = and i8 %i.au, 1
  %.not61 = icmp eq i8 %i.av, 0
  %.not.i69 = icmp eq i32 %4, 0                   ; 2 uses
  br i1 %.not61, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i69, label %io_vec_fill_kern_bvec.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %i.ah, i64 8
  %i.ax = getelementptr i8, ptr %i.ah, i64 16
  %wide.trip.count.i = zext i32 %4 to i64
  br label %bb.i

bb.i:                                             ; preds = %iov_kern_bvec_size.exit.i, %.lr.ph.i
  %i.ay = phi i32 [ 0, %.lr.ph.i ], [ %i.bu, %iov_kern_bvec_size.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %iov_kern_bvec_size.exit.i ] ; 2 uses
  %.01626.i = phi i64 [ 0, %.lr.ph.i ], [ %i.be, %iov_kern_bvec_size.exit.i ]
  %i.az = getelementptr [16 x i8], ptr %i.as, i64 %indvars.iv.i ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8            ; 4 uses
  %.not.i67 = icmp eq i64 %i.bb, 0
  br i1 %.not.i67, label %.critedge, label %bb.j, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.bc = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.01626.i, i64 %i.bb) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  %i.be = extractvalue { i64, i1 } %i.bc, 0       ; 2 uses
  br i1 %i.bd, label %.critedge, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %.val.i = load ptr, ptr %i.az, align 8
  %i.bf = ptrtoint ptr %.val.i to i64             ; 4 uses
  %i.bg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bf, i64 %i.bb) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0       ; 3 uses
  br i1 %i.bh, label %.critedge, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bj = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, %i.bf
  br i1 %i.bk, label %.critedge, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.bl = load i64, ptr %i.aw, align 8
  %i.bm = add i64 %i.bl, %i.bj
  %i.bn = icmp ugt i64 %i.bi, %i.bm
  %i.bo = icmp ugt i64 %i.bb, 2147479552
  %or.cond.i.i = or i1 %i.bo, %i.bn
  br i1 %or.cond.i.i, label %.critedge, label %validate_fixed_range.exit.preheader.i.i, !prof !34

validate_fixed_range.exit.preheader.i.i:          ; preds = %bb.m
  %.not.i.i68 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i68, label %iov_kern_bvec_size.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %validate_fixed_range.exit.preheader.i.i
  %i.bp = load i32, ptr %i.ax, align 8            ; 4 uses
  %exitcond.not.i.i205 = icmp eq i32 %i.bp, 0
  br i1 %exitcond.not.i.i205, label %.critedge.loopexit.i.i.a, label %validate_fixed_range.exit.i.i

bb.n:                                             ; preds = %validate_fixed_range.exit.i.i
  %exitcond.not.i.i = icmp eq i32 %i.bs, %i.bp
  br i1 %exitcond.not.i.i, label %.critedge.loopexit.i.i.a, label %validate_fixed_range.exit.i.i, !llvm.loop !86

validate_fixed_range.exit.i.i:                    ; preds = %.lr.ph.i.i.a, %bb.n
  %.0273.i.i208 = phi i32 [ %.1.i.i, %bb.n ], [ 0, %.lr.ph.i.i.a ]
  %.0264.i.i207 = phi i32 [ %i.bs, %bb.n ], [ 0, %.lr.ph.i.i.a ] ; 3 uses
  %.05.i.i206 = phi i64 [ %.pre13.i.i, %bb.n ], [ 0, %.lr.ph.i.i.a ] ; 2 uses
  %.not31.i.i = icmp ugt i64 %.05.i.i206, %i.bf
  %.phi.trans.insert.i.i = sext i32 %.0264.i.i207 to i64
  %.phi.trans.insert9.i.i = getelementptr [16 x i8], ptr %i.ah, i64 %.phi.trans.insert.i.i
  %.phi.trans.insert10.i.i = getelementptr i8, ptr %.phi.trans.insert9.i.i, i64 56
  %.pre.i.i = load i32, ptr %.phi.trans.insert10.i.i, align 8
  %.pre11.i.i = zext i32 %.pre.i.i to i64
  %.pre13.i.i = add i64 %.05.i.i206, %.pre11.i.i  ; 3 uses
  %i.bq = icmp ule i64 %.pre13.i.i, %i.bf
  %i.br = or i1 %.not31.i.i, %i.bq
  %.1.i.i = select i1 %i.br, i32 %.0273.i.i208, i32 %.0264.i.i207 ; 3 uses
  %i.bs = add i32 %.0264.i.i207, 1                ; 3 uses
  %i.bt = icmp ult i64 %.pre13.i.i, %i.bi
  br i1 %i.bt, label %bb.n, label %validate_fixed_range.exit.i.i..critedge.loopexit.i.i_crit_edge, !llvm.loop !86

validate_fixed_range.exit.i.i..critedge.loopexit.i.i_crit_edge: ; preds = %validate_fixed_range.exit.i.i
  br label %.critedge.loopexit.i.i.a, !llvm.loop !86

.critedge.loopexit.i.i.a:                         ; preds = %bb.n, %validate_fixed_range.exit.i.i..critedge.loopexit.i.i_crit_edge, %.lr.ph.i.i.a
  %.027.lcssa.ph.i.i = phi i32 [ 0, %.lr.ph.i.i.a ], [ %.1.i.i, %validate_fixed_range.exit.i.i..critedge.loopexit.i.i_crit_edge ], [ %.1.i.i, %bb.n ]
  %.026.lcssa.ph.i.i = phi i32 [ %i.bp, %.lr.ph.i.i.a ], [ %i.bs, %validate_fixed_range.exit.i.i..critedge.loopexit.i.i_crit_edge ], [ %i.bp, %bb.n ]
  %6 = sub i32 %.026.lcssa.ph.i.i, %.027.lcssa.ph.i.i
  br label %iov_kern_bvec_size.exit.i

iov_kern_bvec_size.exit.i:                        ; preds = %.critedge.loopexit.i.i.a, %validate_fixed_range.exit.preheader.i.i
  %.1.i = phi i32 [ %6, %.critedge.loopexit.i.i.a ], [ 0, %validate_fixed_range.exit.preheader.i.i ]
  %i.bu = add i32 %.1.i, %i.ay                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.i, !llvm.loop !87

._crit_edge.loopexit.i:                           ; preds = %iov_kern_bvec_size.exit.i
  %i.bv = icmp ugt i64 %i.be, 2147479552
  br i1 %i.bv, label %.critedge, label %io_kern_bvec_size.exit

bb.o:                                             ; preds = %bb.g
  br i1 %.not.i69, label %._crit_edge20.thread.i, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.o
  %i.bw = getelementptr i8, ptr %i.ah, i64 20
  %.val = load i32, ptr %i.bw, align 4
  %i.bx = zext nneg i32 %.val to i64
  %wide.trip.count.i71 = zext i32 %4 to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, %wide.trip.count.i71
  br i1 %exitcond.not.i74, label %._crit_edge.loopexit.i75, label %bb.q, !llvm.loop !88

bb.q:                                             ; preds = %bb.p, %.lr.ph.i70
  %indvars.iv.i72 = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i73, %bb.p ] ; 2 uses
  %.0102.i = phi i64 [ 0, %.lr.ph.i70 ], [ %i.cd, %bb.p ]
  %i.by = getelementptr [16 x i8], ptr %i.as, i64 %indvars.iv.i72
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, %i.bx
  %i.cc = add nuw nsw i64 %.0102.i, 2
  %i.cd = add i64 %i.cc, %i.cb                    ; 3 uses
  %i.ce = icmp ugt i64 %i.cd, 2147483647
  br i1 %i.ce, label %.critedge, label %bb.p

._crit_edge.loopexit.i75:                         ; preds = %bb.p
  %i.cf = trunc nuw nsw i64 %i.cd to i32
  br label %io_kern_bvec_size.exit

io_kern_bvec_size.exit:                           ; preds = %._crit_edge.loopexit.i75, %._crit_edge.loopexit.i
  %.0 = phi i32 [ %i.bu, %._crit_edge.loopexit.i ], [ %i.cf, %._crit_edge.loopexit.i75 ] ; 4 uses
  %i.cg = icmp ugt i32 %.0, %i.ao
  br i1 %i.cg, label %_kmalloc_noprof.exit.i, label %bb.t

_kmalloc_noprof.exit.i:                           ; preds = %io_kern_bvec_size.exit
  %i.ch = zext i32 %.0 to i64
  %i.ci = shl nuw nsw i64 %i.ch, 4
  %i.cj = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -1, 9223372030412324866) %i.ci, i32 noundef 4205760) #18 ; 3 uses
  %.not.i78 = icmp eq ptr %i.cj, null
  br i1 %.not.i78, label %.critedge, label %bb.r

bb.r:                                             ; preds = %_kmalloc_noprof.exit.i
  %i.ck = sub i32 %.0, %4
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr [16 x i8], ptr %i.cj, i64 %i.cl ; 2 uses
  %i.cn = zext i32 %4 to i64
  %i.co = shl nuw nsw i64 %i.cn, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cm, ptr align 8 %i.as, i64 %i.co, i1 false)
  %i.cp = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i80 = icmp eq ptr %i.cp, null
  br i1 %.not.i80, label %io_vec_realloc.exit.thread126, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @kfree(ptr noundef nonnull %i.cp) #16
  br label %io_vec_realloc.exit.thread126

io_vec_realloc.exit.thread126:                    ; preds = %bb.s, %bb.r
  store ptr %i.cj, ptr %3, align 8
  store i32 %.0, ptr %i.an, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %i.cq = load i64, ptr %i.c, align 8
  %i.cr = or i64 %i.cq, 8192
  store i64 %i.cr, ptr %i.c, align 8
  %.pre = load i8, ptr %i.at, align 4
  br label %bb.t

bb.t:                                             ; preds = %io_vec_realloc.exit.thread126, %io_kern_bvec_size.exit
  %i.cs = phi i8 [ %.pre, %io_vec_realloc.exit.thread126 ], [ %i.au, %io_kern_bvec_size.exit ]
  %.153 = phi ptr [ %i.cm, %io_vec_realloc.exit.thread126 ], [ %i.as, %io_kern_bvec_size.exit ] ; 2 uses
  %i.ct = and i8 %i.cs, 1
  %.not64 = icmp eq i8 %i.ct, 0
  %.val66 = load ptr, ptr %3, align 8             ; 7 uses
  br i1 %.not64, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr i8, ptr %i.ah, i64 48     ; 2 uses
  %.not60.i = icmp eq i32 %4, 0
  br i1 %.not60.i, label %io_vec_fill_kern_bvec.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %wide.trip.count.i81 = zext i32 %4 to i64
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.critedge.i, %.lr.ph.preheader.i
  %indvars.iv.i83 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i88, %.critedge.i ] ; 2 uses
  %.02456.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ed, %.critedge.i ]
  %.02555.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.lcssa.i, %.critedge.i ] ; 3 uses
  %i.cv = getelementptr [16 x i8], ptr %.153, i64 %indvars.iv.i83 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cv, i64 8
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = add i64 %i.cz, %i.cx
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = trunc i64 %i.cx to i32                  ; 4 uses
  %.not49.i = icmp ugt i32 %i.dc, %i.db
  br i1 %.not49.i, label %bvec_iter_advance.exit.thread.i, label %.critedge33.i.i, !prof !20

bvec_iter_advance.exit.thread.i:                  ; preds = %.lr.ph.i82
  %i.dd = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, ptr @.str.7, i32 201, i32 2323, i64 16) #15, !srcloc !94
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dd) #16
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !95
  br label %.critedge.i

.critedge33.i.i:                                  ; preds = %.lr.ph.i82
  %i.de = sub nuw i32 %i.db, %i.dc                ; 2 uses
  %.not34.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not34.i.i, label %bvec_iter_advance.exit.i, label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %.critedge33.i.i, %bb.v
  %.02736.i.i = phi i32 [ %i.dj, %bb.v ], [ %i.dc, %.critedge33.i.i ] ; 3 uses
  %.02835.i.i = phi i32 [ %i.dk, %bb.v ], [ 0, %.critedge33.i.i ] ; 3 uses
  %i.df = zext i32 %.02835.i.i to i64
  %i.dg = getelementptr [16 x i8], ptr %i.cu, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %i.di = load i32, ptr %i.dh, align 8            ; 2 uses
  %.not31.i.i85 = icmp ult i32 %.02736.i.i, %i.di
  br i1 %.not31.i.i85, label %bvec_iter_advance.exit.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i84
  %i.dj = sub nuw i32 %.02736.i.i, %i.di          ; 2 uses
  %i.dk = add i32 %.02835.i.i, 1                  ; 2 uses
  %.not.i.i86 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i86, label %bvec_iter_advance.exit.i, label %.lr.ph.i.i84, !llvm.loop !89

bvec_iter_advance.exit.i:                         ; preds = %bb.v, %.lr.ph.i.i84, %.critedge33.i.i
  %.sroa.12.0.i = phi i32 [ 0, %.critedge33.i.i ], [ %i.dk, %bb.v ], [ %.02835.i.i, %.lr.ph.i.i84 ]
  %.sroa.16.0.i = phi i32 [ 0, %.critedge33.i.i ], [ 0, %bb.v ], [ %.02736.i.i, %.lr.ph.i.i84 ]
  %.not50.i = icmp eq i32 %i.de, 0
  br i1 %.not50.i, label %.critedge.i, label %bvec_iter_advance_single.exit.i

bvec_iter_advance_single.exit.i:                  ; preds = %bvec_iter_advance.exit.i, %bvec_iter_advance_single.exit.i
  %.154.i = phi i32 [ %i.dv, %bvec_iter_advance_single.exit.i ], [ %.02555.i, %bvec_iter_advance.exit.i ] ; 2 uses
  %.sroa.16.153.i = phi i32 [ %spec.select48.i, %bvec_iter_advance_single.exit.i ], [ %.sroa.16.0.i, %bvec_iter_advance.exit.i ] ; 3 uses
  %.sroa.12.152.i = phi i32 [ %spec.select.i, %bvec_iter_advance_single.exit.i ], [ %.sroa.12.0.i, %bvec_iter_advance.exit.i ] ; 2 uses
  %.sroa.5.151.i = phi i32 [ %i.ec, %bvec_iter_advance_single.exit.i ], [ %i.de, %bvec_iter_advance.exit.i ] ; 2 uses
  %i.dl = zext i32 %.sroa.12.152.i to i64
  %i.dm = getelementptr [16 x i8], ptr %i.cu, i64 %i.dl ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr i8, ptr %i.dm, i64 8      ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = sub i32 %i.dp, %.sroa.16.153.i
  %i.dr = tail call i32 @llvm.umin.i32(i32 %i.dq, i32 %.sroa.5.151.i) ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dm, i64 12
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = add i32 %i.dt, %.sroa.16.153.i
  %.sroa.4.8.insert.ext.i.i = zext i32 %i.du to i64
  %.sroa.4.8.insert.shift.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i, 32
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.dr to i64
  %.sroa.2.8.insert.insert.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i, %.sroa.2.8.insert.ext.i.i
  %i.dv = add i32 %.154.i, 1                      ; 2 uses
  %i.dw = zext i32 %.154.i to i64
  %i.dx = getelementptr [16 x i8], ptr %.val66, i64 %i.dw ; 2 uses
  store ptr %i.dn, ptr %i.dx, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.dy = add i32 %i.dr, %.sroa.16.153.i          ; 2 uses
  %i.dz = load i32, ptr %i.do, align 8
  %i.ea = icmp eq i32 %i.dy, %i.dz                ; 2 uses
  %i.eb = zext i1 %i.ea to i32
  %spec.select.i = add i32 %.sroa.12.152.i, %i.eb
  %spec.select48.i = select i1 %i.ea, i32 0, i32 %i.dy
  %i.ec = sub nuw i32 %.sroa.5.151.i, %i.dr       ; 2 uses
  %.not.i87 = icmp eq i32 %i.ec, 0
  br i1 %.not.i87, label %.critedge.i, label %bvec_iter_advance_single.exit.i, !llvm.loop !90

.critedge.i:                                      ; preds = %bvec_iter_advance_single.exit.i, %bvec_iter_advance.exit.i, %bvec_iter_advance.exit.thread.i
  %.1.lcssa.i = phi i32 [ %.02555.i, %bvec_iter_advance.exit.i ], [ %.02555.i, %bvec_iter_advance.exit.thread.i ], [ %i.dv, %bvec_iter_advance_single.exit.i ] ; 2 uses
  %i.ed = add i64 %i.cz, %.02456.i                ; 2 uses
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i81
  br i1 %exitcond.not.i89, label %._crit_edge.loopexit.i90, label %.lr.ph.i82, !llvm.loop !91

._crit_edge.loopexit.i90:                         ; preds = %.critedge.i
  %i.ee = zext i32 %.1.lcssa.i to i64
  br label %io_vec_fill_kern_bvec.exit

io_vec_fill_kern_bvec.exit:                       ; preds = %bb.h, %bb.u, %._crit_edge.loopexit.i90
  %.val65138 = phi ptr [ %.val66, %bb.u ], [ %.val66, %._crit_edge.loopexit.i90 ], [ %i.aq, %bb.h ]
  %.025.lcssa.i = phi i64 [ 0, %bb.u ], [ %i.ee, %._crit_edge.loopexit.i90 ], [ 0, %bb.h ]
  %.024.lcssa.i = phi i64 [ 0, %bb.u ], [ %i.ed, %._crit_edge.loopexit.i90 ], [ 0, %bb.h ]
  tail call void @iov_iter_bvec(ptr noundef %1, i32 noundef %0, ptr noundef %.val65138, i64 noundef %.025.lcssa.i, i64 noundef %.024.lcssa.i) #16
  br label %.critedge

bb.w:                                             ; preds = %bb.t
  %i.ef = getelementptr i8, ptr %i.ah, i64 20     ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = shl nuw i32 1, %i.eg
  %i.ei = sext i32 %i.eh to i64                   ; 3 uses
end_hunk_0
