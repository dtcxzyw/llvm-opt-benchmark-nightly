Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_gem_shmem?download=true
inline.NumInlined: 94
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@shmem_sg_free_table:bb.a
bb.j:                                             ; preds = %bb.i
  %.val.i = load i64, ptr %.sroa.0.048, align 8
  %i.ak = and i64 %.val.i, 2
  %.not.i31 = icmp eq i64 %i.ak, 0
  br i1 %.not.i31, label %bb.k, label %__sgt_iter.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr i8, ptr %.sroa.0.048, i64 32 ; 2 uses
  %.val.i.i = load i64, ptr %i.al, align 8        ; 2 uses
  %i.am = trunc i64 %.val.i.i to i1
  br i1 %i.am, label %bb.l, label %__sg_next.exit, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.an = and i64 %.val.i.i, -4
  %i.ao = inttoptr i64 %i.an to ptr
  br label %__sg_next.exit

__sg_next.exit:                                   ; preds = %bb.k, %bb.l
  %i.ap = phi ptr [ %i.al, %bb.k ], [ %i.ao, %bb.l ] ; 5 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %__sgt_iter.exit, label %bb.m

bb.m:                                             ; preds = %__sg_next.exit
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !noalias !21 ; 2 uses
  %.val30 = load i64, ptr %i.ap, align 8
  %i.as = and i64 %.val30, -4
  %i.at = load i64, ptr @vmemmap_base, align 8, !noalias !21
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6
  %i.aw = getelementptr i8, ptr %i.ap, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !21
  %i.ay = add i32 %i.ax, %i.ar
  br label %__sgt_iter.exit

__sgt_iter.exit:                                  ; preds = %bb.j, %bb.m, %__sg_next.exit, %bb.i
  %.sroa.0.1 = phi ptr [ %.sroa.0.048, %bb.i ], [ null, %__sg_next.exit ], [ %i.ap, %bb.m ], [ null, %bb.j ]
  %.sroa.6.1 = phi i64 [ %.sroa.6.049, %bb.i ], [ 0, %__sg_next.exit ], [ %i.av, %bb.m ], [ 0, %bb.j ] ; 3 uses
  %.sroa.8.1 = phi i32 [ %i.aj, %bb.i ], [ 0, %__sg_next.exit ], [ %i.ar, %bb.m ], [ 0, %bb.j ] ; 2 uses
  %.sroa.11.1 = phi i32 [ %.sroa.11.051, %bb.i ], [ 0, %__sg_next.exit ], [ %i.ay, %bb.m ], [ 0, %bb.j ]
  %i.az = icmp eq i64 %.sroa.6.1, 0
  %i.ba = load i64, ptr @vmemmap_base, align 8
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = lshr i32 %.sroa.8.1, 12
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr [64 x i8], ptr %i.bb, i64 %.sroa.6.1
  %i.bf = getelementptr [64 x i8], ptr %i.be, i64 %i.bd ; 2 uses
  %.not45 = icmp eq ptr %i.bf, null
  %.not = select i1 %i.az, i1 true, i1 %.not45
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %__sgt_iter.exit
  %.pre53 = load i8, ptr %4, align 8
  %i.bg = icmp eq i8 %.pre53, 0
  br i1 %i.bg, label %._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  call void @check_move_unevictable_folios(ptr noundef nonnull %4) #9
  call void @__folio_batch_release(ptr noundef nonnull %4) #9
  %i.bh = call i32 @__SCT__cond_resched() #9      ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %__sgt_iter.exit29, %bb.n, %._crit_edge
  call void @sg_free_table(ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @folio_mark_accessed(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @shmem_sg_alloc_table(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i64 %2, 17592186044415
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %2, 12                          ; 5 uses
  %i.c = getelementptr i8, ptr %3, i64 48
  %.val = load i64, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %3, i64 56
  %.val109 = load i64, ptr %i.d, align 8
  %reass.sub = sub i64 %.val109, %.val
  %i.e = add i64 %reass.sub, 1
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw i64 %i.b to i32
  %i.h = tail call i32 @sg_alloc_table(ptr noundef %1, i32 noundef %i.g, i32 noundef 11456) #9
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %4, i64 104        ; 4 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.i, i32 8, ptr elementtype(i8) %i.i) #8, !srcloc !23
  %i.j = getelementptr i8, ptr %4, i64 56         ; 2 uses
  %.val111 = load i32, ptr %i.j, align 8
  %i.k = and i32 %.val111, -76801
  %i.l = or disjoint i32 %i.k, 73728
  %i.m = load ptr, ptr %1, align 8                ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 8          ; 3 uses
  store i32 0, ptr %i.n, align 8
  %.not135 = icmp eq i64 %i.b, 0
  br i1 %.not135, label %._crit_edge133, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.o = shl nuw nsw i64 %i.b, 1
  %i.p = and i64 %i.o, 4294967294
  %i.q = lshr i32 %5, 12
  %i.r = zext nneg i32 %i.q to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.m
  %.084132 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bm, %bb.m ] ; 5 uses
  %.085131 = phi ptr [ %i.m, %.preheader.lr.ph ], [ %.2, %bb.m ] ; 8 uses
  %.087130 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bl, %bb.m ]
  %i.s = tail call i32 @__SCT__cond_resched() #9  ; 0 uses
  %i.t = tail call ptr @shmem_read_folio_gfp(ptr noundef %4, i64 noundef %.084132, i32 noundef %i.l) #9 ; 2 uses
  %i.u = icmp ugt ptr %i.t, inttoptr (i64 -4096 to ptr)
  br i1 %i.u, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.preheader
  %i.v = tail call i64 @i915_gem_shrink(ptr noundef null, ptr noundef %0, i64 noundef %i.p, ptr noundef null, i32 noundef 3) #9 ; 0 uses
  %.val110 = load i32, ptr %i.j, align 8
  %i.w = or i32 %.val110, 24576
  %i.x = tail call i32 @__SCT__cond_resched() #9  ; 0 uses
  %i.y = tail call ptr @shmem_read_folio_gfp(ptr noundef %4, i64 noundef %.084132, i32 noundef %i.w) #9 ; 3 uses
  %i.z = icmp ugt ptr %i.y, inttoptr (i64 -4096 to ptr)
  br i1 %i.z, label %.lr.ph.1, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.lcssa = phi ptr [ %i.t, %.preheader ], [ %i.y, %bb.e ] ; 4 uses
  %i.aa = load volatile i64, ptr %.lcssa, align 8
  %i.ab = and i64 %i.aa, 64
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %folio_nr_pages.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ac = getelementptr i8, ptr %.lcssa, i64 64
  %.val.i = load i64, ptr %i.ac, align 16
  %i.ad = and i64 %.val.i, 255
  %i.ae = shl nuw i64 1, %i.ad
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %._crit_edge, %bb.f
  %.0.i = phi i64 [ %i.ae, %bb.f ], [ 1, %._crit_edge ]
  %i.af = sub nuw nsw i64 %i.b, %.084132
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.af)
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %.0.i) ; 3 uses
  %.not103 = icmp eq i64 %.084132, 0
  br i1 %.not103, label %sg_set_folio.exit, label %bb.g

bb.g:                                             ; preds = %folio_nr_pages.exit
  %i.ai = getelementptr i8, ptr %.085131, i64 12  ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 3 uses
  %.not104 = icmp ult i32 %i.aj, %5
  br i1 %.not104, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr @vmemmap_base, align 8
  %i.al = ptrtoint ptr %.lcssa to i64             ; 2 uses
  %i.am = sub i64 %i.al, %i.ak
  %i.an = ashr exact i64 %i.am, 6
  %.not105 = icmp eq i64 %i.an, %.087130
  br i1 %.not105, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.val.i112 = load i64, ptr %.085131, align 8
  %i.ao = and i64 %.val.i112, 2
  %.not.i113 = icmp eq i64 %i.ao, 0
  br i1 %.not.i113, label %bb.j, label %sg_set_folio.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr i8, ptr %.085131, i64 32  ; 2 uses
  %.val7.i = load i64, ptr %i.ap, align 8         ; 2 uses
  %i.aq = trunc i64 %.val7.i to i1
  br i1 %i.aq, label %bb.k, label %sg_set_folio.exit, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.ar = and i64 %.val7.i, -4
  %i.as = inttoptr i64 %i.ar to ptr
  br label %sg_set_folio.exit

sg_set_folio.exit:                                ; preds = %bb.k, %bb.j, %bb.i, %folio_nr_pages.exit
  %.186 = phi ptr [ %.085131, %folio_nr_pages.exit ], [ null, %bb.i ], [ %i.as, %bb.k ], [ %i.ap, %bb.j ] ; 5 uses
  %i.at = load i32, ptr %i.n, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.n, align 8
  %i.av = ptrtoint ptr %.lcssa to i64             ; 2 uses
  %i.aw = load i64, ptr %.186, align 8
  %i.ax = and i64 %i.aw, 3
  %i.ay = or disjoint i64 %i.ax, %i.av
  store i64 %i.ay, ptr %.186, align 8
  %i.az = getelementptr i8, ptr %.186, i64 8
  store i32 0, ptr %i.az, align 8
  %.tr150 = trunc nuw nsw i64 %i.ah to i32
  %i.ba = shl nuw i32 %.tr150, 12
  %i.bb = getelementptr i8, ptr %.186, i64 12
  store i32 %i.ba, ptr %i.bb, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.bc = sub nuw i32 %5, %i.aj
  %i.bd = lshr i32 %i.bc, 12
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.be) ; 2 uses
  %.tr = trunc nuw nsw i64 %i.bf to i32
  %i.bg = shl nuw i32 %.tr, 12
  %i.bh = add i32 %i.bg, %i.aj
  store i32 %i.bh, ptr %i.ai, align 4
  br label %bb.m

bb.m:                                             ; preds = %sg_set_folio.exit, %bb.l
  %.pre-phi = phi i64 [ %i.av, %sg_set_folio.exit ], [ %i.al, %bb.l ]
  %.097 = phi i64 [ %i.ah, %sg_set_folio.exit ], [ %i.bf, %bb.l ] ; 2 uses
  %.2 = phi ptr [ %.186, %sg_set_folio.exit ], [ %.085131, %bb.l ] ; 2 uses
  %i.bi = load i64, ptr @vmemmap_base, align 8
  %i.bj = sub i64 %.pre-phi, %i.bi
  %i.bk = ashr exact i64 %i.bj, 6
  %i.bl = add nsw i64 %i.bk, %.097
  %i.bm = add i64 %.097, %.084132                 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.b
  br i1 %i.bn, label %.preheader, label %._crit_edge133, !llvm.loop !22

._crit_edge133:                                   ; preds = %bb.m, %bb.d
  %.085.lcssa = phi ptr [ %i.m, %bb.d ], [ %.2, %bb.m ] ; 3 uses
  %.not101 = icmp eq ptr %.085.lcssa, null
  br i1 %.not101, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge133
  %i.bo = load i64, ptr %.085.lcssa, align 8
  %i.bp = and i64 %i.bo, -4
  %i.bq = or disjoint i64 %i.bp, 2
  store i64 %i.bq, ptr %.085.lcssa, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge133
  %i.br = tail call zeroext i1 @i915_sg_trim(ptr noundef %1) #9 ; 0 uses
  br label %bb.s

.lr.ph.1:                                         ; preds = %bb.e
  %i.bs = ptrtoint ptr %i.y to i64
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = load i64, ptr %.085131, align 8
  %i.bv = and i64 %i.bu, -4
  %i.bw = or disjoint i64 %i.bv, 2
  store i64 %i.bw, ptr %.085131, align 8
  %i.bx = load ptr, ptr %1, align 8
  %.not107 = icmp eq ptr %.085131, %i.bx
  br i1 %.not107, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.1
  tail call void @shmem_sg_free_table(ptr noundef %1, ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.1
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.i, i32 -9, ptr elementtype(i8) %i.i) #8, !srcloc !10
  tail call void @sg_free_table(ptr noundef %1) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.by = icmp eq i32 %i.bt, -28
  %spec.store.select = select i1 %i.by, i32 -12, i32 %i.bt
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.r, %bb.o
  %.0 = phi i32 [ 0, %bb.o ], [ -7, %bb.a ], [ -12, %bb.b ], [ -12, %bb.c ], [ %spec.store.select, %bb.r ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @shmem_read_folio_gfp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @i915_gem_shrink(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_sg_trim(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__shmem_writeback(i64 %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.writeback_control, align 8  ; 8 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.b, i8 0, i64 304, i1 false)
  store i64 32, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 9223372036854775807, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.d = call ptr @writeback_iter(ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.e = phi ptr [ %i.p, %bb.e ], [ %i.d, %bb.a ] ; 6 uses
  %i.f = load volatile i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 64
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %i.e, i64 48
  %i.i = load volatile i32, ptr %i.h, align 8     ; 2 uses
  %i.j = icmp slt i32 %i.i, -16777216
  br i1 %i.j, label %folio_mapped.exit.thread, label %folio_mapped.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %i.e, i64 80
  %i.l = load volatile i32, ptr %i.k, align 8
  br label %folio_mapped.exit

folio_mapped.exit:                                ; preds = %bb.b, %bb.c
  %.05.i.i.in = phi i32 [ %i.i, %bb.b ], [ %i.l, %bb.c ]
  %i.m = icmp ult i32 %.05.i.i.in, 2147483647
  br i1 %i.m, label %bb.d, label %folio_mapped.exit.thread

bb.d:                                             ; preds = %folio_mapped.exit
  %i.n = call zeroext i1 @folio_redirty_for_writepage(ptr noundef nonnull %2, ptr noundef nonnull %i.e) #9 ; 0 uses
  br label %bb.e

folio_mapped.exit.thread:                         ; preds = %bb.b, %folio_mapped.exit
  %i.o = call i32 @shmem_writeout(ptr noundef nonnull %i.e, ptr noundef null, ptr noundef null) #9
  store i32 %i.o, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %folio_mapped.exit.thread, %bb.d
  %i.p = call ptr @writeback_iter(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.e, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @writeback_iter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @folio_redirty_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @shmem_writeout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__i915_gem_object_release_shmem(ptr noundef initializes((664, 666)) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 912        ; 2 uses
  %i.d = load i8, ptr %i.c, align 8               ; 2 uses
  %i.e = and i8 %i.d, 3
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = and i8 %i.d, -7
  store i8 %i.g, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %2, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 662
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 1
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 660
  %i.m = load i16, ptr %i.l, align 4
  %i.n = and i16 %i.m, 128
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.g

end_hunk_0
