Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/quota_tree?download=true
inline.NumInlined: 86
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@qtree_read_dquot:bb.a
  store i64 %i.p, ptr %i.k, align 8
  br label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.h, %bb.c
  %i.x = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.z, i32 noundef 3264) #7 ; 5 uses
  %.not56 = icmp eq ptr %i.aa, null
  br i1 %.not56, label %bb.r, label %bb.i

bb.i:                                             ; preds = %_kmalloc_noprof.exit
  %i.ab = getelementptr i8, ptr %i.f, i64 48
  %i.ac = load ptr, ptr %i.ab, align 16
  %i.ad = getelementptr i8, ptr %i.ac, i64 152
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i32, ptr %i.x, align 4
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i64, ptr %i.k, align 8
  %i.ai = tail call i64 %i.ae(ptr noundef %i.f, i32 noundef %i.d, ptr noundef nonnull %i.aa, i64 noundef %i.ag, i64 noundef %i.ah) #9
  %i.aj = trunc i64 %i.ai to i32                  ; 4 uses
  %i.ak = load i32, ptr %i.x, align 4
  %.not57 = icmp eq i32 %i.ak, %i.aj
  %i.al = getelementptr i8, ptr %1, i64 128       ; 2 uses
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = icmp sgt i32 %i.aj, -1
  %spec.store.select = select i1 %i.am, i32 -5, i32 %i.aj
  %i.an = load i64, ptr %i.b, align 8
  %i.ao = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, i64 %i.an) #9
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.f, ptr noundef nonnull @__func__.qtree_read_dquot, ptr noundef nonnull @.str.5, i32 noundef %i.ao) #9
  %i.ap = getelementptr i8, ptr %1, i64 120       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ap, i32 8, ptr elementtype(i8) %i.ap) #8, !srcloc !33
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(72) %i.al, i8 0, i64 72, i1 false)
  tail call void @kfree(ptr noundef nonnull %i.aa) #9
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %1, i64 88        ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.aq) #9
  %i.ar = getelementptr i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef %1, ptr noundef nonnull %i.aa) #9
  %i.av = load i64, ptr %i.al, align 8
  %.not58 = icmp eq i64 %i.av, 0
  br i1 %.not58, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr i8, ptr %1, i64 136
  %i.ax = load i64, ptr %i.aw, align 8
  %.not59 = icmp eq i64 %i.ax, 0
  br i1 %.not59, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %1, i64 160
  %i.az = load i64, ptr %i.ay, align 8
  %.not60 = icmp eq i64 %i.az, 0
  br i1 %.not60, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %1, i64 168
  %i.bb = load i64, ptr %i.ba, align 8
  %.not61 = icmp eq i64 %i.bb, 0
  br i1 %.not61, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr i8, ptr %1, i64 120       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.bc, i32 8, ptr elementtype(i8) %i.bc) #8, !srcloc !33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  tail call void @_raw_spin_unlock(ptr noundef %i.aq) #9
  tail call void @kfree(ptr noundef nonnull %i.aa) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j, %bb.g
  %.051 = phi i32 [ %spec.store.select, %bb.j ], [ %i.aj, %bb.p ], [ %.0.i636567, %bb.g ]
  %i.bd = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @dqstats, i64 144), i64 noundef 1, i32 noundef %i.bd) #9
  br label %bb.r

bb.r:                                             ; preds = %_kmalloc_noprof.exit, %bb.q, %bb.b
  %.0 = phi i32 [ %.051, %bb.q ], [ -5, %bb.b ], [ -12, %_kmalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @from_kqid(ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @qtree_release_dquot(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 120
  %i.c = load volatile i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 8
  %.not12 = icmp eq i64 %i.d, 0
  br i1 %.not12, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 176
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %1, i64 144
  %i.h = load i64, ptr %i.g, align 8
  %i.i = or i64 %i.h, %i.f
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.find_dqentry.blks, i64 24, i1 false)
  %i.j = getelementptr i8, ptr %1, i64 112
  %i.k = load i64, ptr %i.j, align 8
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %qtree_delete_dquot.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 36
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp ugt i32 %i.m, 5
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.p, ptr noundef nonnull @__func__.qtree_delete_dquot, ptr noundef nonnull @.str.2) #9
  br label %qtree_delete_dquot.exit

bb.f:                                             ; preds = %bb.d
  %i.q = call fastcc i32 @remove_tree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 0) #10, !srcloc !14
  br label %qtree_delete_dquot.exit

qtree_delete_dquot.exit:                          ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ -5, %bb.e ], [ %i.q, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %qtree_delete_dquot.exit
  %.0 = phi i32 [ %.0.i, %qtree_delete_dquot.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @qtree_get_next_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load i64, ptr %1, align 4
  %i.c = tail call i32 @from_kqid(ptr noundef nonnull @init_user_ns, i64 %i.b) #9
  store i32 %i.c, ptr %i.a, align 4
  %i.d = call fastcc i32 @find_next_id(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 0) #10, !srcloc !34 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %switch.i = icmp ult i32 %i.g, 3
  br i1 %switch.i, label %make_kqid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "369: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 369b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 369) #8, !srcloc !35
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.29, i32 114, i32 0, i64 16) #8, !srcloc !36
  unreachable

make_kqid.exit:                                   ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4
  %.sroa.5.0.insert.ext.i = zext nneg i32 %i.g to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.09.0.insert.ext.i = zext i32 %i.h to i64
  %.sroa.09.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.09.0.insert.ext.i
  store i64 %.sroa.09.0.insert.insert.i, ptr %1, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %make_kqid.exit
  %.0 = phi i32 [ 0, %make_kqid.exit ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @find_next_id(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #2 align 16 prefalign(16) {
_kmalloc_noprof.exit:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64
  %i.d = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4294967296) %i.c, i32 noundef 3264) #7 ; 5 uses
  %i.e = load i32, ptr %i.a, align 8              ; 2 uses
  %i.f = lshr i32 %i.e, 2                         ; 12 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %_kmalloc_noprof.exit
  %i.g = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = add i32 %i.h, -1
  %i.j = icmp ult i32 %3, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %4 = xor i32 %3, -1
  %5 = add i32 %i.h, %4                           ; 2 uses
  %i.k = add i32 %i.h, -2
  %i.l = sub i32 %i.k, %3
  %xtraiter = and i32 %5, 7                       ; 3 uses
  %i.m = icmp ult i32 %i.l, 7
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %5, -8
  %factor.op.mul = mul i32 %i.f, %i.f
  %factor.op.mul174 = mul i32 %factor.op.mul, %i.f
  %factor.op.mul175 = mul i32 %factor.op.mul174, %i.f
  %factor.op.mul176 = mul i32 %factor.op.mul175, %i.f
  %factor.op.mul177 = mul i32 %factor.op.mul176, %i.f
  %factor.op.mul178 = mul i32 %factor.op.mul177, %i.f
  %factor.op.mul179 = mul i32 %factor.op.mul178, %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04885 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %.reass.reass.reass.reass.reass.reass.reass, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i32 %.04885, %factor.op.mul179 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !37

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04885.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.04885.epil = phi i32 [ %i.n, %.lr.ph.epil ], [ %.04885.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.n = mul i32 %.04885.epil, %i.f               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !38

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.048.lcssa = phi i32 [ 1, %.preheader ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil ]
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = zext i32 %i.e to i64                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.p, i1 false)
  %i.q = getelementptr i8, ptr %i.o, i64 48
  %i.r = load ptr, ptr %i.q, align 16
  %i.s = getelementptr i8, ptr %i.r, i64 152
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = zext i32 %2 to i64
  %i.x = getelementptr i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl i64 %i.w, %i.z
  %i.ab = tail call i64 %i.t(ptr noundef %i.o, i32 noundef %i.v, ptr noundef nonnull %i.d, i64 noundef %i.p, i64 noundef %i.aa) #9, !inline_history !1 ; 4 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge
  %i.ad = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.ad, ptr noundef nonnull @__func__.find_next_id, ptr noundef nonnull @.str.27, i32 noundef %2) #9
  br label %.thread75

bb.b:                                             ; preds = %._crit_edge
  %i.ae = load i32, ptr %1, align 4               ; 3 uses
  %.val = load i32, ptr %i.a, align 8             ; 2 uses
  %.val65 = load i32, ptr %i.g, align 4           ; 2 uses
  %i.af = lshr i32 %.val, 2                       ; 6 uses
  %i.ag = xor i32 %3, -1
  %i.ah = add i32 %.val65, %i.ag                  ; 4 uses
  %.not1.i = icmp eq i32 %i.ah, 0
  br i1 %.not1.i, label %__get_index.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.ai = add i32 %.val65, -2
  %i.aj = sub i32 %i.ai, %3
  %xtraiter157 = and i32 %i.ah, 3                 ; 2 uses
  %lcmp.mod158.not = icmp eq i32 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.03.i.prol = phi i32 [ %i.ak, %.lr.ph.i.prol ], [ %i.ah, %.lr.ph.i.preheader ]
  %.072.i.prol = phi i32 [ %i.al, %.lr.ph.i.prol ], [ %i.ae, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ak = add i32 %.03.i.prol, -1                 ; 2 uses
  %i.al = udiv i32 %.072.i.prol, %i.af            ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter157
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !39

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa153.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.al, %.lr.ph.i.prol ]
  %.03.i.unr = phi i32 [ %i.ah, %.lr.ph.i.preheader ], [ %i.ak, %.lr.ph.i.prol ]
  %.072.i.unr = phi i32 [ %i.ae, %.lr.ph.i.preheader ], [ %i.al, %.lr.ph.i.prol ]
  %i.am = icmp ult i32 %i.aj, 3
  br i1 %i.am, label %__get_index.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.03.i = phi i32 [ %i.aq, %.lr.ph.i ], [ %.03.i.unr, %.lr.ph.i.prol.loopexit ]
  %.072.i = phi i32 [ %i.ar, %.lr.ph.i ], [ %.072.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.an = udiv i32 %.072.i, %i.af
  %i.ao = udiv i32 %i.an, %i.af
  %i.ap = udiv i32 %i.ao, %i.af
  %i.aq = add i32 %.03.i, -4                      ; 2 uses
  %i.ar = udiv i32 %i.ap, %i.af                   ; 2 uses
  %.not.i.3 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.3, label %__get_index.exit, label %.lr.ph.i, !llvm.loop !2

__get_index.exit:                                 ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.07.lcssa.i = phi i32 [ %i.ae, %bb.b ], [ %.lcssa153.unr, %.lr.ph.i.prol.loopexit ], [ %i.ar, %.lr.ph.i ]
  %.07.lcssa.i.fr = freeze i32 %.07.lcssa.i       ; 2 uses
  %i.as = urem i32 %.07.lcssa.i.fr, %i.af         ; 2 uses
  %i.at = icmp samesign ult i32 %i.as, %i.f
  br i1 %i.at, label %.lr.ph93, label %.split.loop.exit87

.lr.ph93:                                         ; preds = %__get_index.exit
  %i.au = getelementptr i8, ptr %0, i64 12
  %i.av = add i32 %3, 1
  %i.aw = lshr i32 %.val, 2
  %i.ax = urem i32 %.07.lcssa.i.fr, %i.aw
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = zext nneg i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph93, %select.unfold
  %indvars.iv = phi i64 [ %i.ay, %.lr.ph93 ], [ %indvars.iv.next, %select.unfold ] ; 3 uses
  %.04991 = phi i64 [ %i.ab, %.lr.ph93 ], [ %.150.ph, %select.unfold ]
  %i.ba = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4            ; 4 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = load i32, ptr %1, align 4
  %i.be = add i32 %i.bd, %.048.lcssa
  store i32 %i.be, ptr %1, align 4
  br label %select.unfold

bb.e:                                             ; preds = %bb.c
  %i.bf = load i32, ptr %i.au, align 4
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  %i.bh = icmp ugt i32 %i.bb, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %i.bi, ptr noundef nonnull @__func__.do_check_range, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, i32 noundef %i.bb, i32 noundef 0, i32 noundef %i.bg) #9
  br label %.thread75

bb.g:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.g, align 4
  %i.bk = add i32 %i.bj, -1
  %i.bl = icmp eq i32 %3, %i.bk
  br i1 %i.bl, label %.thread75, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = tail call fastcc i32 @find_next_id(ptr noundef %0, ptr noundef %1, i32 noundef %i.bb, i32 noundef %i.av) #10, !srcloc !41 ; 2 uses
  %.not61 = icmp eq i32 %i.bm, -2
  br i1 %.not61, label %select.unfold, label %.split.loop.exit

select.unfold:                                    ; preds = %bb.h, %bb.d
  %.150.ph = phi i64 [ %.04991, %bb.d ], [ -2, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bn = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.bn, label %bb.c, label %.split.loop.exit87.loopexit, !llvm.loop !40

.split.loop.exit:                                 ; preds = %bb.h
  %i.bo = trunc nuw nsw i64 %indvars.iv to i32
  %i.bp = zext i32 %i.bm to i64
  br label %.split.loop.exit87

.split.loop.exit87.loopexit:                      ; preds = %select.unfold
  %i.bq = trunc nuw i64 %indvars.iv.next to i32
  br label %.split.loop.exit87

.split.loop.exit87:                               ; preds = %.split.loop.exit87.loopexit, %__get_index.exit, %.split.loop.exit
  %.1.lcssa = phi i32 [ %i.bo, %.split.loop.exit ], [ %i.as, %__get_index.exit ], [ %i.bq, %.split.loop.exit87.loopexit ]
  %.2 = phi i64 [ %i.bp, %.split.loop.exit ], [ %i.ab, %__get_index.exit ], [ %.150.ph, %.split.loop.exit87.loopexit ]
  %i.br = icmp eq i32 %.1.lcssa, %i.f
  %spec.select = select i1 %i.br, i64 -2, i64 %.2
  br label %.thread75

.thread75:                                        ; preds = %bb.g, %bb.f, %.split.loop.exit87, %bb.a
  %.3 = phi i64 [ %i.ab, %bb.a ], [ %spec.select, %.split.loop.exit87 ], [ -117, %bb.f ], [ 0, %bb.g ]
  tail call void @kfree(ptr noundef nonnull %i.d) #9
  %i.bs = trunc i64 %.3 to i32
  br label %bb.i

bb.i:                                             ; preds = %_kmalloc_noprof.exit, %.thread75
  %.051 = phi i32 [ %i.bs, %.thread75 ], [ -12, %_kmalloc_noprof.exit ]
  ret i32 %.051
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @do_insert_tree(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #2 align 16 prefalign(16) {
_kmalloc_noprof.exit:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 8 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
end_hunk_0
