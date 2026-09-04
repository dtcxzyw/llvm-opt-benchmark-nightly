Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/st?download=true
inline.NumInlined: 263
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rb_hash_bulk_insert_into_st_table:bb.a
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.b, label %st_expand_table.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.j = tail call noalias nonnull dereferenceable(56) ptr @ruby_xmalloc(i64 noundef 56) #23 ; 7 uses
  %i.k = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.j, ptr noundef %i.i, i64 noundef %i.e) ; 0 uses
  %.val.i = load i8, ptr %i.b, align 8, !tbaa !34
  %i.l = zext nneg i8 %.val.i to i64
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.m, i64 range(i64 1, 25) 24) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  br i1 %i.o, label %bb.c, label %rbimpl_size_mul_or_raise.exit.i, !prof !65

bb.c:                                             ; preds = %bb.b
  tail call void @ruby_malloc_size_overflow(i64 noundef 24, i64 noundef %i.m) #22
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.b, i64 48       ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42   ; 2 uses
  %i.t = extractvalue { i64, i1 } %i.n, 0
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.s, ptr noundef nonnull readonly align 1 %i.q, i64 noundef range(i64 1, 0) %i.t, i1 noundef false) #24
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !42
  tail call void @ruby_xfree(ptr noundef %.pre.i) #24
  %i.u = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  tail call void @ruby_xfree(ptr noundef %i.v) #24
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  tail call void @ruby_xfree(ptr noundef %i.x) #24
  %i.y = load i8, ptr %i.j, align 8, !tbaa !34
  store i8 %i.y, ptr %i.b, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = getelementptr i8, ptr %i.b, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !39
  %i.ae = getelementptr i8, ptr %i.b, i64 2
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !39
  store ptr %i.s, ptr %i.p, align 8, !tbaa !42
  store ptr null, ptr %i.u, align 8, !tbaa !41
  %i.af = getelementptr i8, ptr %i.b, i64 4       ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !44
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !44
  tail call void @ruby_xfree(ptr noundef nonnull %i.j) #24
  br label %st_expand_table.exit

st_expand_table.exit:                             ; preds = %bb.a, %rbimpl_size_mul_or_raise.exit.i
  %i.ai = getelementptr i8, ptr %i.b, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !43
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !106

bb.d:                                             ; preds = %st_expand_table.exit
  tail call fastcc void @st_insert_generic(ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %st_insert_linear.exit

bb.e:                                             ; preds = %st_expand_table.exit
  %i.ak = icmp slt i64 %0, 3
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %1, align 8, !tbaa !27
  %i.am = getelementptr i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !27
  tail call fastcc void @st_insert_single(ptr noundef nonnull %i.b, i64 noundef %2, i64 noundef %i.al, i64 noundef %i.an)
  br label %st_insert_linear.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr i8, ptr %i.b, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.aq = icmp ult i8 %i.ap, 5
  br i1 %i.aq, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.g, %rb_obj_written.exit12.i
  %.013.i = phi i64 [ %i.be, %rb_obj_written.exit12.i ], [ 0, %bb.g ] ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %1, i64 %.013.i ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !27 ; 8 uses
  %i.at = tail call i64 @rb_obj_class(i64 noundef %i.as) #24
  %i.au = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.av = icmp eq i64 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %st_stringify.exit.i

bb.h:                                             ; preds = %.preheader
  %i.aw = icmp ne i64 %i.as, 0
  %i.ax = and i64 %i.as, 7
  %i.ay = icmp eq i64 %i.ax, 0
  %.not3.i.i.i = and i1 %i.aw, %i.ay
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %st_stringify.exit.i

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.h
  %i.az = inttoptr i64 %i.as to ptr
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !74
  %i.bb = and i64 %i.ba, 2048
  %.not.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i, label %bb.i, label %st_stringify.exit.i

bb.i:                                             ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.bc = tail call i64 @rb_hash_key_str(i64 noundef %i.as) #24
  br label %st_stringify.exit.i

st_stringify.exit.i:                              ; preds = %bb.i, %RB_OBJ_FROZEN.exit.i.i, %bb.h, %.preheader
  %i.bd = phi i64 [ %i.bc, %bb.i ], [ %i.as, %RB_OBJ_FROZEN.exit.i.i ], [ %i.as, %.preheader ], [ %i.as, %bb.h ] ; 4 uses
  %i.be = add i64 %.013.i, 2                      ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ar, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !27 ; 4 uses
  %i.bh = tail call i32 @rb_st_insert(ptr noundef nonnull %i.b, i64 noundef %i.bd, i64 noundef %i.bg) ; 0 uses
  %i.bi = icmp eq i64 %i.bd, 0
  %i.bj = and i64 %i.bd, 7
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %rb_obj_written.exit.i, label %bb.j

bb.j:                                             ; preds = %st_stringify.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.bd) #24
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.j, %st_stringify.exit.i
  %i.bm = icmp eq i64 %i.bg, 0
  %i.bn = and i64 %i.bg, 7
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %i.bm, %i.bo
  br i1 %i.bp, label %rb_obj_written.exit12.i, label %bb.k

bb.k:                                             ; preds = %rb_obj_written.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.bg) #24
  br label %rb_obj_written.exit12.i

rb_obj_written.exit12.i:                          ; preds = %bb.k, %rb_obj_written.exit.i
  %i.bq = icmp slt i64 %i.be, %0
  br i1 %i.bq, label %.preheader, label %st_insert_linear.exit, !llvm.loop !105

bb.l:                                             ; preds = %bb.g
  tail call fastcc void @st_insert_generic(ptr noundef nonnull %i.b, i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %st_insert_linear.exit

st_insert_linear.exit:                            ; preds = %rb_obj_written.exit12.i, %bb.f, %bb.l, %bb.d
  ret void
}

declare ptr @rb_hash_tbl_raw(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @st_insert_generic(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.019 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27
  %i.d = add i64 %.019, 2                         ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27
  tail call fastcc void @st_insert_single(ptr noundef %0, i64 noundef %3, i64 noundef %i.c, i64 noundef %i.f)
  %i.g = icmp slt i64 %i.d, %1
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = getelementptr i8, ptr %0, i64 1          ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 2
  %i.j = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 32         ; 6 uses
  %i.l = getelementptr i8, ptr %0, i64 40         ; 6 uses
  %i.m = getelementptr i8, ptr %0, i64 48         ; 6 uses
  %i.n = getelementptr i8, ptr %0, i64 4          ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 16         ; 4 uses
  br label %st_rehash_linear.exit.i

st_rehash_linear.exit.i.backedge:                 ; preds = %bb.x, %bb.f
  br label %st_rehash_linear.exit.i

st_rehash_linear.exit.i:                          ; preds = %st_rehash_linear.exit.i.backedge, %._crit_edge
  %i.q = load i8, ptr %i.h, align 1, !tbaa !37
  %i.r = icmp ult i8 %i.q, 5
  br i1 %i.r, label %bb.b, label %bb.j

bb.b:                                             ; preds = %st_rehash_linear.exit.i
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !41
  tail call void @ruby_xfree(ptr noundef %i.s) #24
  store ptr null, ptr %i.j, align 8, !tbaa !41
  %i.t = load i64, ptr %i.k, align 8, !tbaa !48   ; 2 uses
  %i.u = load i64, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.v = icmp ult i64 %i.t, %i.u
  br i1 %i.v, label %.lr.ph48.i.i, label %st_rehash.exit

.lr.ph48.i.i:                                     ; preds = %bb.b, %.loopexit.i.i
  %i.w = phi i64 [ %i.bh, %.loopexit.i.i ], [ %i.u, %bb.b ] ; 4 uses
  %.03446.i.i = phi i64 [ %.pre52.i.i, %.loopexit.i.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.y = getelementptr [24 x i8], ptr %i.x, i64 %.03446.i.i ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !50
  %4 = icmp eq i64 %i.z, -1
  %.pre52.i.i = add nuw i64 %.03446.i.i, 1        ; 4 uses
  br i1 %4, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph48.i.i
  %5 = icmp ult i64 %.pre52.i.i, %i.w
  br i1 %5, label %.lr.ph.i.i, label %st_rehash.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  br label %bb.c

bb.c:                                             ; preds = %update_range_for_deleted.exit.i.i, %.lr.ph.i.i
  %i.ab = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.be, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %i.ac = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.bf, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %.045.i.i = phi i64 [ %.pre52.i.i, %.lr.ph.i.i ], [ %.0.i.i, %update_range_for_deleted.exit.i.i ] ; 5 uses
  %.0.in44.i.i = phi i64 [ %.03446.i.i, %.lr.ph.i.i ], [ %.045.i.i, %update_range_for_deleted.exit.i.i ]
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.ae = getelementptr [24 x i8], ptr %i.ad, i64 %.045.i.i ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %i.ag = icmp eq i64 %i.af, -1
  br i1 %i.ag, label %update_range_for_deleted.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.n, align 4, !tbaa !44
  %i.ai = load i64, ptr %i.y, align 8, !tbaa !50
  %i.aj = icmp eq i64 %i.ai, %i.af
  br i1 %i.aj, label %bb.e, label %update_range_for_deleted.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr i8, ptr %i.ae, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.am = load i64, ptr %i.aa, align 8, !tbaa !51 ; 2 uses
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %.thread63.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52
  %i.aq = tail call i32 %i.ap(i64 noundef %i.al, i64 noundef %i.am) #24, !inline_history !108
  %.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !44
  %i.ar = icmp eq i32 %i.ah, %.pre.i.i
  br i1 %i.ar, label %bb.g, label %st_rehash_linear.exit.i.backedge, !prof !66, !llvm.loop !109

bb.g:                                             ; preds = %bb.f
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %.thread63.i.i, label %.update_range_for_deleted.exit_crit_edge.i.i

.update_range_for_deleted.exit_crit_edge.i.i:     ; preds = %bb.g
  %.pre50.i.i = load i64, ptr %i.l, align 8, !tbaa !47 ; 2 uses
  br label %update_range_for_deleted.exit.i.i

.thread63.i.i:                                    ; preds = %bb.g, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !tbaa.struct !75
  store i64 -1, ptr %i.ae, align 8, !tbaa !50
  %i.at = load i64, ptr %i.p, align 8, !tbaa !43
  %i.au = add i64 %i.at, -1
  store i64 %i.au, ptr %i.p, align 8, !tbaa !43
  %i.av = load i64, ptr %i.k, align 8, !tbaa !48
  %i.aw = icmp eq i64 %i.av, %.045.i.i
  %.pre51.i.i = load i64, ptr %i.l, align 8, !tbaa !47 ; 7 uses
  br i1 %i.aw, label %bb.h, label %update_range_for_deleted.exit.i.i

bb.h:                                             ; preds = %.thread63.i.i
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.ay = add i64 %.0.in44.i.i, 2
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.pre51.i.i, i64 %i.ay) ; 2 uses
  %.0.i.i.i67 = add nuw i64 %.045.i.i, 1          ; 2 uses
  %i.az = icmp ult i64 %.0.i.i.i67, %.pre51.i.i
  br i1 %i.az, label %.lr.ph70, label %.critedge.i.i.i

bb.i:                                             ; preds = %.lr.ph70
  %.0.i.i.i = add nuw i64 %.0.i.i.i68, 1          ; 2 uses
  %i.ba = icmp ult i64 %.0.i.i.i, %.pre51.i.i
  br i1 %i.ba, label %.lr.ph70, label %.critedge.i.i.i, !llvm.loop !5

.lr.ph70:                                         ; preds = %bb.h, %bb.i
  %.0.i.i.i68 = phi i64 [ %.0.i.i.i, %bb.i ], [ %.0.i.i.i67, %bb.h ] ; 3 uses
  %i.bb = getelementptr [24 x i8], ptr %i.ax, i64 %.0.i.i.i68
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !50
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %bb.i, label %..critedge.i.i.i_crit_edge, !llvm.loop !5

..critedge.i.i.i_crit_edge:                       ; preds = %.lr.ph70
  br label %.critedge.i.i.i, !llvm.loop !5

.critedge.i.i.i:                                  ; preds = %bb.i, %..critedge.i.i.i_crit_edge, %bb.h
  %.0.lcssa.i.i.i = phi i64 [ %umax.i.i.i, %bb.h ], [ %.0.i.i.i68, %..critedge.i.i.i_crit_edge ], [ %umax.i.i.i, %bb.i ]
  store i64 %.0.lcssa.i.i.i, ptr %i.k, align 8, !tbaa !48
  br label %update_range_for_deleted.exit.i.i

update_range_for_deleted.exit.i.i:                ; preds = %.critedge.i.i.i, %.thread63.i.i, %.update_range_for_deleted.exit_crit_edge.i.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.pre50.i.i, %.update_range_for_deleted.exit_crit_edge.i.i ], [ %i.ab, %bb.c ], [ %.pre51.i.i, %.critedge.i.i.i ], [ %.pre51.i.i, %.thread63.i.i ], [ %i.ab, %bb.d ] ; 2 uses
  %i.bf = phi i64 [ %.pre50.i.i, %.update_range_for_deleted.exit_crit_edge.i.i ], [ %i.ac, %bb.c ], [ %.pre51.i.i, %.critedge.i.i.i ], [ %.pre51.i.i, %.thread63.i.i ], [ %i.ac, %bb.d ] ; 2 uses
  %.0.i.i = add nuw i64 %.045.i.i, 1              ; 2 uses
  %i.bg = icmp ult i64 %.0.i.i, %i.bf
  br i1 %i.bg, label %bb.c, label %.loopexit.i.i, !llvm.loop !110

.loopexit.i.i:                                    ; preds = %update_range_for_deleted.exit.i.i, %.lr.ph48.i.i
  %i.bh = phi i64 [ %i.w, %.lr.ph48.i.i ], [ %i.be, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %i.bi = icmp ult i64 %.pre52.i.i, %i.bh
  br i1 %i.bi, label %.lr.ph48.i.i, label %st_rehash.exit, !llvm.loop !111

bb.j:                                             ; preds = %st_rehash_linear.exit.i
  %.val.i.i = load i8, ptr %0, align 8, !tbaa !34
  %i.bj = zext i8 %.val.i.i to i64
  %i.bk = getelementptr [16 x i8], ptr @features, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !40
  %i.bn = shl i64 %i.bm, 3
  %.val64.i.i = load i8, ptr %i.i, align 2, !tbaa !39 ; 2 uses
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bp = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.bo, i64 noundef %i.bn) #25 ; 10 uses
  store ptr %i.bp, ptr %i.j, align 8, !tbaa !41
  %.val61.i.i = load i8, ptr %0, align 8, !tbaa !34
  %i.bq = zext i8 %.val61.i.i to i64
  %i.br = getelementptr [16 x i8], ptr @features, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !40
  %i.bu = shl i64 %i.bt, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bp, i8 noundef 0, i64 noundef %i.bu, i1 noundef false) #24
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !48  ; 2 uses
  %i.bw = load i64, ptr %i.l, align 8, !tbaa !47
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.i4.i, label %st_rehash.exit

.lr.ph.i4.i:                                      ; preds = %bb.j, %bb.ab
  %.05386.i.i = phi i64 [ %i.en, %bb.ab ], [ %i.bv, %bb.j ] ; 3 uses
  %i.by = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.bz = getelementptr [24 x i8], ptr %i.by, i64 %.05386.i.i ; 5 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !50 ; 3 uses
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i4.i
  %.val63.i.i = load i8, ptr %i.h, align 1, !tbaa !37 ; 2 uses
  %i.cc = zext nneg i8 %.val63.i.i to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.cc
  %i.cd = xor i64 %notmask.i.i.i.i, -1
  %i.ce = and i64 %i.ca, %i.cd
  %i.cf = getelementptr i8, ptr %i.bz, i64 8
  br label %bb.l

bb.l:                                             ; preds = %set_bin.exit.i.i, %bb.k
  %.val6594.i.i = phi i8 [ %.val63.i.i, %bb.k ], [ %.val65.i.i, %set_bin.exit.i.i ]
  %.0.i5.i = phi i64 [ %i.ca, %bb.k ], [ %i.eg, %set_bin.exit.i.i ]
  %.050.i.i = phi i64 [ %i.ce, %bb.k ], [ %i.em, %set_bin.exit.i.i ] ; 9 uses
  switch i8 %.val64.i.i, label %bb.p [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr i8, ptr %i.bp, i64 %.050.i.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !58
  %i.ci = zext i8 %i.ch to i64
  br label %get_bin.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.cj = getelementptr [2 x i8], ptr %i.bp, i64 %.050.i.i
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !60
  %i.cl = zext i16 %i.ck to i64
  br label %get_bin.exit.i.i

bb.o:                                             ; preds = %bb.l
  %i.cm = getelementptr [4 x i8], ptr %i.bp, i64 %.050.i.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !25
  %i.co = zext i32 %i.cn to i64
  br label %get_bin.exit.i.i

bb.p:                                             ; preds = %bb.l
  %i.cp = getelementptr [8 x i8], ptr %i.bp, i64 %.050.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !27
  br label %get_bin.exit.i.i

get_bin.exit.i.i:                                 ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.cr = phi i64 [ %i.ci, %bb.m ], [ %i.cl, %bb.n ], [ %i.co, %bb.o ], [ %i.cq, %bb.p ] ; 5 uses
  %i.cs = icmp ult i64 %i.cr, 2
  br i1 %i.cs, label %bb.q, label %bb.v

bb.q:                                             ; preds = %get_bin.exit.i.i
  %i.ct = add i64 %.05386.i.i, 2                  ; 4 uses
  switch i8 %.val64.i.i, label %bb.u [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = getelementptr i8, ptr %i.bp, i64 %.050.i.i
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !58
  br label %bb.ab

bb.s:                                             ; preds = %bb.q
  %i.cw = trunc i64 %i.ct to i16
  %i.cx = getelementptr [2 x i8], ptr %i.bp, i64 %.050.i.i
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !60
  br label %bb.ab

bb.t:                                             ; preds = %bb.q
  %i.cy = trunc i64 %i.ct to i32
  %i.cz = getelementptr [4 x i8], ptr %i.bp, i64 %.050.i.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !25
  br label %bb.ab

bb.u:                                             ; preds = %bb.q
  %i.da = getelementptr [8 x i8], ptr %i.bp, i64 %.050.i.i
  store i64 %i.ct, ptr %i.da, align 8, !tbaa !27
  br label %bb.ab

bb.v:                                             ; preds = %get_bin.exit.i.i
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.dc = getelementptr [24 x i8], ptr %i.db, i64 %i.cr ; 3 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 -48
  %i.de = load i32, ptr %i.n, align 4, !tbaa !44
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !50
  %i.dg = load i64, ptr %i.bz, align 8, !tbaa !50
  %i.dh = icmp eq i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.w, label %set_bin.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.di = load i64, ptr %i.cf, align 8, !tbaa !51 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dc, i64 -40
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !51 ; 2 uses
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %.thread104.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !52
  %i.do = tail call i32 %i.dn(i64 noundef %i.di, i64 noundef %i.dk) #24, !inline_history !112
  %.pre.i6.i = load i32, ptr %i.n, align 4, !tbaa !44
  %i.dp = icmp eq i32 %i.de, %.pre.i6.i
  br i1 %i.dp, label %bb.y, label %st_rehash_linear.exit.i.backedge, !prof !66, !llvm.loop !109

bb.y:                                             ; preds = %bb.x
  %i.dq = icmp eq i32 %i.do, 0
  br i1 %i.dq, label %.thread104.i.i, label %.set_bin.exit_crit_edge.i.i

.set_bin.exit_crit_edge.i.i:                      ; preds = %bb.y
  %.val65.pre.i.i = load i8, ptr %i.h, align 1, !tbaa !37
  br label %set_bin.exit.i.i

.thread104.i.i:                                   ; preds = %bb.y, %bb.w
  %i.dr = getelementptr i8, ptr %i.bz, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !63
  %i.dt = getelementptr i8, ptr %i.dc, i64 -32
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !63
  store i64 -1, ptr %i.bz, align 8, !tbaa !50
  %i.du = load i64, ptr %i.p, align 8, !tbaa !43
  %i.dv = add i64 %i.du, -1
  store i64 %i.dv, ptr %i.p, align 8, !tbaa !43
  %i.dw = load i64, ptr %i.k, align 8, !tbaa !48
  %i.dx = icmp eq i64 %i.dw, %i.cr
  br i1 %i.dx, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.thread104.i.i
  %i.dy = load i64, ptr %i.l, align 8, !tbaa !47  ; 3 uses
  %i.dz = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.ea = add i64 %i.cr, 1
  %umax.i.i7.i = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.ea) ; 2 uses
  %.0.i.i9.i61 = add i64 %i.cr, 1                 ; 2 uses
  %i.eb = icmp ult i64 %.0.i.i9.i61, %i.dy
  br i1 %i.eb, label %.lr.ph64, label %.critedge.i.i10.i

bb.aa:                                            ; preds = %.lr.ph64
  %.0.i.i9.i = add i64 %.0.i.i9.i62, 1            ; 2 uses
  %i.ec = icmp ult i64 %.0.i.i9.i, %i.dy
  br i1 %i.ec, label %.lr.ph64, label %.critedge.i.i10.i, !llvm.loop !5

.lr.ph64:                                         ; preds = %bb.z, %bb.aa
  %.0.i.i9.i62 = phi i64 [ %.0.i.i9.i, %bb.aa ], [ %.0.i.i9.i61, %bb.z ] ; 3 uses
  %i.ed = getelementptr [24 x i8], ptr %i.dz, i64 %.0.i.i9.i62
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !50
  %i.ef = icmp eq i64 %i.ee, -1
  br i1 %i.ef, label %bb.aa, label %..critedge.i.i10.i_crit_edge, !llvm.loop !5

..critedge.i.i10.i_crit_edge:                     ; preds = %.lr.ph64
  br label %.critedge.i.i10.i, !llvm.loop !5

.critedge.i.i10.i:                                ; preds = %bb.aa, %..critedge.i.i10.i_crit_edge, %bb.z
  %.0.lcssa.i.i11.i = phi i64 [ %umax.i.i7.i, %bb.z ], [ %.0.i.i9.i62, %..critedge.i.i10.i_crit_edge ], [ %umax.i.i7.i, %bb.aa ]
  store i64 %.0.lcssa.i.i11.i, ptr %i.k, align 8, !tbaa !48
  br label %bb.ab

set_bin.exit.i.i:                                 ; preds = %.set_bin.exit_crit_edge.i.i, %bb.v
  %.val65.i.i = phi i8 [ %.val65.pre.i.i, %.set_bin.exit_crit_edge.i.i ], [ %.val6594.i.i, %bb.v ] ; 2 uses
  %i.eg = lshr i64 %.0.i5.i, 11                   ; 2 uses
  %i.eh = mul i64 %.050.i.i, 5
  %i.ei = add nuw nsw i64 %i.eg, 1
  %i.ej = add i64 %i.ei, %i.eh
  %i.ek = zext nneg i8 %.val65.i.i to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i.i.i.i.i, -1
  %i.em = and i64 %i.ej, %i.el
  br label %bb.l

bb.ab:                                            ; preds = %.critedge.i.i10.i, %.thread104.i.i, %bb.u, %bb.t, %bb.s, %bb.r, %.lr.ph.i4.i
  %i.en = add nuw i64 %.05386.i.i, 1              ; 2 uses
  %i.eo = load i64, ptr %i.l, align 8, !tbaa !47
  %i.ep = icmp ult i64 %i.en, %i.eo
  br i1 %i.ep, label %.lr.ph.i4.i, label %st_rehash.exit, !llvm.loop !113

st_rehash.exit:                                   ; preds = %bb.b, %bb.j, %bb.ab, %.preheader.i.i, %.loopexit.i.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @st_insert_single(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_obj_class(i64 noundef %2) #24
  %i.b = load i64, ptr @rb_cString, align 8, !tbaa !27
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %st_stringify.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %2, 0
  %i.e = and i64 %2, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not3.i.i = and i1 %i.d, %i.f
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %st_stringify.exit

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.b
  %i.g = inttoptr i64 %2 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74
  %i.i = and i64 %i.h, 2048
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %st_stringify.exit

bb.c:                                             ; preds = %RB_OBJ_FROZEN.exit.i
  %i.j = tail call i64 @rb_hash_key_str(i64 noundef %2) #24
  br label %st_stringify.exit

st_stringify.exit:                                ; preds = %bb.a, %bb.b, %RB_OBJ_FROZEN.exit.i, %bb.c
  %i.k = phi i64 [ %i.j, %bb.c ], [ %2, %RB_OBJ_FROZEN.exit.i ], [ %2, %bb.a ], [ %2, %bb.b ] ; 5 uses
  %i.l = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8, !tbaa !33
  %i.m = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.n = tail call i64 %.val.val(i64 noundef %i.k) #24, !inline_history !0 ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  %i.p = select i1 %i.o, i64 0, i64 %i.n
  %i.q = getelementptr i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !47   ; 2 uses
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !47
  %i.v = getelementptr [24 x i8], ptr %i.r, i64 %i.t ; 3 uses
  store i64 %i.p, ptr %i.v, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !27
  %i.w = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !43
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !43
  %i.z = icmp eq i64 %i.k, 0
  %i.aa = and i64 %i.k, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %rb_obj_written.exit, label %bb.d

bb.d:                                             ; preds = %st_stringify.exit
  tail call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %i.k) #24
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %st_stringify.exit, %bb.d
  %i.ad = icmp eq i64 %3, 0
  %i.ae = and i64 %3, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %rb_obj_written.exit11, label %bb.e

bb.e:                                             ; preds = %rb_obj_written.exit
  tail call void @rb_gc_writebarrier(i64 noundef %1, i64 noundef %3) #24
  br label %rb_obj_written.exit11

rb_obj_written.exit11:                            ; preds = %rb_obj_written.exit, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_st_compact_table(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = shl i64 %i.b, 2
  %.val = load i8, ptr %0, align 8, !tbaa !34
  %i.d = zext nneg i8 %.val to i64
  %i.e = shl nuw i64 1, %i.d
  %.not = icmp ugt i64 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = shl i64 %i.b, 1
  %i.i = tail call noalias nonnull dereferenceable(56) ptr @ruby_xmalloc(i64 noundef 56) #23 ; 8 uses
  %i.j = tail call ptr @rb_st_init_existing_table_with_size(ptr noundef nonnull %i.i, ptr noundef %i.g, i64 noundef %i.h) ; 0 uses
  tail call fastcc void @rebuild_table_with(ptr noundef nonnull %i.i, ptr noundef nonnull %0)
  %i.k = load i8, ptr %i.i, align 8, !tbaa !34
  store i8 %i.k, ptr %0, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = getelementptr i8, ptr %0, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.p = load i8, ptr %i.o, align 2, !tbaa !39
  %i.q = getelementptr i8, ptr %0, i64 2
  store i8 %i.p, ptr %i.q, align 2, !tbaa !39
  %i.r = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41
  tail call void @ruby_xfree(ptr noundef %i.s) #24
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  store ptr %i.u, ptr %i.r, align 8, !tbaa !41
  %i.v = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  tail call void @ruby_xfree(ptr noundef %i.w) #24
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42
  store ptr %i.y, ptr %i.v, align 8, !tbaa !42
  tail call void @ruby_xfree(ptr noundef nonnull %i.i) #24
  %i.z = getelementptr i8, ptr %0, i64 32
  store i64 0, ptr %i.z, align 8, !tbaa !48
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !43
  %i.ab = getelementptr i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !47
  %i.ac = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc void @rebuild_table_with(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %.fr = freeze ptr %i.d                          ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 2          ; 2 uses
  %.val = load i8, ptr %i.e, align 2, !tbaa !39
  %i.f = getelementptr i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48   ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.g
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not33 = icmp eq ptr %.fr, null
  %i.m = getelementptr i8, ptr %0, i64 1
  %i.n = getelementptr i8, ptr %0, i64 16         ; 4 uses
  br i1 %.not33, label %.lr.ph.split.us, label %.lr.ph.split, !prof !65

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %.038.us = phi i64 [ %.1.us, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %.02937.us = phi i64 [ %i.w, %bb.d ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.o = getelementptr [24 x i8], ptr %i.i, i64 %.02937.us ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 24
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load i64, ptr %i.o, align 8, !tbaa !50
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.d, label %bb.b, !prof !65

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.s = getelementptr [24 x i8], ptr %i.b, i64 %.038.us ; 2 uses
  %.not.us = icmp eq ptr %i.s, %i.o
  br i1 %.not.us, label %set_bin.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !75
  br label %set_bin.exit.us

set_bin.exit.us:                                  ; preds = %bb.c, %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !43
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.n, align 8, !tbaa !43
  %i.v = add i64 %.038.us, 1
  br label %bb.d

bb.d:                                             ; preds = %set_bin.exit.us, %.lr.ph.split.us
  %.1.us = phi i64 [ %.038.us, %.lr.ph.split.us ], [ %i.v, %set_bin.exit.us ]
  %i.w = add nuw i64 %.02937.us, 1                ; 2 uses
  %exitcond43.not = icmp eq i64 %i.w, %i.g
  br i1 %exitcond43.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !114

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.038 = phi i64 [ %.1, %bb.l ], [ 0, %.lr.ph ]  ; 4 uses
  %.02937 = phi i64 [ %i.cf, %bb.l ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.x = getelementptr [24 x i8], ptr %i.i, i64 %.02937 ; 5 uses
  %i.y = getelementptr i8, ptr %i.x, i64 24
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = load i64, ptr %i.x, align 8, !tbaa !50   ; 2 uses
end_hunk_0
