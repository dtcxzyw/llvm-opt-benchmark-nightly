Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@hb_buffer_set_message_func:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load i32, ptr %i.d, align 8, !tbaa !633
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %3(ptr noundef %2) #59
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !701  ; 2 uses
  %.not20 = icmp eq ptr %i.g, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !665
  tail call void %i.g(ptr noundef %i.i) #59
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not21 = icmp eq ptr %1, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %1, ptr %i.j, align 8, !tbaa !585
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %2, ptr %i.k, align 8, !tbaa !665
  store ptr %3, ptr %i.f, align 8, !tbaa !701
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_buffer_changed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !633
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN11hb_buffer_t7changedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !705  ; 2 uses
  %.not1.i = icmp eq ptr %i.d, null
  br i1 %.not1.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !706
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(276) %0, ptr noundef %i.f) #59, !inline_history !2340
  br label %_ZN11hb_buffer_t7changedEv.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false), !tbaa !357
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !607  ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_buffer_t7changedEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !589  ; 2 uses
  %xtraiter = and i32 %i.i, 1
  %i.l = icmp eq i32 %i.i, 1
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i32 %i.i, -2
  br label %bb.e

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bk, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.epil.init13 = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bf, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.067.i.i.i.i.epil.init = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.bl, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.epil.init15 = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bb, %._crit_edge.i.i.i.i.unr-lcssa ]
  %lcmp.mod19 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.m = load i32, ptr %.067.i.i.i.i.epil.init, align 4, !tbaa !324 ; 3 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = and i32 %i.n, 63
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = or i64 %i.q, %.epil.init15
  %i.s = and i32 %i.m, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = or i64 %i.u, %.epil.init13
  %i.w = lshr i32 %i.m, 6
  %i.x = and i32 %i.w, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = or i64 %i.z, %.epil.init
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa11 = phi i64 [ %i.bb, %._crit_edge.i.i.i.i.unr-lcssa ], [ %i.r, %.epil.preheader ]
  %.lcssa10 = phi i64 [ %i.bf, %._crit_edge.i.i.i.i.unr-lcssa ], [ %i.v, %.epil.preheader ]
  %.lcssa = phi i64 [ %i.bk, %._crit_edge.i.i.i.i.unr-lcssa ], [ %i.aa, %.epil.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.lcssa11, ptr %i.g, align 8, !tbaa !357
  store i64 %.lcssa10, ptr %i.ab, align 8, !tbaa !357
  store i64 %.lcssa, ptr %i.ac, align 8, !tbaa !357
  br label %_ZN11hb_buffer_t7changedEv.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.new
  %i.ad = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.bk, %bb.e ]
  %i.ae = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.bf, %bb.e ]
  %.067.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.new ], [ %i.bl, %bb.e ] ; 3 uses
  %i.af = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.bb, %bb.e ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.e ]
  %i.ag = load i32, ptr %.067.i.i.i.i, align 4, !tbaa !324 ; 3 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = and i32 %i.ah, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = or i64 %i.ak, %i.af
  %i.am = and i32 %i.ag, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = or i64 %i.ao, %i.ae
  %i.aq = lshr i32 %i.ag, 6
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = or i64 %i.at, %i.ad
  %i.av = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !324 ; 3 uses
  %i.ax = lshr i32 %i.aw, 4
  %i.ay = and i32 %i.ax, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = or i64 %i.ba, %i.al                     ; 3 uses
  %i.bc = and i32 %i.aw, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = or i64 %i.be, %i.ap                     ; 3 uses
  %i.bg = lshr i32 %i.aw, 6
  %i.bh = and i32 %i.bg, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = or i64 %i.bj, %i.au                     ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i, i64 40 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.unr-lcssa, label %bb.e, !llvm.loop !30

_ZN11hb_buffer_t7changedEv.exit:                  ; preds = %bb.a, %bb.c, %bb.d, %._crit_edge.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN11hb_buffer_t12message_implEP9hb_font_tPKcP13__va_list_tag(ptr noundef nonnull align 8 dereferenceable(276) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !633
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.e = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 100, ptr noundef %2, ptr noundef %3) #59 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !585
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !665
  %i.j = call noundef i32 %i.g(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %i.i) #59
  %i.k = icmp ne i32 %i.j, 0
  %i.l = load i32, ptr %i.b, align 8, !tbaa !633
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr %i.b, align 8, !tbaa !633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i1 %i.k
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @hb_tag_to_string(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #3 {
bb.a:
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  store i32 %2, ptr %1, align 1, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 8) i32 @hb_direction_from_string(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.critedge, !prof !707

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !280     ; 4 uses
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.critedge, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %i.c, -65
  %or.cond.i = icmp ult i8 %i.d, 26
  %i.e = add nuw nsw i8 %i.c, 32
  %i.f = select i1 %or.cond.i, i8 %i.e, i8 %i.c
  %switch.tableidx = add i8 %i.f, -98             ; 2 uses
  %i.g = icmp ult i8 %switch.tableidx, 19
  br i1 %i.g, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.c
  %i.h = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.hb_direction_from_string, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %switch.lookup, %bb.a, %bb.b
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %switch.ext, %switch.lookup ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @hb_direction_to_string(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = add nsw i32 %0, -4                       ; 2 uses
  %i.b = icmp ult i32 %i.a, 4
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @_ZL17direction_strings, i64 %i.c
  %.0 = select i1 %i.b, ptr %i.d, ptr @.str.18, !prof !268
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_language_from_string(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne i32 %1, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 1, !tbaa !280
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp sgt i32 %1, -1
  br i1 %i.e, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.d

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %1, i32 63)
  %i.f = zext nneg i32 %.sroa.speculated to i64   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %0, i64 %i.f, i1 false), !alias.scope !2344
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  store i8 0, ptr %i.g, align 1, !tbaa !280
  %i.h = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL9hb_memcpyPvPKvm.exit
  %.0 = phi ptr [ %i.h, %_ZL9hb_memcpyPvPKvm.exit ], [ %i.i, %bb.d ] ; 2 uses
  %.not11 = icmp eq ptr %.0, null
  br i1 %.not11, label %bb.g, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !700
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.a, %bb.b
  %.08 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.k, %bb.f ], [ null, %bb.e ]
  ret ptr %.08
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.a = load atomic ptr, ptr @_ZL5langs acquire, align 8 ; 4 uses
  %.not53 = icmp eq ptr %i.a, null                ; 2 uses
  br i1 %.not53, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZNK18hb_language_item_teqEPKc.exit.thread79
  %.02154 = phi ptr [ %i.v, %_ZNK18hb_language_item_teqEPKc.exit.thread79 ], [ %i.a, %bb.b ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.02154, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !700  ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !280   ; 2 uses
  %.not11.i.i = icmp eq i8 %i.d, 0
  br i1 %.not11.i.i, label %_ZNK18hb_language_item_teqEPKc.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %bb.c
  %i.e = phi i8 [ %i.o, %bb.c ], [ %i.d, %.lr.ph ]
  %.013.i.i = phi ptr [ %i.n, %bb.c ], [ %0, %.lr.ph ] ; 2 uses
  %.0912.i.i = phi ptr [ %i.m, %bb.c ], [ %i.c, %.lr.ph ]
  %i.f = zext i8 %i.e to i32
  %i.g = load i8, ptr %.013.i.i, align 1, !tbaa !280
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZL9canon_map, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !280
  %i.k = sext i8 %i.j to i32
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %_ZNK18hb_language_item_teqEPKc.exit.thread79

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0912.i.i, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !280   ; 2 uses
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %_ZNK18hb_language_item_teqEPKc.exit, label %.lr.ph.i.i, !llvm.loop !2345

_ZNK18hb_language_item_teqEPKc.exit:              ; preds = %bb.c
  %.pre = load i8, ptr %i.n, align 1, !tbaa !280
  %.phi.trans.insert = zext i8 %.pre to i64
  %.phi.trans.insert67 = getelementptr inbounds nuw i8, ptr @_ZL9canon_map, i64 %.phi.trans.insert
  %.pre68 = load i8, ptr %.phi.trans.insert67, align 1, !tbaa !280
  %i.p = icmp eq i8 %.pre68, 0
  br i1 %i.p, label %.thread34, label %_ZNK18hb_language_item_teqEPKc.exit.thread79

_ZNK18hb_language_item_teqEPKc.exit.thread:       ; preds = %.lr.ph
  %i.q = load i8, ptr %0, align 1, !tbaa !280
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZL9canon_map, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !280
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.thread34, label %_ZNK18hb_language_item_teqEPKc.exit.thread79

_ZNK18hb_language_item_teqEPKc.exit.thread79:     ; preds = %.lr.ph.i.i, %_ZNK18hb_language_item_teqEPKc.exit.thread, %_ZNK18hb_language_item_teqEPKc.exit
  %i.v = load ptr, ptr %.02154, align 8, !tbaa !708 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !2346

.thread:                                          ; preds = %_ZNK18hb_language_item_teqEPKc.exit.thread79, %bb.b
  %i.w = tail call noalias noundef dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #60 ; 8 uses
  %.not25 = icmp eq ptr %i.w, null
  br i1 %.not25, label %.thread34, label %bb.d, !prof !267

bb.d:                                             ; preds = %.thread
  store ptr %i.a, ptr %i.w, align 8, !tbaa !708
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #64
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = tail call noalias noundef ptr @malloc(i64 noundef %i.y) #61 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !700
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN18hb_language_item_taSEPKc.exit, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %.not.i.i28 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i28, label %.lr.ph.i.preheader, label %_ZL9hb_memcpyPvPKvm.exit.i, !prof !267

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %0, i64 %i.y, i1 false), !alias.scope !2351
  %.pre.i = load i8, ptr %i.z, align 1, !tbaa !280 ; 2 uses
  %.not1011.i = icmp eq i8 %.pre.i, 0
  br i1 %.not1011.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZL9hb_memcpyPvPKvm.exit.i, %bb.e
  %.ph = phi i8 [ undef, %bb.e ], [ %.pre.i, %_ZL9hb_memcpyPvPKvm.exit.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ab = phi i8 [ %i.ag, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ]
  %.012.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.z, %.lr.ph.i.preheader ] ; 2 uses
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZL9canon_map, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !280
  store i8 %i.ae, ptr %.012.i, align 1, !tbaa !280
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !280 ; 2 uses
  %.not10.i = icmp eq i8 %i.ag, 0
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !2350

_ZN18hb_language_item_taSEPKc.exit:               ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.w) #59
  br label %.thread34

end_hunk_0
begin_hunk_1_@hb_feature_from_string:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i

bb.ag:                                            ; preds = %bb.af, %_ZL10parse_charPPKcS0_c.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %i.dl = icmp ult ptr %.promoted18, %i.m
  br i1 %i.dl, label %.lr.ph.i.i13.i.i.preheader, label %_ZL11parse_spacePPKcS0_.exit.i11.i.i

.lr.ph.i.i13.i.i.preheader:                       ; preds = %bb.ag
  %i.dm = add i64 %i.a, %i.l
  %i.dn = sub i64 %i.dm, %i.cz
  %scevgep27 = getelementptr i8, ptr %.promoted18, i64 %i.dn
  br label %.lr.ph.i.i13.i.i

.lr.ph.i.i13.i.i:                                 ; preds = %.lr.ph.i.i13.i.i.preheader, %bb.ah
  %i.do = phi ptr [ %i.dq, %bb.ah ], [ %.promoted18, %.lr.ph.i.i13.i.i.preheader ] ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !280
  switch i8 %i.dp, label %_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit [
    i8 32, label %bb.ah
    i8 13, label %bb.ah
    i8 12, label %bb.ah
    i8 10, label %bb.ah
    i8 9, label %bb.ah
    i8 11, label %bb.ah
  ]

bb.ah:                                            ; preds = %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i, %.lr.ph.i.i13.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 1 ; 2 uses
  %exitcond.not.i.i14.i.i = icmp eq ptr %i.dq, %i.m
  br i1 %exitcond.not.i.i14.i.i, label %_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit, label %.lr.ph.i.i13.i.i, !llvm.loop !31

_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit:    ; preds = %.lr.ph.i.i13.i.i, %bb.ah
  %i.dr = phi ptr [ %scevgep27, %bb.ah ], [ %i.do, %.lr.ph.i.i13.i.i ] ; 2 uses
  store ptr %i.dr, ptr %i.h, align 8
  br label %_ZL11parse_spacePPKcS0_.exit.i11.i.i

_ZL11parse_spacePPKcS0_.exit.i11.i.i:             ; preds = %_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit, %bb.ag
  %i.ds = phi ptr [ %.promoted18, %bb.ag ], [ %i.dr, %_ZL11parse_spacePPKcS0_.exit.i11.i.i.loopexit ] ; 12 uses
  %i.dt = icmp ult ptr %i.ds, %i.m
  br i1 %i.dt, label %.lr.ph.preheader.i.i.i, label %.critedge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZL11parse_spacePPKcS0_.exit.i11.i.i
  %i.du = ptrtoaddr ptr %i.ds to i64
  %i.dv = sub i64 %i.cy, %i.du
  %scevgep.i.i.i = getelementptr i8, ptr %i.ds, i64 %i.dv
  br label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %bb.ai, %.lr.ph.preheader.i.i.i
  %i.dw = phi ptr [ %i.eb, %bb.ai ], [ %i.ds, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !280
  %i.dy = and i8 %i.dx, -33
  %i.dz = add i8 %i.dy, -65
  %i.ea = icmp ult i8 %i.dz, 26
  br i1 %i.ea, label %bb.ai, label %.critedge.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i26.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 4 uses
  store ptr %i.eb, ptr %i.h, align 8, !tbaa !631
  %exitcond.not.i.i27.i = icmp eq ptr %i.eb, %i.m
  br i1 %exitcond.not.i.i27.i, label %.critedge.i.i.i, label %.lr.ph.i.i26.i, !llvm.loop !2352

.critedge.i.i.i:                                  ; preds = %bb.ai, %.lr.ph.i.i26.i, %_ZL11parse_spacePPKcS0_.exit.i11.i.i
  %.promoted.i48.i = phi ptr [ %i.ds, %_ZL11parse_spacePPKcS0_.exit.i11.i.i ], [ %i.dw, %.lr.ph.i.i26.i ], [ %i.eb, %bb.ai ] ; 3 uses
  %.lcssa.i.i.i = phi ptr [ %i.ds, %_ZL11parse_spacePPKcS0_.exit.i11.i.i ], [ %i.dw, %.lr.ph.i.i26.i ], [ %scevgep.i.i.i, %bb.ai ]
  %i.ec = ptrtoint ptr %.lcssa.i.i.i to i64
  %i.ed = ptrtoint ptr %i.ds to i64
  %i.ee = sub i64 %i.ec, %i.ed
  switch i64 %i.ee, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i [
    i64 2, label %bb.aj
    i64 3, label %bb.al
  ]

bb.aj:                                            ; preds = %.critedge.i.i.i
  %i.ef = load i8, ptr %i.ds, align 1, !tbaa !280 ; 3 uses
  %i.eg = add i8 %i.ef, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.eg, 26
  %i.eh = add nuw nsw i8 %i.ef, 32
  %i.ei = select i1 %or.cond.i.i.i.i, i8 %i.eh, i8 %i.ef
  %i.ej = icmp eq i8 %i.ei, 111
  br i1 %i.ej, label %bb.ak, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !280 ; 3 uses
  %i.em = add i8 %i.el, -65
  %or.cond.i20.i.i.i = icmp ult i8 %i.em, 26
  %i.en = add nuw nsw i8 %i.el, 32
  %i.eo = select i1 %or.cond.i20.i.i.i, i8 %i.en, i8 %i.el
  %i.ep = icmp eq i8 %i.eo, 110
  br i1 %i.ep, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.al:                                            ; preds = %.critedge.i.i.i
  %i.eq = load i8, ptr %i.ds, align 1, !tbaa !280 ; 3 uses
  %i.er = add i8 %i.eq, -65
  %or.cond.i21.i.i.i = icmp ult i8 %i.er, 26
  %i.es = add nuw nsw i8 %i.eq, 32
  %i.et = select i1 %or.cond.i21.i.i.i, i8 %i.es, i8 %i.eq
  %i.eu = icmp eq i8 %i.et, 111
  br i1 %i.eu, label %bb.am, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.am:                                            ; preds = %bb.al
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !280 ; 3 uses
  %i.ex = add i8 %i.ew, -65
  %or.cond.i22.i.i.i = icmp ult i8 %i.ex, 26
  %i.ey = add nuw nsw i8 %i.ew, 32
  %i.ez = select i1 %or.cond.i22.i.i.i, i8 %i.ey, i8 %i.ew
  %i.fa = icmp eq i8 %i.ez, 102
  br i1 %i.fa, label %bb.an, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !280 ; 3 uses
  %i.fd = add i8 %i.fc, -65
  %or.cond.i23.i.i.i = icmp ult i8 %i.fd, 26
  %i.fe = add nuw nsw i8 %i.fc, 32
  %i.ff = select i1 %or.cond.i23.i.i.i, i8 %i.fe, i8 %i.fc
  %i.fg = icmp eq i8 %i.ff, 102
  br i1 %i.fg, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i, label %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i

_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i: ; preds = %bb.an, %bb.ak, %_ZL12parse_uint32PPKcS0_Pj.exit.thread.i.i
  %.promoted.i47.i = phi ptr [ %i.dk, %_ZL12parse_uint32PPKcS0_Pj.exit.thread.i.i ], [ %.promoted.i48.i, %bb.ak ], [ %.promoted.i48.i, %bb.an ]
  %storemerge.i.sink.i.i = phi i32 [ %i.dh, %_ZL12parse_uint32PPKcS0_Pj.exit.thread.i.i ], [ 1, %bb.ak ], [ 0, %bb.an ]
  store i32 %storemerge.i.sink.i.i, ptr %i.ac, align 4, !tbaa !324
  br label %bb.ao

_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %.critedge.i.i.i
  br i1 %not..i.i, label %bb.ao, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, !prof !525

bb.ao:                                            ; preds = %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i
  %.promoted.i.i = phi ptr [ %.promoted.i47.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.thread.i ], [ %.promoted.i48.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i ] ; 3 uses
  %i.fh = icmp ult ptr %.promoted.i.i, %i.m
  br i1 %i.fh, label %.lr.ph.i.i, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit

.lr.ph.i.i:                                       ; preds = %bb.ao, %bb.ap
  %i.fi = phi ptr [ %i.fk, %bb.ap ], [ %.promoted.i.i, %bb.ao ] ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !280
  switch i8 %i.fj, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit [
    i8 32, label %bb.ap
    i8 13, label %bb.ap
    i8 12, label %bb.ap
    i8 10, label %bb.ap
    i8 9, label %bb.ap
    i8 11, label %bb.ap
  ]

bb.ap:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 1 ; 3 uses
  store ptr %i.fk, ptr %i.h, align 8, !tbaa !631
  %exitcond.not.i.i = icmp eq ptr %i.fk, %i.m
  br i1 %exitcond.not.i.i, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10, label %.lr.ph.i.i, !llvm.loop !31

_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit: ; preds = %.lr.ph.i.i, %bb.ao
  %i.fl = phi ptr [ %.promoted.i.i, %bb.ao ], [ %i.fi, %.lr.ph.i.i ]
  %i.fm = icmp eq ptr %i.fl, %i.m
  br i1 %i.fm, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10, label %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, !prof !672

_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10: ; preds = %bb.ap, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !2353
  br label %bb.as

_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread: ; preds = %bb.z, %_ZL11parse_spacePPKcS0_.exit.i47.i.i, %_ZL26parse_feature_value_prefixPPKcS0_P12hb_feature_t.exit.i, %_ZL27parse_feature_value_postfixPPKcS0_P12hb_feature_t.exit.i, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread, %bb.ar, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10, %bb.aq
  %.0 = phi i32 [ 1, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread10 ], [ 1, %bb.aq ], [ 0, %bb.ar ], [ 0, %_ZL17parse_one_featurePPKcS0_P12hb_feature_t.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @hb_feature_to_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 19 uses
  %.not = icmp eq i32 %2, 0
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br i1 %.not, label %bb.v, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !561  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 45, ptr %i.a, align 16, !tbaa !280
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %bb.c ], [ %i.a, %bb.b ]
  %.0 = phi i64 [ 5, %bb.c ], [ 4, %bb.b ]        ; 6 uses
  %i.e = load i32, ptr %0, align 4, !tbaa !558
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.e)
  store i32 %3, ptr %.0.sroa.phi, align 1, !tbaa !280
  %i.f = add nsw i64 %.0, -1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !280
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.e, label %.critedge.split.loop.exit70, !llvm.loop !2354

bb.e:                                             ; preds = %bb.d
  %.not15 = icmp eq i64 %i.f, 0
  br i1 %.not15, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i64 %.0, -2                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !280
  %i.m = icmp eq i8 %i.l, 32
  br i1 %i.m, label %bb.g, label %.critedge.split.loop.exit70, !llvm.loop !2354

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i64 %.0, -3                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !280
  %i.q = icmp eq i8 %i.p, 32
  br i1 %i.q, label %bb.h, label %.critedge.split.loop.exit70, !llvm.loop !2354

bb.h:                                             ; preds = %bb.g
  %.not15.2 = icmp eq i64 %i.n, 0
  br i1 %.not15.2, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i64 %.0, -4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !280
  %i.u = icmp eq i8 %i.t, 32
  br i1 %i.u, label %bb.j, label %.critedge.split.loop.exit70, !llvm.loop !2354

bb.j:                                             ; preds = %bb.i
  %.not15.3 = icmp eq i64 %i.r, 0
  br i1 %.not15.3, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr i8, ptr %i.a, i64 %.0
  %i.w = getelementptr i8, ptr %i.v, i64 -5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !280
  %i.y = icmp eq i8 %i.x, 32
  br i1 %i.y, label %.critedge, label %.critedge.split.loop.exit70, !llvm.loop !2354

.critedge.split.loop.exit70:                      ; preds = %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  %indvars.iv73.lcssa = phi i64 [ %.0, %bb.d ], [ %i.f, %bb.f ], [ %i.j, %bb.g ], [ %i.n, %bb.i ], [ %i.r, %bb.k ]
  %i.z = trunc nuw i64 %indvars.iv73.lcssa to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.j, %bb.k, %.critedge.split.loop.exit70
  %storemerge.lcssa = phi i32 [ %i.z, %.critedge.split.loop.exit70 ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.h ], [ 0, %bb.e ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !709 ; 2 uses
  %.not16 = icmp eq i32 %i.ab, 0
  br i1 %.not16, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !710 ; 2 uses
  %.not17 = icmp eq i32 %i.ad, -1
  br i1 %.not17, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.l
  %i.ae = add nuw nsw i32 %storemerge.lcssa, 1
  %i.af = zext i32 %storemerge.lcssa to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  store i8 91, ptr %i.ag, align 1, !tbaa !280
  br label %bb.n

bb.m:                                             ; preds = %.critedge
  %i.ah = add nuw nsw i32 %storemerge.lcssa, 1    ; 2 uses
  %i.ai = zext i32 %storemerge.lcssa to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 91, ptr %i.aj, align 1, !tbaa !280
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.am = sub nuw i32 127, %storemerge.lcssa
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.al, i64 noundef %i.an, ptr noundef nonnull @.str.21, i32 noundef %i.ab) #59
  %.sroa.speculated39 = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %i.ap = add i32 %.sroa.speculated39, %i.ah
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !710
  %.pre63 = load i32, ptr %i.aa, align 4, !tbaa !709
  %i.aq = add i32 %.pre63, 1
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %i.ar = phi i32 [ 1, %.thread ], [ %i.aq, %bb.m ]
  %i.as = phi i32 [ %i.ad, %.thread ], [ %.pre, %bb.m ] ; 3 uses
  %.1 = phi i32 [ %i.ae, %.thread ], [ %i.ap, %bb.m ] ; 4 uses
  %.not19 = icmp eq i32 %i.as, %i.ar
  br i1 %.not19, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = add nuw i32 %.1, 1                      ; 3 uses
  %i.au = zext i32 %.1 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.au
  store i8 58, ptr %i.av, align 1, !tbaa !280
  %.not20 = icmp eq i32 %i.as, -1
  br i1 %.not20, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = zext i32 %i.at to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  %i.ay = sub nuw i32 127, %.1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ax, i64 noundef %i.az, ptr noundef nonnull @.str.21, i32 noundef %i.as) #59
  %.sroa.speculated33 = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 0)
  %i.bb = add i32 %.sroa.speculated33, %i.at
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.2 = phi i32 [ %.1, %bb.n ], [ %i.at, %bb.o ], [ %i.bb, %bb.p ] ; 2 uses
  %i.bc = add nuw i32 %.2, 1
  %i.bd = zext i32 %.2 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  store i8 93, ptr %i.be, align 1, !tbaa !280
  %.pre64 = load i32, ptr %i.b, align 4, !tbaa !561
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %i.bf = phi i32 [ %i.c, %bb.l ], [ %.pre64, %bb.q ] ; 2 uses
  %.3 = phi i32 [ %storemerge.lcssa, %bb.l ], [ %i.bc, %bb.q ] ; 4 uses
  %i.bg = icmp ugt i32 %i.bf, 1
  br i1 %i.bg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bh = add nuw i32 %.3, 1                      ; 2 uses
  %i.bi = zext i32 %.3 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  store i8 61, ptr %i.bj, align 1, !tbaa !280
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.bm = sub nuw i32 127, %.3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.bl, i64 noundef %i.bn, ptr noundef nonnull @.str.21, i32 noundef %i.bf) #59
  %.sroa.speculated27 = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %i.bp = add i32 %.sroa.speculated27, %i.bh
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4 = phi i32 [ %i.bp, %bb.s ], [ %.3, %bb.r ]
  %i.bq = add i32 %2, -1
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %.4, i32 %i.bq) ; 2 uses
  %i.br = zext i32 %.sroa.speculated to i64       ; 2 uses
  %.not.i24 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not.i24, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.u, !prof !267

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 16 %i.a, i64 %i.br, i1 false), !alias.scope !2358
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.t, %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.br
  store i8 0, ptr %i.bs, align 1, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZL9hb_memcpyPvPKvm.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @hb_variation_from_string(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #23 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.hb_variation_t, align 8     ; 5 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #64
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.06 = phi i32 [ %i.f, %bb.b ], [ %1, %bb.a ]
  %i.g = sext i32 %.06 to i64                     ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g ; 8 uses
  %i.i = call fastcc noundef zeroext i1 @_ZL9parse_tagPPKcS0_Pj(ptr noundef nonnull %i.c, ptr noundef readnone %i.h, ptr noundef nonnull %3)
  br i1 %i.i, label %bb.d, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread, !prof !525

bb.d:                                             ; preds = %bb.c
  %.promoted.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !631 ; 5 uses
  %i.j = icmp ult ptr %.promoted.i.i.i.i, %i.h
  br i1 %i.j, label %.lr.ph.i.i.i.i.preheader, label %_ZL11parse_spacePPKcS0_.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d
  %.promoted.i.i.i.i19 = ptrtoaddr ptr %.promoted.i.i.i.i to i64
  %i.k = add i64 %i.a, %i.g
  %i.l = sub i64 %i.k, %.promoted.i.i.i.i19
  %scevgep = getelementptr i8, ptr %.promoted.i.i.i.i, i64 %i.l
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %bb.e
  %i.m = phi ptr [ %i.o, %bb.e ], [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !280
  switch i8 %i.n, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit [
    i8 32, label %bb.e
    i8 13, label %bb.e
    i8 12, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 11, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %exitcond.not.i.i.i.i, label %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit:      ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.p = phi ptr [ %scevgep, %bb.e ], [ %i.m, %.lr.ph.i.i.i.i ] ; 2 uses
  store ptr %i.p, ptr %i.c, align 8
  br label %_ZL11parse_spacePPKcS0_.exit.i.i.i

_ZL11parse_spacePPKcS0_.exit.i.i.i:               ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit, %bb.d
  %i.q = phi ptr [ %.promoted.i.i.i.i, %bb.d ], [ %i.p, %_ZL11parse_spacePPKcS0_.exit.i.i.i.loopexit ] ; 3 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_ZL10parse_charPPKcS0_c.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZL11parse_spacePPKcS0_.exit.i.i.i
  %i.s = load i8, ptr %i.q, align 1, !tbaa !280
  %.not.i.i.i = icmp eq i8 %i.s, 61
  br i1 %.not.i.i.i, label %bb.g, label %_ZL10parse_charPPKcS0_c.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.t, ptr %i.c, align 8, !tbaa !631
  br label %_ZL10parse_charPPKcS0_c.exit.i.i

_ZL10parse_charPPKcS0_c.exit.i.i:                 ; preds = %bb.g, %bb.f, %_ZL11parse_spacePPKcS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.u = call noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef nonnull %i.c, ptr noundef readnone %i.h, ptr noundef nonnull %i.b, i1 noundef zeroext false)
  br i1 %i.u, label %bb.h, label %_ZL21parse_variation_valuePPKcS0_P14hb_variation_t.exit.i, !prof !268

_ZL21parse_variation_valuePPKcS0_P14hb_variation_t.exit.i: ; preds = %_ZL10parse_charPPKcS0_c.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread

bb.h:                                             ; preds = %_ZL10parse_charPPKcS0_c.exit.i.i
  %i.v = load double, ptr %i.b, align 8, !tbaa !712
  %i.w = fptrunc double %i.v to float
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.w, ptr %i.x, align 4, !tbaa !714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !tbaa !631 ; 3 uses
  %i.y = icmp ult ptr %.promoted.i.i, %i.h
  br i1 %i.y, label %.lr.ph.i.i, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %i.z = phi ptr [ %i.ab, %bb.i ], [ %.promoted.i.i, %bb.h ] ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !280
  switch i8 %i.aa, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit [
    i8 32, label %bb.i
    i8 13, label %bb.i
    i8 12, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 11, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %exitcond.not.i.i, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10, label %.lr.ph.i.i, !llvm.loop !31

_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit: ; preds = %.lr.ph.i.i, %bb.h
  %i.ac = phi ptr [ %.promoted.i.i, %bb.h ], [ %i.z, %.lr.ph.i.i ]
  %i.ad = icmp eq ptr %i.ac, %i.h
  br i1 %i.ad, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10, label %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread, !prof !672

_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10: ; preds = %bb.i, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10
  %i.ae = load i64, ptr %3, align 8
  store i64 %i.ae, ptr %2, align 4
  br label %bb.l

_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread: ; preds = %bb.c, %_ZL21parse_variation_valuePPKcS0_P14hb_variation_t.exit.i, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread
  store i64 0, ptr %2, align 1
  br label %bb.l

bb.l:                                             ; preds = %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread, %bb.k, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10, %bb.j
  %.0 = phi i32 [ 1, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread10 ], [ 1, %bb.j ], [ 0, %bb.k ], [ 0, %_ZL19parse_one_variationPPKcS0_P14hb_variation_t.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @hb_variation_to_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.b = load i32, ptr %0, align 4, !tbaa !715    ; 5 uses
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.b)
  store i32 %3, ptr %i.a, align 16, !tbaa !280
  %4 = and i32 %i.b, 255
  %i.c = icmp eq i32 %4, 32
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %5 = and i32 %i.b, 65280
  %i.d = icmp eq i32 %5, 8192
  br i1 %i.d, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %6 = and i32 %i.b, 16711680
  %i.e = icmp eq i32 %6, 2097152
  br i1 %i.e, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %.mask = and i32 %i.b, -16777216
  %i.f = icmp ne i32 %.mask, 536870912
  %spec.select = zext i1 %i.f to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %storemerge.lcssa = phi i32 [ 2, %bb.d ], [ 4, %bb.b ], [ %spec.select, %bb.e ], [ 3, %bb.c ] ; 3 uses
  %i.g = add nuw nsw i32 %storemerge.lcssa, 1     ; 2 uses
  %i.h = zext nneg i32 %storemerge.lcssa to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 61, ptr %i.i, align 1, !tbaa !280
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j
  %i.l = xor i32 %storemerge.lcssa, 127
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !714
  %i.p = fpext float %i.o to double
  %i.q = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef %i.m, ptr noundef nonnull @.str.22, double noundef %i.p) #59
  %.sroa.speculated10 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %i.r = add nuw i32 %.sroa.speculated10, %i.g
  %i.s = add i32 %2, -1                           ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.s)
  %i.t = zext i32 %.sroa.speculated to i64        ; 2 uses
  %.not.i7 = icmp eq i32 %i.s, 0
  br i1 %.not.i7, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 16 %i.a, i64 %i.t, i1 false), !alias.scope !2362
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %.critedge, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZL9hb_memcpyPvPKvm.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @hb_color_get_alpha(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = trunc i32 %0 to i8
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @hb_color_get_red(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i32 %0, 8
  %i.b = trunc i32 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i8 @hb_color_get_green(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i32 %0, 16
  %i.b = trunc i32 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @hb_color_get_blue(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = lshr i32 %0, 24
  %i.b = trunc nuw i32 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @hb_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #60
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: mustprogress nounwind uwtable
define void @hb_draw_funcs_set_move_to_func(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !380, !noundef !293
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not12.i = icmp eq ptr %3, null
  br i1 %.not12.i, label %_ZL27_hb_draw_funcs_set_preambleP15hb_draw_funcs_tbPPvPPFvS1_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %3(ptr noundef %2) #59, !inline_history !32
  br label %_ZL27_hb_draw_funcs_set_preambleP15hb_draw_funcs_tbPPvPPFvS1_E.exit

bb.d:                                             ; preds = %bb.a
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %3(ptr noundef %2) #59, !inline_history !32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.034.ph = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %2, %bb.d ] ; 3 uses
  %.0.ph = phi ptr [ null, %bb.e ], [ null, %bb.f ], [ %3, %bb.d ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !716  ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !718  ; 2 uses
  %.not22 = icmp eq ptr %i.f, null
  br i1 %.not22, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !365  ; 2 uses
  %.not23 = icmp eq ptr %i.h, null
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !719
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.j = phi ptr [ %i.i, %bb.j ], [ null, %bb.i ]
  tail call void %i.f(ptr noundef %i.j) #59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.g
  %.not.i26 = icmp eq ptr %.034.ph, null
  br i1 %.not.i26, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !365
  %.not7.i = icmp eq ptr %i.l, null
  br i1 %.not7.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.m = tail call noalias noundef dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #60 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !365
  %.not8.i = icmp eq ptr %i.m, null
  br i1 %.not8.i, label %bb.r, label %bb.o, !prof !267

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.not9.i = icmp eq ptr %.0.ph, null
  br i1 %.not9.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !716
  %.not10.i = icmp eq ptr %i.n, null
  br i1 %.not10.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.o = tail call noalias noundef dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #60 ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !716
  %.not11.i = icmp eq ptr %i.o, null
  br i1 %.not11.i, label %.thread20.i, label %bb.s, !prof !267

bb.r:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq ptr %.0.ph, null
  br i1 %.not.i.i.i, label %_ZL27_hb_draw_funcs_set_preambleP15hb_draw_funcs_tbPPvPPFvS1_E.exit, label %.thread20.i

.thread20.i:                                      ; preds = %bb.r, %bb.q
  tail call void %.0.ph(ptr noundef %.034.ph) #59, !inline_history !33
  br label %_ZL27_hb_draw_funcs_set_preambleP15hb_draw_funcs_tbPPvPPFvS1_E.exit

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.q
  %spec.select = select i1 %.not, ptr @_ZL19hb_draw_move_to_nilP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr %1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %spec.select, ptr %i.p, align 8, !tbaa !720
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !365  ; 2 uses
  %.not24 = icmp eq ptr %i.r, null
  br i1 %.not24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %.034.ph, ptr %i.r, align 8, !tbaa !719
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !716  ; 2 uses
  %.not25 = icmp eq ptr %i.s, null
end_hunk_1
begin_hunk_2_@hb_ot_layout_feature_get_name_ids:bb.a
  %.not83 = icmp eq ptr %3, null
  br i1 %.not83, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge89
  store i32 65535, ptr %3, align 4, !tbaa !324
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge89
  %.not84 = icmp eq ptr %4, null
  br i1 %.not84, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 65535, ptr %4, align 4, !tbaa !324
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not85 = icmp eq ptr %5, null
  br i1 %.not85, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 65535, ptr %5, align 4, !tbaa !324
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not86 = icmp eq ptr %6, null
  br i1 %.not86, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %6, align 4, !tbaa !324
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not87 = icmp eq ptr %7, null
  br i1 %.not87, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.ah, %bb.p, %bb.z
  %.sink = phi i32 [ %i.bn, %bb.z ], [ 65535, %bb.p ], [ 65535, %bb.ah ]
  %.2.ph = phi i32 [ 1, %bb.z ], [ 1, %bb.p ], [ 0, %bb.ah ]
  store i32 %.sink, ptr %7, align 4, !tbaa !324
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.y, %bb.p, %bb.ah
  %.2 = phi i32 [ 0, %bb.ah ], [ 1, %bb.p ], [ 1, %bb.y ], [ %.2.ph, %.critedge.sink.split ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 65536) i32 @hb_ot_layout_feature_get_characters(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef nonnull align 1 dereferenceable(14) ptr @_ZL18get_gsubgpos_tableP9hb_face_tj(ptr noundef %0, i32 noundef %1) ; 6 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.b, 256
  br i1 %cond.i.i, label %bb.b, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i:      ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %.0.i.i.i.i, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 3 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %.not.i.i.i.i = icmp ult i32 %2, %i.k
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNK2OT8GSUBGPOS11get_featureEj.exit, !prof !268

bb.c:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.m = zext nneg i32 %2 to i64
  %i.n = getelementptr inbounds nuw [6 x i8], ptr %i.l, i64 %i.m
  br label %_ZNK2OT8GSUBGPOS11get_featureEj.exit

_ZNK2OT8GSUBGPOS11get_featureEj.exit:             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i, %bb.c
  %.0.i.i.i1.i = phi ptr [ %i.n, %bb.c ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i1.i, i64 4
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  %i.r = tail call i16 @llvm.bswap.i16(i16 %i.p)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %.0.i.i1.i.i = select i1 %i.q, ptr @_hb_NullPool, ptr %i.t, !prof !267 ; 2 uses
  %i.u = load i16, ptr %.0.i.i1.i.i, align 1, !tbaa !283 ; 2 uses
  %i.v = icmp ne i16 %i.u, 0
  %i.w = tail call i16 @llvm.bswap.i16(i16 %i.u)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 %i.x
  %i.z = icmp eq i32 %2, 65535
  br i1 %i.z, label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT8GSUBGPOS11get_featureEj.exit
  %i.aa = load i16, ptr %i.a, align 1, !tbaa !283
  %cond.i.i8 = icmp eq i16 %i.aa, 256
  br i1 %cond.i.i8, label %bb.e, label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %i.ac, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  %.0.i.i.i.i12 = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.ag, !prof !267
  br label %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9

_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9:     ; preds = %bb.e, %bb.d
  %.0.i.i10 = phi ptr [ %.0.i.i.i.i12, %bb.e ], [ @_hb_NullPool, %bb.d ] ; 2 uses
  %i.ah = load i16, ptr %.0.i.i10, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  %.not.i.i.i = icmp ult i32 %2, %i.aj
  br i1 %.not.i.i.i, label %bb.f, label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i, !prof !268

bb.f:                                             ; preds = %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 2
  %i.al = zext nneg i32 %2 to i64
  %i.am = getelementptr inbounds nuw [6 x i8], ptr %i.ak, i64 %i.al
  br label %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i

_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i: ; preds = %bb.f, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9
  %.0.i.i.i11 = phi ptr [ %i.am, %bb.f ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS16get_feature_listEv.exit.i9 ]
  %i.an = load i32, ptr %.0.i.i.i11, align 1, !tbaa !278
  %i.ao = and i32 %i.an, 65535
  %i.ap = icmp eq i32 %i.ao, 30307
  %i.aq = select i1 %i.ap, i1 %i.v, i1 false
  %i.ar = select i1 %i.aq, ptr %i.y, ptr @_hb_NullPool
  br label %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit

_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit:         ; preds = %_ZNK2OT8GSUBGPOS11get_featureEj.exit, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i
  %spec.select.i = phi ptr [ %i.ar, %_ZNK2OT13RecordArrayOfINS_7FeatureEE7get_tagEj.exit.i ], [ @_hb_NullPool, %_ZNK2OT8GSUBGPOS11get_featureEj.exit ] ; 2 uses
  %i.as = icmp ne ptr %4, null
  %i.at = icmp ne ptr %5, null
  %or.cond.i = and i1 %i.as, %i.at
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 12
  %i.av = load i16, ptr %i.au, align 1, !tbaa !283
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %.sroa.5.8.extract.trunc.i = zext i16 %i.aw to i32 ; 2 uses
  br i1 %or.cond.i, label %_ZNK10hb_array_tIKN2OT7NumTypeILb1EjLj3EEEE9sub_arrayEjPj.exit.i, label %_ZNK2OT30FeatureParamsCharacterVariants14get_charactersEjPjS1_.exit

_ZNK10hb_array_tIKN2OT7NumTypeILb1EjLj3EEEE9sub_arrayEjPj.exit.i: ; preds = %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.8.extract.trunc.i, i32 %3)
  %i.ax = load i32, ptr %4, align 4, !tbaa !324
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.ax) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %4, align 4, !tbaa !324
  %.not5.i.i.i = icmp eq i32 %.sroa.speculated.i.i, 0
  br i1 %.not5.i.i.i, label %_ZNK2OT30FeatureParamsCharacterVariants14get_charactersEjPjS1_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK10hb_array_tIKN2OT7NumTypeILb1EjLj3EEEE9sub_arrayEjPj.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 14
  %i.az = zext i32 %3 to i64
  %i.ba = getelementptr inbounds nuw [3 x i8], ptr %i.ay, i64 %i.az
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i, %.lr.ph.i.i.preheader.i
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ], [ %.sroa.speculated.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.sroa.018.0.i = phi ptr [ %.sroa.018.1.i, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ], [ %5, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.bh, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ], [ %i.ba, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.sroa.4.06.i.i.i = phi i32 [ %i.bg, %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i ], [ %.sroa.speculated.i.i, %.lr.ph.i.i.preheader.i ]
  %.sroa.0.0.copyload.i.i.i = load i24, ptr %.sroa.0.07.i.i.i, align 1, !tbaa !280 ; 3 uses
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i24 %.sroa.0.0.copyload.i.i.i, 16
  %i.bb = shl i24 %.sroa.0.0.copyload.i.i.i, 16
  %i.bc = and i24 %.sroa.0.0.copyload.i.i.i, 65280
  %i.bd = or disjoint i24 %i.bc, %i.bb
  %i.be = or disjoint i24 %i.bd, %.sroa.3.0.extract.shift.i.i.i.i
  %i.bf = zext i24 %i.be to i32
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.6.0.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i, !prof !267

bb.g:                                             ; preds = %.lr.ph.i.i.i
  store i32 0, ptr @_hb_CrapPool, align 16
  br label %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.018.1.idx.i = phi i64 [ 0, %bb.g ], [ 4, %.lr.ph.i.i.i ]
  %.0.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.g ], [ %.sroa.018.0.i, %.lr.ph.i.i.i ]
  store i32 %i.bf, ptr %.0.i.i.i.i.i.i, align 4, !tbaa !324
  %.sroa.6.1.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.6.0.i, i32 1)
  %.sroa.018.1.i = getelementptr inbounds nuw i8, ptr %.sroa.018.0.i, i64 %.sroa.018.1.idx.i
  %i.bg = add nsw i32 %.sroa.4.06.i.i.i, -1       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 3
  %.not.i.i.i13 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i13, label %_ZNK2OT30FeatureParamsCharacterVariants14get_charactersEjPjS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !2673

_ZNK2OT30FeatureParamsCharacterVariants14get_charactersEjPjS1_.exit: ; preds = %_ZN9hb_iter_tI10hb_array_tIjERjEdeEv.exit.i.i.i.i, %_ZNK2OT8GSUBGPOS15get_feature_tagEj.exit, %_ZNK10hb_array_tIKN2OT7NumTypeILb1EjLj3EEEE9sub_arrayEjPj.exit.i
  ret i32 %.sroa.5.8.extract.trunc.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK11hb_ot_map_t10substituteEPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.GSUBProxy, align 8          ; 4 uses
  %i.a = alloca [5 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.f = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN9GSUBProxyC2EP9hb_face_t.exit, !prof !265

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !266
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN9GSUBProxyC2EP9hb_face_t.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj26EE11call_createIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS4_Lj26EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = cmpxchg weak ptr %i.d, ptr null, ptr %.07.i.i.i.i acq_rel monotonic, align 8
  %i.j = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.j, label %_ZN9GSUBProxyC2EP9hb_face_t.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GSUB_accelerator_tE21hb_face_lazy_loader_tIS1_Lj26EE9hb_face_tLj26ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i.i)
  %i.k = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN9GSUBProxyC2EP9hb_face_t.exit, !prof !269

_ZN9GSUBProxyC2EP9hb_face_t.exit:                 ; preds = %.lr.ph.i.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i.i = phi ptr [ %i.f, %bb.a ], [ %.07.i.i.i.i, %bb.d ], [ %i.k, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i.i.i ]
  store ptr %.19.ph.i.i.i.i, ptr %4, align 8, !tbaa !2674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.l, align 4
  %i.m = load i32, ptr %0, align 8, !tbaa !324
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.m)
  store i32 %5, ptr %i.a, align 4, !tbaa !280
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !585
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9GSUBProxyC2EP9hb_face_t.exit
  %i.p = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %3, ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a)
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %_ZN9GSUBProxyC2EP9hb_face_t.exit
  call void @_ZNK11hb_ot_map_t5applyI9GSUBProxyEEvRKT_PK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !585
  %.not11 = icmp eq ptr %i.q, null
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %3, ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11hb_ot_map_t5applyI9GSUBProxyEEvRKT_PK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %5 = alloca %"struct.OT::hb_ot_apply_context_t", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.c, null
  br i1 %.not15.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit, !prof !265

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1242 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = tail call noundef ptr @_hb_ot_shaper_font_data_create(ptr noundef nonnull %i.d) ; 5 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %i.e acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  %.not.i11.i.i = icmp eq ptr %i.e, null
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, @_hb_NullPool
  %or.cond.i.i.i = or i1 %.not.i11.i.i, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.e) #59
  br label %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i

_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit, !prof !269

_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i, %bb.a
  %.19.ph.i.i = phi ptr [ %i.c, %bb.a ], [ null, %.lr.ph.i.i ], [ %i.h, %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.i = load ptr, ptr %1, align 8, !tbaa !2678, !nonnull !293, !align !294
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !272
  call void @_ZN2OT21hb_ot_apply_context_tC2EjP9hb_font_tP11hb_buffer_tP9hb_blob_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(384) %5, i32 noundef 0, ptr noundef %3, ptr noundef %4, ptr noundef %i.j, ptr noundef %.19.ph.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 232
  store ptr @_ZN2OT6Layout9GSUB_impl11SubstLookup21dispatch_recurse_funcINS_21hb_ot_apply_context_tEEENT_8return_tEPS5_j, ptr %i.k, align 8, !tbaa !1251
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1254 ; 2 uses
  %.not92 = icmp eq i32 %i.m, 0
  br i1 %.not92, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 284
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 316
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 302
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 301
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 303
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %bb.e

._crit_edge91:                                    ; preds = %_ZN11hb_buffer_t13update_digestEv.exit, %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit
  call void @_ZN2OT21hb_ot_apply_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  ret void

bb.e:                                             ; preds = %.lr.ph90, %_ZN11hb_buffer_t13update_digestEv.exit
  %i.ae = phi i32 [ %i.m, %.lr.ph90 ], [ %i.hh, %_ZN11hb_buffer_t13update_digestEv.exit ]
  %indvars.iv97 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next98, %_ZN11hb_buffer_t13update_digestEv.exit ] ; 3 uses
  %.06288 = phi i32 [ 0, %.lr.ph90 ], [ %.1.lcssa, %_ZN11hb_buffer_t13update_digestEv.exit ] ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %.not.i = icmp samesign ult i64 %indvars.iv97, %i.af
  %i.ag = load ptr, ptr %i.n, align 8
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv97
  %.0.i = select i1 %.not.i, ptr %i.ah, ptr @_hb_NullPool, !prof !268 ; 3 uses
  %i.ai = load i32, ptr %.0.i, align 8, !tbaa !1256
  %i.aj = icmp ult i32 %.06288, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ak = zext i32 %.06288 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GSUBEE9get_accelEj.exit
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GSUBEE9get_accelEj.exit ] ; 3 uses
  %i.al = load i32, ptr %i.o, align 4, !tbaa !1259
  %i.am = zext i32 %i.al to i64
  %.not.i65 = icmp samesign ult i64 %indvars.iv, %i.am
  %i.an = load ptr, ptr %i.p, align 8
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %indvars.iv
  %.0.i66 = select i1 %.not.i65, ptr %i.ao, ptr @_hb_NullPool, !prof !268 ; 6 uses
  %i.ap = load i16, ptr %.0.i66, align 4, !tbaa !1261 ; 4 uses
  %i.aq = zext i16 %i.ap to i32                   ; 5 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !2678, !nonnull !293, !align !294 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1205
  %.not.i67 = icmp ugt i32 %i.at, %i.aq
  br i1 %.not.i67, label %.preheader.i, label %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GSUBEE9get_accelEj.exit, !prof !268

.preheader.i:                                     ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.av = zext i16 %i.ap to i64                   ; 5 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !1211
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load atomic ptr, ptr %i.ax acquire, align 8 ; 2 uses
  %.not1418.i = icmp eq ptr %i.ay, null
  br i1 %.not1418.i, label %.lr.ph.i, label %.loopexit, !prof !265

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.az ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !275
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !276
  %i.be = icmp ult i32 %i.bd, 4
  %spec.select.i.i1.i.i.i = select i1 %i.be, ptr @_hb_NullPool, ptr %i.bb ; 3 uses
  %i.bf = load i16, ptr %spec.select.i.i1.i.i.i, align 1, !tbaa !283
  %cond.i.i70 = icmp eq i16 %i.bf, 256
  br i1 %cond.i.i70, label %bb.f, label %_ZNK2OT6Layout4GSUB10get_lookupEj.exit75

bb.f:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i, i64 8
  %i.bh = load i16, ptr %i.bg, align 1, !tbaa !283 ; 2 uses
  %i.bi = icmp eq i16 %i.bh, 0
  %i.bj = call i16 @llvm.bswap.i16(i16 %i.bh)
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i, i64 %i.bk
  %.0.i.i.i.i72 = select i1 %i.bi, ptr @_hb_NullPool, ptr %i.bl, !prof !267 ; 3 uses
  %i.bm = load i16, ptr %.0.i.i.i.i72, align 1, !tbaa !283
  %i.bn = call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %.not.i.i.i73 = icmp ult i16 %i.ap, %i.bn
  br i1 %.not.i.i.i73, label %bb.g, label %_ZNK2OT6Layout4GSUB10get_lookupEj.exit75, !prof !268

bb.g:                                             ; preds = %bb.f
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i72, i64 2
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.av
  %i.bq = load i16, ptr %i.bp, align 1, !tbaa !283 ; 2 uses
  %i.br = icmp eq i16 %i.bq, 0
  %i.bs = call i16 @llvm.bswap.i16(i16 %i.bq)
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i72, i64 %i.bt
  %.0.i.i.i.i.i74 = select i1 %i.br, ptr @_hb_NullPool, ptr %i.bu, !prof !267
  br label %_ZNK2OT6Layout4GSUB10get_lookupEj.exit75

_ZNK2OT6Layout4GSUB10get_lookupEj.exit75:         ; preds = %.lr.ph.i, %bb.f, %bb.g
  %.0.i.i71 = phi ptr [ @_hb_NullPool, %bb.f ], [ %.0.i.i.i.i.i74, %bb.g ], [ @_hb_NullPool, %.lr.ph.i ]
  %i.bv = call noundef ptr @_ZN2OT33hb_ot_layout_lookup_accelerator_t6createINS_6Layout9GSUB_impl11SubstLookupEEEPS0_RKT_(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i71) ; 5 uses
  %.not15.i = icmp eq ptr %i.bv, null
  br i1 %.not15.i, label %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GSUBEE9get_accelEj.exit, label %bb.h, !prof !267

bb.h:                                             ; preds = %_ZNK2OT6Layout4GSUB10get_lookupEj.exit75
  %i.bw = load ptr, ptr %i.au, align 8, !tbaa !1211
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.av
  %i.by = cmpxchg weak ptr %i.bx, ptr null, ptr %i.bv acq_rel monotonic, align 8
  %i.bz = extractvalue { ptr, i1 } %i.by, 1
  br i1 %i.bz, label %.loopexit, label %bb.i, !prof !268

bb.i:                                             ; preds = %bb.h
  call void @_ZN2OT33hb_ot_layout_lookup_accelerator_t4finiEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bv)
  call void @free(ptr noundef nonnull %i.bv) #59
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !1211
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.av
  %i.cc = load atomic ptr, ptr %i.cb acquire, align 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK11hb_ot_map_t5applyI9GSUBProxyEEvRKT_PK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:bb.a
  %i.dp = icmp ult i32 %i.do, 4
  %spec.select.i.i1.i.i = select i1 %i.dp, ptr @_hb_NullPool, ptr %i.dm ; 3 uses
  %i.dq = load i16, ptr %spec.select.i.i1.i.i, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.dq, 256
  br i1 %cond.i.i, label %bb.n, label %_ZNK2OT6Layout4GSUB10get_lookupEj.exit

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.dr = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 8
  %i.ds = load i16, ptr %i.dr, align 1, !tbaa !283 ; 2 uses
  %i.dt = icmp eq i16 %i.ds, 0
  %i.du = call i16 @llvm.bswap.i16(i16 %i.ds)
  %i.dv = zext i16 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i, i64 %i.dv
  %.0.i.i.i.i = select i1 %i.dt, ptr @_hb_NullPool, ptr %i.dw, !prof !267 ; 3 uses
  %i.dx = load i16, ptr %.0.i.i.i.i, align 1, !tbaa !283
  %i.dy = call noundef i16 @llvm.bswap.i16(i16 %i.dx)
  %.not.i.i.i68 = icmp ult i16 %i.ap, %i.dy
  br i1 %.not.i.i.i68, label %bb.o, label %_ZNK2OT6Layout4GSUB10get_lookupEj.exit, !prof !268

bb.o:                                             ; preds = %bb.n
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.av
  %i.eb = load i16, ptr %i.ea, align 1, !tbaa !283 ; 2 uses
  %i.ec = icmp eq i16 %i.eb, 0
  %i.ed = call i16 @llvm.bswap.i16(i16 %i.eb)
  %i.ee = zext i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.ee
  %.0.i.i.i.i.i = select i1 %i.ec, ptr @_hb_NullPool, ptr %i.ef, !prof !267
  br label %_ZNK2OT6Layout4GSUB10get_lookupEj.exit

_ZNK2OT6Layout4GSUB10get_lookupEj.exit:           ; preds = %bb.m, %bb.n, %bb.o
  %.0.i.i = phi ptr [ @_hb_NullPool, %bb.n ], [ %.0.i.i.i.i.i, %bb.o ], [ @_hb_NullPool, %bb.m ]
  call fastcc void @_ZL12apply_stringI9GSUBProxyEbPN2OT21hb_ot_apply_context_tERKNT_6LookupERKNS1_33hb_ot_layout_lookup_accelerator_tE(ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.2.i.ph)
  br label %bb.q

_ZNK15hb_set_digest_t13may_intersectERKS_.exit.thread: ; preds = %bb.l, %bb.k, %_ZNK15hb_set_digest_t13may_intersectERKS_.exit
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !585
  %.not83 = icmp eq ptr %i.eg, null
  br i1 %.not83, label %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GSUBEE9get_accelEj.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK15hb_set_digest_t13may_intersectERKS_.exit.thread
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i66, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !1262 ; 4 uses
  %i.ej = lshr i32 %i.ei, 24
  %i.ek = lshr i32 %i.ei, 16
  %i.el = and i32 %i.ek, 255
  %i.em = lshr i32 %i.ei, 8
  %i.en = and i32 %i.em, 255
  %i.eo = and i32 %i.ei, 255
  %i.ep = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef %3, ptr noundef nonnull @.str.379, i32 noundef %i.aq, i32 noundef %i.ej, i32 noundef %i.el, i32 noundef %i.en, i32 noundef %i.eo) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK2OT6Layout4GSUB10get_lookupEj.exit
  %.pr = load ptr, ptr %i.q, align 8, !tbaa !585
  %.not84 = icmp eq ptr %.pr, null
  br i1 %.not84, label %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GSUBEE9get_accelEj.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i66, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !1262 ; 4 uses
  %i.es = lshr i32 %i.er, 24
  %i.et = lshr i32 %i.er, 16
  %i.eu = and i32 %i.et, 255
  %i.ev = lshr i32 %i.er, 8
  %i.ew = and i32 %i.ev, 255
  %i.ex = and i32 %i.er, 255
  %i.ey = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef %3, ptr noundef nonnull @.str.380, i32 noundef %i.aq, i32 noundef %i.es, i32 noundef %i.eu, i32 noundef %i.ew, i32 noundef %i.ex) ; 0 uses
  br label %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GSUBEE9get_accelEj.exit

_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GSUBEE9get_accelEj.exit: ; preds = %_ZNK2OT6Layout4GSUB10get_lookupEj.exit75, %_ZNK15hb_set_digest_t13may_intersectERKS_.exit.thread, %.lr.ph, %bb.q, %bb.r, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ez = load i32, ptr %.0.i, align 8, !tbaa !1256
  %i.fa = zext i32 %i.ez to i64
  %i.fb = icmp samesign ult i64 %indvars.iv.next, %i.fa
  br i1 %i.fb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !2675

._crit_edge.loopexit:                             ; preds = %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GSUBEE9get_accelEj.exit
  %i.fc = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.1.lcssa = phi i32 [ %.06288, %bb.e ], [ %i.fc, %._crit_edge.loopexit ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1272 ; 2 uses
  %.not = icmp eq ptr %i.fe, null
  br i1 %.not, label %_ZN11hb_buffer_t13update_digestEv.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.ff = call noundef zeroext i1 %i.fe(ptr noundef %2, ptr noundef %3, ptr noundef %4) #59
  br i1 %i.ff, label %bb.t, label %_ZN11hb_buffer_t13update_digestEv.exit

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !tbaa !357
  %i.fg = load i32, ptr %i.ac, align 8, !tbaa !607 ; 5 uses
  %.not.i.i.i69 = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i.i69, label %_ZN11hb_buffer_t13update_digestEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.fh = load ptr, ptr %i.ad, align 8, !tbaa !589 ; 2 uses
  %xtraiter = and i32 %i.fg, 1
  %i.fi = icmp eq i32 %i.fg, 1
  br i1 %i.fi, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i32 %i.fg, -2
  br label %bb.u

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %bb.u
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.unr-lcssa, %.lr.ph.i.i.i
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.hf, %._crit_edge.i.i.i.unr-lcssa ]
  %.epil.init117 = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ha, %._crit_edge.i.i.i.unr-lcssa ]
  %.067.i.i.i.epil.init = phi ptr [ %i.fh, %.lr.ph.i.i.i ], [ %i.hg, %._crit_edge.i.i.i.unr-lcssa ]
  %.epil.init119 = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.gw, %._crit_edge.i.i.i.unr-lcssa ]
  %lcmp.mod123 = trunc i32 %i.fg to i1
  call void @llvm.assume(i1 %lcmp.mod123)
  %i.fj = load i32, ptr %.067.i.i.i.epil.init, align 4, !tbaa !324 ; 3 uses
  %i.fk = lshr i32 %i.fj, 4
  %i.fl = and i32 %i.fk, 63
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl nuw i64 1, %i.fm
  %i.fo = or i64 %i.fn, %.epil.init119
  %i.fp = and i32 %i.fj, 63
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = or i64 %i.fr, %.epil.init117
  %i.ft = lshr i32 %i.fj, 6
  %i.fu = and i32 %i.ft, 63
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = shl nuw i64 1, %i.fv
  %i.fx = or i64 %i.fw, %.epil.init
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.unr-lcssa, %.epil.preheader
  %.lcssa115 = phi i64 [ %i.gw, %._crit_edge.i.i.i.unr-lcssa ], [ %i.fo, %.epil.preheader ]
  %.lcssa114 = phi i64 [ %i.ha, %._crit_edge.i.i.i.unr-lcssa ], [ %i.fs, %.epil.preheader ]
  %.lcssa = phi i64 [ %i.hf, %._crit_edge.i.i.i.unr-lcssa ], [ %i.fx, %.epil.preheader ]
  store i64 %.lcssa115, ptr %i.r, align 8, !tbaa !357
  store i64 %.lcssa114, ptr %i.s, align 8, !tbaa !357
  store i64 %.lcssa, ptr %i.t, align 8, !tbaa !357
  br label %_ZN11hb_buffer_t13update_digestEv.exit

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.i.new
  %i.fy = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %i.hf, %bb.u ]
  %i.fz = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %i.ha, %bb.u ]
  %.067.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.new ], [ %i.hg, %bb.u ] ; 3 uses
  %i.ga = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %i.gw, %bb.u ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.u ]
  %i.gb = load i32, ptr %.067.i.i.i, align 4, !tbaa !324 ; 3 uses
  %i.gc = lshr i32 %i.gb, 4
  %i.gd = and i32 %i.gc, 63
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = or i64 %i.gf, %i.ga
  %i.gh = and i32 %i.gb, 63
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = shl nuw i64 1, %i.gi
  %i.gk = or i64 %i.gj, %i.fz
  %i.gl = lshr i32 %i.gb, 6
  %i.gm = and i32 %i.gl, 63
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = shl nuw i64 1, %i.gn
  %i.gp = or i64 %i.go, %i.fy
  %i.gq = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 20
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !324 ; 3 uses
  %i.gs = lshr i32 %i.gr, 4
  %i.gt = and i32 %i.gs, 63
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl nuw i64 1, %i.gu
  %i.gw = or i64 %i.gv, %i.gg                     ; 3 uses
  %i.gx = and i32 %i.gr, 63
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = shl nuw i64 1, %i.gy
  %i.ha = or i64 %i.gz, %i.gk                     ; 3 uses
  %i.hb = lshr i32 %i.gr, 6
  %i.hc = and i32 %i.hb, 63
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw i64 1, %i.hd
  %i.hf = or i64 %i.he, %i.gp                     ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 40 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.unr-lcssa, label %bb.u, !llvm.loop !30

_ZN11hb_buffer_t13update_digestEv.exit:           ; preds = %._crit_edge.i.i.i, %bb.t, %bb.s, %._crit_edge
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.hh = load i32, ptr %i.l, align 4, !tbaa !1254 ; 2 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = icmp samesign ult i64 %indvars.iv.next98, %i.hi
  br i1 %i.hj, label %bb.e, label %._crit_edge91, !llvm.loop !2676
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK11hb_ot_map_t8positionEPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.GPOSProxy, align 8          ; 4 uses
  %i.a = alloca [5 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !264  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 320 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.f = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN9GPOSProxyC2EP9hb_face_t.exit, !prof !265

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !266
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN9GPOSProxyC2EP9hb_face_t.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = tail call noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj27EE11call_createIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS4_Lj27EEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i.i, label %bb.c, label %bb.d, !prof !267

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07.i.i.i.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.i = cmpxchg weak ptr %i.d, ptr null, ptr %.07.i.i.i.i acq_rel monotonic, align 8
  %i.j = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.j, label %_ZN9GPOSProxyC2EP9hb_face_t.exit, label %bb.e, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN16hb_lazy_loader_tIN2OT18GPOS_accelerator_tE21hb_face_lazy_loader_tIS1_Lj27EE9hb_face_tLj27ES1_E10do_destroyEPS1_(ptr noundef nonnull %.07.i.i.i.i)
  %i.k = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZN9GPOSProxyC2EP9hb_face_t.exit, !prof !269

_ZN9GPOSProxyC2EP9hb_face_t.exit:                 ; preds = %.lr.ph.i.i.i.i, %bb.d, %bb.e, %bb.a
  %.19.ph.i.i.i.i = phi ptr [ %i.f, %bb.a ], [ %.07.i.i.i.i, %bb.d ], [ %i.k, %bb.e ], [ @_hb_NullPool, %.lr.ph.i.i.i.i ]
  store ptr %.19.ph.i.i.i.i, ptr %4, align 8, !tbaa !2679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.l, align 4
  %i.m = load i32, ptr %0, align 8, !tbaa !324
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.m)
  store i32 %5, ptr %i.a, align 4, !tbaa !280
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !585
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN9GPOSProxyC2EP9hb_face_t.exit
  %i.p = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %3, ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.a)
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f, %_ZN9GPOSProxyC2EP9hb_face_t.exit
  call void @_ZNK11hb_ot_map_t5applyI9GPOSProxyEEvRKT_PK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !585
  %.not11 = icmp eq ptr %i.q, null
  br i1 %.not11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %3, ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11hb_ot_map_t5applyI9GPOSProxyEEvRKT_PK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %5 = alloca %"struct.OT::hb_ot_apply_context_t", align 8 ; 40 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.c = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.c, null
  br i1 %.not15.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit, !prof !265

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1242 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = tail call noundef ptr @_hb_ot_shaper_font_data_create(ptr noundef nonnull %i.d) ; 5 uses
  %i.f = cmpxchg weak ptr %i.a, ptr null, ptr %i.e acq_rel monotonic, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  %.not.i11.i.i = icmp eq ptr %i.e, null
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, @_hb_NullPool
  %or.cond.i.i.i = or i1 %.not.i11.i.i, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.e) #59
  br label %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i

_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.h = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit, !prof !269

_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i, %bb.a
  %.19.ph.i.i = phi ptr [ %i.c, %bb.a ], [ null, %.lr.ph.i.i ], [ %i.h, %_ZN16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E10do_destroyEPS0_.exit.i.i ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.i = load ptr, ptr %1, align 8, !tbaa !2683, !nonnull !293, !align !294
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !272
  call void @_ZN2OT21hb_ot_apply_context_tC2EjP9hb_font_tP11hb_buffer_tP9hb_blob_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(384) %5, i32 noundef 1, ptr noundef %3, ptr noundef %4, ptr noundef %i.j, ptr noundef %.19.ph.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 232
  store ptr @_ZN2OT6Layout9GPOS_impl9PosLookup21dispatch_recurse_funcINS_21hb_ot_apply_context_tEEENT_8return_tEPS5_j, ptr %i.k, align 8, !tbaa !1251
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1254 ; 2 uses
  %.not96 = icmp eq i32 %i.m, 0
  br i1 %.not96, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 232 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 184 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 284 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 316
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 302 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 301 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 303 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 248
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 292
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 34
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 35
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 97
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 98
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 92
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 99
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 100
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %bb.e

._crit_edge95:                                    ; preds = %_ZN11hb_buffer_t13update_digestEv.exit, %_ZNK16hb_lazy_loader_tI17hb_ot_font_data_t23hb_shaper_lazy_loader_tI9hb_font_tLj1ES0_ES2_Lj1ES0_E3getEv.exit
  call void @_ZN2OT21hb_ot_apply_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %5) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  ret void

bb.e:                                             ; preds = %.lr.ph94, %_ZN11hb_buffer_t13update_digestEv.exit
  %i.bc = phi i32 [ %i.m, %.lr.ph94 ], [ %i.jn, %_ZN11hb_buffer_t13update_digestEv.exit ]
  %indvars.iv101 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next102, %_ZN11hb_buffer_t13update_digestEv.exit ] ; 3 uses
  %.06292 = phi i32 [ 0, %.lr.ph94 ], [ %.1.lcssa, %_ZN11hb_buffer_t13update_digestEv.exit ] ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %.not.i = icmp samesign ult i64 %indvars.iv101, %i.bd
  %i.be = load ptr, ptr %i.n, align 8
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv101
  %.0.i = select i1 %.not.i, ptr %i.bf, ptr @_hb_NullPool, !prof !268 ; 3 uses
  %i.bg = load i32, ptr %.0.i, align 8, !tbaa !1256
  %i.bh = icmp ult i32 %.06292, %i.bg
  br i1 %i.bh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.bi = zext i32 %.06292 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GPOSEE9get_accelEj.exit
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GPOSEE9get_accelEj.exit ] ; 3 uses
  %i.bj = load i32, ptr %i.o, align 4, !tbaa !1259
  %i.bk = zext i32 %i.bj to i64
  %.not.i65 = icmp samesign ult i64 %indvars.iv, %i.bk
  %i.bl = load ptr, ptr %i.p, align 8
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %indvars.iv
  %.0.i66 = select i1 %.not.i65, ptr %i.bm, ptr @_hb_NullPool, !prof !268 ; 6 uses
  %i.bn = load i16, ptr %.0.i66, align 4, !tbaa !1261 ; 4 uses
  %i.bo = zext i16 %i.bn to i32                   ; 5 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !2683, !nonnull !293, !align !294 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !1276
  %.not.i67 = icmp ugt i32 %i.br, %i.bo
  br i1 %.not.i67, label %.preheader.i, label %_ZNK2OT8GSUBGPOS13accelerator_tINS_6Layout4GPOSEE9get_accelEj.exit, !prof !268

.preheader.i:                                     ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  %i.bt = zext i16 %i.bn to i64                   ; 5 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !1277
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load atomic ptr, ptr %i.bv acquire, align 8 ; 2 uses
  %.not1418.i = icmp eq ptr %i.bw, null
  br i1 %.not1418.i, label %.lr.ph.i, label %.loopexit, !prof !265

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %i.bx = load ptr, ptr %i.bp, align 8, !tbaa !272 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.bx ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !275
  %i.ca = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !276
  %i.cc = icmp ult i32 %i.cb, 4
  %spec.select.i.i1.i.i.i = select i1 %i.cc, ptr @_hb_NullPool, ptr %i.bz ; 3 uses
  %i.cd = load i16, ptr %spec.select.i.i1.i.i.i, align 1, !tbaa !283
  %cond.i.i73 = icmp eq i16 %i.cd, 256
  br i1 %cond.i.i73, label %bb.f, label %_ZNK2OT6Layout4GPOS10get_lookupEj.exit78

bb.f:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i, i64 8
  %i.cf = load i16, ptr %i.ce, align 1, !tbaa !283 ; 2 uses
  %i.cg = icmp eq i16 %i.cf, 0
  %i.ch = call i16 @llvm.bswap.i16(i16 %i.cf)
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select.i.i1.i.i.i, i64 %i.ci
  %.0.i.i.i.i75 = select i1 %i.cg, ptr @_hb_NullPool, ptr %i.cj, !prof !267 ; 3 uses
  %i.ck = load i16, ptr %.0.i.i.i.i75, align 1, !tbaa !283
  %i.cl = call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %.not.i.i.i76 = icmp ult i16 %i.bn, %i.cl
  br i1 %.not.i.i.i76, label %bb.g, label %_ZNK2OT6Layout4GPOS10get_lookupEj.exit78, !prof !268

bb.g:                                             ; preds = %bb.f
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i75, i64 2
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.bt
  %i.co = load i16, ptr %i.cn, align 1, !tbaa !283 ; 2 uses
  %i.cp = icmp eq i16 %i.co, 0
  %i.cq = call i16 @llvm.bswap.i16(i16 %i.co)
end_hunk_3
