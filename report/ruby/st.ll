Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/st?download=true
inline.NumInlined: 263
inline.NumDeleted: 70
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rb_hash_bulk_insert_into_st_table:bb.a
  %i.e = add i64 %i.d, %i.a                       ; 2 uses
  %.val21.i = load i8, ptr %i.b, align 8, !tbaa !34
  %i.f = zext nneg i8 %.val21.i to i64
  %i.g = shl nuw i64 1, %i.f
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
  %i.w = phi i64 [ %i.bi, %.loopexit.i.i ], [ %i.u, %bb.b ] ; 4 uses
  %.03446.i.i = phi i64 [ %.pre52.i.i.a, %.loopexit.i.i ], [ %i.t, %bb.b ] ; 2 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.y = getelementptr [24 x i8], ptr %i.x, i64 %.03446.i.i ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !50
  %i.aa = icmp ne i64 %i.z, -1
  %.pre52.i.i.a = add nuw i64 %.03446.i.i, 1      ; 4 uses
  %i.ab = icmp ult i64 %.pre52.i.i.a, %i.w
  %or.cond.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph48.i.i
  %i.ac = getelementptr i8, ptr %i.y, i64 8
  br label %bb.c

bb.c:                                             ; preds = %update_range_for_deleted.exit.i.i, %.lr.ph.i.i
  %i.ad = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.bf, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %.045.i.i.a = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.bg, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %.0.in44.i.i = phi i64 [ %.pre52.i.i.a, %.lr.ph.i.i ], [ %.0.i.i, %update_range_for_deleted.exit.i.i ] ; 5 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.af = getelementptr [24 x i8], ptr %i.ae, i64 %.0.in44.i.i ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %update_range_for_deleted.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load i32, ptr %i.n, align 4, !tbaa !44
  %i.aj = load i64, ptr %i.y, align 8, !tbaa !50
  %i.ak = icmp eq i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.e, label %update_range_for_deleted.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.af, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !51 ; 2 uses
  %i.an = load i64, ptr %i.ac, align 8, !tbaa !51 ; 2 uses
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %.thread63.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.ar = tail call i32 %i.aq(i64 noundef %i.am, i64 noundef %i.an) #24, !inline_history !108
  %.pre.i.i = load i32, ptr %i.n, align 4, !tbaa !44
  %i.as = icmp eq i32 %i.ai, %.pre.i.i
  br i1 %i.as, label %bb.g, label %st_rehash_linear.exit.i.backedge, !prof !66, !llvm.loop !109

bb.g:                                             ; preds = %bb.f
  %i.at = icmp eq i32 %i.ar, 0
  br i1 %i.at, label %.thread63.i.i, label %.update_range_for_deleted.exit_crit_edge.i.i

.update_range_for_deleted.exit_crit_edge.i.i:     ; preds = %bb.g
  %.pre50.i.i = load i64, ptr %i.l, align 8, !tbaa !47 ; 2 uses
  br label %update_range_for_deleted.exit.i.i

.thread63.i.i:                                    ; preds = %bb.g, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !75
  store i64 -1, ptr %i.af, align 8, !tbaa !50
  %i.au = load i64, ptr %i.p, align 8, !tbaa !43
  %i.av = add i64 %i.au, -1
  store i64 %i.av, ptr %i.p, align 8, !tbaa !43
  %i.aw = load i64, ptr %i.k, align 8, !tbaa !48
  %i.ax = icmp eq i64 %i.aw, %.0.in44.i.i
  %.pre51.i.i = load i64, ptr %i.l, align 8, !tbaa !47 ; 7 uses
  br i1 %i.ax, label %bb.h, label %update_range_for_deleted.exit.i.i

bb.h:                                             ; preds = %.thread63.i.i
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.az = add nuw i64 %.0.in44.i.i, 1
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.pre51.i.i, i64 %i.az) ; 2 uses
  %.0.i.i.i67 = add nuw i64 %.0.in44.i.i, 1       ; 2 uses
  %i.ba = icmp ult i64 %.0.i.i.i67, %.pre51.i.i
  br i1 %i.ba, label %.lr.ph70, label %.critedge.i.i.i

bb.i:                                             ; preds = %.lr.ph70
  %.0.i.i.i = add nuw i64 %.0.i.i.i68, 1          ; 2 uses
  %i.bb = icmp ult i64 %.0.i.i.i, %.pre51.i.i
  br i1 %i.bb, label %.lr.ph70, label %.critedge.i.i.i, !llvm.loop !5

.lr.ph70:                                         ; preds = %bb.h, %bb.i
  %.0.i.i.i68 = phi i64 [ %.0.i.i.i, %bb.i ], [ %.0.i.i.i67, %bb.h ] ; 3 uses
  %i.bc = getelementptr [24 x i8], ptr %i.ay, i64 %.0.i.i.i68
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !50
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %bb.i, label %..critedge.i.i.i_crit_edge, !llvm.loop !5

..critedge.i.i.i_crit_edge:                       ; preds = %.lr.ph70
  br label %.critedge.i.i.i, !llvm.loop !5

.critedge.i.i.i:                                  ; preds = %bb.i, %..critedge.i.i.i_crit_edge, %bb.h
  %.0.lcssa.i.i.i = phi i64 [ %umax.i.i.i, %bb.h ], [ %.0.i.i.i68, %..critedge.i.i.i_crit_edge ], [ %umax.i.i.i, %bb.i ]
  store i64 %.0.lcssa.i.i.i, ptr %i.k, align 8, !tbaa !48
  br label %update_range_for_deleted.exit.i.i

update_range_for_deleted.exit.i.i:                ; preds = %.critedge.i.i.i, %.thread63.i.i, %.update_range_for_deleted.exit_crit_edge.i.i, %bb.d, %bb.c
  %i.bf = phi i64 [ %.pre50.i.i, %.update_range_for_deleted.exit_crit_edge.i.i ], [ %i.ad, %bb.c ], [ %.pre51.i.i, %.critedge.i.i.i ], [ %.pre51.i.i, %.thread63.i.i ], [ %i.ad, %bb.d ] ; 2 uses
  %i.bg = phi i64 [ %.pre50.i.i, %.update_range_for_deleted.exit_crit_edge.i.i ], [ %.045.i.i.a, %bb.c ], [ %.pre51.i.i, %.critedge.i.i.i ], [ %.pre51.i.i, %.thread63.i.i ], [ %.045.i.i.a, %bb.d ] ; 2 uses
  %.0.i.i = add nuw i64 %.0.in44.i.i, 1           ; 2 uses
  %i.bh = icmp ult i64 %.0.i.i, %i.bg
  br i1 %i.bh, label %bb.c, label %.loopexit.i.i, !llvm.loop !110

.loopexit.i.i:                                    ; preds = %update_range_for_deleted.exit.i.i, %.lr.ph48.i.i
  %i.bi = phi i64 [ %i.w, %.lr.ph48.i.i ], [ %i.bf, %update_range_for_deleted.exit.i.i ] ; 2 uses
  %i.bj = icmp ult i64 %.pre52.i.i.a, %i.bi
  br i1 %i.bj, label %.lr.ph48.i.i, label %st_rehash.exit, !llvm.loop !111

bb.j:                                             ; preds = %st_rehash_linear.exit.i
  %.val.i.i = load i8, ptr %0, align 8, !tbaa !34
  %i.bk = zext i8 %.val.i.i to i64
  %i.bl = getelementptr [16 x i8], ptr @features, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !40
  %i.bo = shl i64 %i.bn, 3
  %.val64.i.i = load i8, ptr %i.i, align 2, !tbaa !39 ; 2 uses
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bq = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.bp, i64 noundef %i.bo) #25 ; 10 uses
  store ptr %i.bq, ptr %i.j, align 8, !tbaa !41
  %.val61.i.i = load i8, ptr %0, align 8, !tbaa !34
  %i.br = zext i8 %.val61.i.i to i64
  %i.bs = getelementptr [16 x i8], ptr @features, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !40
  %i.bv = shl i64 %i.bu, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bq, i8 noundef 0, i64 noundef %i.bv, i1 noundef false) #24
  %i.bw = load i64, ptr %i.k, align 8, !tbaa !48  ; 2 uses
  %i.bx = load i64, ptr %i.l, align 8, !tbaa !47
  %i.by = icmp ult i64 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph.i4.i, label %st_rehash.exit

.lr.ph.i4.i:                                      ; preds = %bb.j, %bb.ab
  %.05386.i.i = phi i64 [ %i.eo, %bb.ab ], [ %i.bw, %bb.j ] ; 3 uses
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.ca = getelementptr [24 x i8], ptr %i.bz, i64 %.05386.i.i ; 5 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !50 ; 3 uses
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %bb.ab, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i4.i
  %.val63.i.i = load i8, ptr %i.h, align 1, !tbaa !37 ; 2 uses
  %i.cd = zext nneg i8 %.val63.i.i to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.cd
  %i.ce = xor i64 %notmask.i.i.i.i, -1
  %i.cf = and i64 %i.cb, %i.ce
  %i.cg = getelementptr i8, ptr %i.ca, i64 8
  br label %bb.l

bb.l:                                             ; preds = %set_bin.exit.i.i, %bb.k
  %.val6594.i.i = phi i8 [ %.val63.i.i, %bb.k ], [ %.val65.i.i, %set_bin.exit.i.i ]
  %.0.i5.i = phi i64 [ %i.cb, %bb.k ], [ %i.eh, %set_bin.exit.i.i ]
  %.050.i.i = phi i64 [ %i.cf, %bb.k ], [ %i.en, %set_bin.exit.i.i ] ; 9 uses
  switch i8 %.val64.i.i, label %bb.p [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr i8, ptr %i.bq, i64 %.050.i.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !58
  %i.cj = zext i8 %i.ci to i64
  br label %get_bin.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ck = getelementptr [2 x i8], ptr %i.bq, i64 %.050.i.i
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !60
  %i.cm = zext i16 %i.cl to i64
  br label %get_bin.exit.i.i

bb.o:                                             ; preds = %bb.l
  %i.cn = getelementptr [4 x i8], ptr %i.bq, i64 %.050.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !25
  %i.cp = zext i32 %i.co to i64
  br label %get_bin.exit.i.i

bb.p:                                             ; preds = %bb.l
  %i.cq = getelementptr [8 x i8], ptr %i.bq, i64 %.050.i.i
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !27
  br label %get_bin.exit.i.i

get_bin.exit.i.i:                                 ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.cs = phi i64 [ %i.cj, %bb.m ], [ %i.cm, %bb.n ], [ %i.cp, %bb.o ], [ %i.cr, %bb.p ] ; 5 uses
  %i.ct = icmp ult i64 %i.cs, 2
  br i1 %i.ct, label %bb.q, label %bb.v

bb.q:                                             ; preds = %get_bin.exit.i.i
  %i.cu = add i64 %.05386.i.i, 2                  ; 4 uses
  switch i8 %.val64.i.i, label %bb.u [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = getelementptr i8, ptr %i.bq, i64 %.050.i.i
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !58
  br label %bb.ab

bb.s:                                             ; preds = %bb.q
  %i.cx = trunc i64 %i.cu to i16
  %i.cy = getelementptr [2 x i8], ptr %i.bq, i64 %.050.i.i
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !60
  br label %bb.ab

bb.t:                                             ; preds = %bb.q
  %i.cz = trunc i64 %i.cu to i32
  %i.da = getelementptr [4 x i8], ptr %i.bq, i64 %.050.i.i
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !25
  br label %bb.ab

bb.u:                                             ; preds = %bb.q
  %i.db = getelementptr [8 x i8], ptr %i.bq, i64 %.050.i.i
  store i64 %i.cu, ptr %i.db, align 8, !tbaa !27
  br label %bb.ab

bb.v:                                             ; preds = %get_bin.exit.i.i
  %i.dc = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.dd = getelementptr [24 x i8], ptr %i.dc, i64 %i.cs ; 3 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -48
  %i.df = load i32, ptr %i.n, align 4, !tbaa !44
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !50
  %i.dh = load i64, ptr %i.ca, align 8, !tbaa !50
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.w, label %set_bin.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.dj = load i64, ptr %i.cg, align 8, !tbaa !51 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dd, i64 -40
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !51 ; 2 uses
  %i.dm = icmp eq i64 %i.dj, %i.dl
  br i1 %i.dm, label %.thread104.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !52
  %i.dp = tail call i32 %i.do(i64 noundef %i.dj, i64 noundef %i.dl) #24, !inline_history !112
  %.pre.i6.i = load i32, ptr %i.n, align 4, !tbaa !44
  %i.dq = icmp eq i32 %i.df, %.pre.i6.i
  br i1 %i.dq, label %bb.y, label %st_rehash_linear.exit.i.backedge, !prof !66, !llvm.loop !109

bb.y:                                             ; preds = %bb.x
  %i.dr = icmp eq i32 %i.dp, 0
  br i1 %i.dr, label %.thread104.i.i, label %.set_bin.exit_crit_edge.i.i

.set_bin.exit_crit_edge.i.i:                      ; preds = %bb.y
  %.val65.pre.i.i = load i8, ptr %i.h, align 1, !tbaa !37
  br label %set_bin.exit.i.i

.thread104.i.i:                                   ; preds = %bb.y, %bb.w
  %i.ds = getelementptr i8, ptr %i.ca, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !63
  %i.du = getelementptr i8, ptr %i.dd, i64 -32
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !63
  store i64 -1, ptr %i.ca, align 8, !tbaa !50
  %i.dv = load i64, ptr %i.p, align 8, !tbaa !43
  %i.dw = add i64 %i.dv, -1
  store i64 %i.dw, ptr %i.p, align 8, !tbaa !43
  %i.dx = load i64, ptr %i.k, align 8, !tbaa !48
  %i.dy = icmp eq i64 %i.dx, %i.cs
  br i1 %i.dy, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.thread104.i.i
  %i.dz = load i64, ptr %i.l, align 8, !tbaa !47  ; 3 uses
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.eb = add i64 %i.cs, 1
  %umax.i.i7.i = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 %i.eb) ; 2 uses
  %.0.i.i9.i61 = add i64 %i.cs, 1                 ; 2 uses
  %i.ec = icmp ult i64 %.0.i.i9.i61, %i.dz
  br i1 %i.ec, label %.lr.ph64, label %.critedge.i.i10.i

bb.aa:                                            ; preds = %.lr.ph64
  %.0.i.i9.i = add i64 %.0.i.i9.i62, 1            ; 2 uses
  %i.ed = icmp ult i64 %.0.i.i9.i, %i.dz
  br i1 %i.ed, label %.lr.ph64, label %.critedge.i.i10.i, !llvm.loop !5

.lr.ph64:                                         ; preds = %bb.z, %bb.aa
  %.0.i.i9.i62 = phi i64 [ %.0.i.i9.i, %bb.aa ], [ %.0.i.i9.i61, %bb.z ] ; 3 uses
  %i.ee = getelementptr [24 x i8], ptr %i.ea, i64 %.0.i.i9.i62
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !50
  %i.eg = icmp eq i64 %i.ef, -1
  br i1 %i.eg, label %bb.aa, label %..critedge.i.i10.i_crit_edge, !llvm.loop !5

..critedge.i.i10.i_crit_edge:                     ; preds = %.lr.ph64
  br label %.critedge.i.i10.i, !llvm.loop !5

.critedge.i.i10.i:                                ; preds = %bb.aa, %..critedge.i.i10.i_crit_edge, %bb.z
  %.0.lcssa.i.i11.i = phi i64 [ %umax.i.i7.i, %bb.z ], [ %.0.i.i9.i62, %..critedge.i.i10.i_crit_edge ], [ %umax.i.i7.i, %bb.aa ]
  store i64 %.0.lcssa.i.i11.i, ptr %i.k, align 8, !tbaa !48
  br label %bb.ab

set_bin.exit.i.i:                                 ; preds = %.set_bin.exit_crit_edge.i.i, %bb.v
  %.val65.i.i = phi i8 [ %.val65.pre.i.i, %.set_bin.exit_crit_edge.i.i ], [ %.val6594.i.i, %bb.v ] ; 2 uses
  %i.eh = lshr i64 %.0.i5.i, 11                   ; 2 uses
  %i.ei = mul i64 %.050.i.i, 5
  %i.ej = add nuw nsw i64 %i.eh, 1
  %i.ek = add i64 %i.ej, %i.ei
  %i.el = zext nneg i8 %.val65.i.i to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.el
end_hunk_0
