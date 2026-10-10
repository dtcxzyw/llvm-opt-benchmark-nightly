Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-xmpp-utils?download=true
inline.NumInlined: 34
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@xmpp_unknown_items:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr i8, ptr %i.y, i64 %index  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1 ; 3 uses
  %wide.load40 = load <16 x i8>, ptr %i.ak, align 1 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ad, i64 %index ; 2 uses
  %i.am = add <16 x i8> %wide.load, splat (i8 -97)
  %i.an = add <16 x i8> %wide.load40, splat (i8 -97)
  %i.ao = icmp ult <16 x i8> %i.am, splat (i8 26)
  %i.ap = icmp ult <16 x i8> %i.an, splat (i8 26)
  %i.aq = add nsw <16 x i8> %wide.load, splat (i8 -32)
  %i.ar = add nsw <16 x i8> %wide.load40, splat (i8 -32)
  %i.as = select <16 x i1> %i.ao, <16 x i8> %i.aq, <16 x i8> %wide.load
  %i.at = select <16 x i1> %i.ap, <16 x i8> %i.ar, <16 x i8> %wide.load40
  %i.au = getelementptr i8, ptr %i.al, i64 16
  store <16 x i8> %i.as, ptr %i.al, align 1
  store <16 x i8> %i.at, ptr %i.au, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %xmpp_ep_string_upcase.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %i.z, 2147483640             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr i8, ptr %i.y, i64 %index42
  %wide.load43 = load <8 x i8>, ptr %i.aw, align 1 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.ad, i64 %index42
  %i.ay = add <8 x i8> %wide.load43, splat (i8 -97)
  %i.az = icmp ult <8 x i8> %i.ay, splat (i8 26)
  %i.ba = add nsw <8 x i8> %wide.load43, splat (i8 -32)
  %i.bb = select <8 x i1> %i.az, <8 x i8> %i.ba, <8 x i8> %wide.load43
  store <8 x i8> %i.bb, ptr %i.ax, align 1
  %index.next44 = add nuw i64 %index42, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next44, %n.vec41
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %wide.trip.count.i, %n.vec41
  br i1 %cmp.n45, label %xmpp_ep_string_upcase.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec41, %vec.epilog.middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bd = getelementptr i8, ptr %i.y, i64 %indvars.iv.i.ph
  %i.be = load i8, ptr %i.bd, align 1             ; 3 uses
  %i.bf = getelementptr i8, ptr %i.ad, i64 %indvars.iv.i.ph
  %i.bg = add i8 %i.be, -97
  %or.cond.i.prol = icmp ult i8 %i.bg, 26
  %i.bh = add nsw i8 %i.be, -32
  %spec.select.i.prol = select i1 %or.cond.i.prol, i8 %i.bh, i8 %i.be
  store i8 %spec.select.i.prol, ptr %i.bf, align 1
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bi = icmp eq i64 %wide.trip.count.i, %.neg
  br i1 %i.bi, label %xmpp_ep_string_upcase.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.bj = getelementptr i8, ptr %i.y, i64 %indvars.iv.i
  %i.bk = load i8, ptr %i.bj, align 1             ; 3 uses
  %i.bl = getelementptr i8, ptr %i.ad, i64 %indvars.iv.i
  %i.bm = add i8 %i.bk, -97
  %or.cond.i = icmp ult i8 %i.bm, 26
  %i.bn = add nsw i8 %i.bk, -32
  %spec.select.i = select i1 %or.cond.i, i8 %i.bn, i8 %i.bk
  store i8 %spec.select.i, ptr %i.bl, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.y, i64 %indvars.iv.next.i
  %i.bp = load i8, ptr %i.bo, align 1             ; 3 uses
  %i.bq = getelementptr i8, ptr %i.ad, i64 %indvars.iv.next.i
  %i.br = add i8 %i.bp, -97
  %or.cond.i.1 = icmp ult i8 %i.br, 26
  %i.bs = add nsw i8 %i.bp, -32
  %spec.select.i.1 = select i1 %or.cond.i.1, i8 %i.bs, i8 %i.bp
  store i8 %spec.select.i.1, ptr %i.bq, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %xmpp_ep_string_upcase.exit, label %.lr.ph.i, !llvm.loop !22

xmpp_ep_string_upcase.exit:                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %i.bt = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull %i.a, ptr noundef %i.ad)
  %i.bu = getelementptr i8, ptr %i.r, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.bv, null
  br i1 %.not32, label %bb.h, label %bb.g

bb.g:                                             ; preds = %xmpp_ep_string_upcase.exit
  %i.bw = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bw, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.bv)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %xmpp_ep_string_upcase.exit
  call fastcc void @xmpp_unknown_items(ptr noundef %i.bt, ptr noundef %1, ptr noundef %2, ptr noundef %i.r, i32 noundef %i.q)
  %i.bx = getelementptr i8, ptr %.034, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not31 = icmp eq ptr %i.by, null
  br i1 %.not31, label %._crit_edge, label %bb.f, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.h, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @xmpp_cdata(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = icmp eq i32 %3, -1                       ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @hf_xmpp_cdata, align 4
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %i.d, ptr noundef %1, i32 noundef %i.f, i32 noundef %i.h, ptr noundef %i.i) ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.b, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef %i.l, i32 noundef %i.n, ptr noundef %i.o) ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr @hf_xmpp_cdata, align 4
  %i.r = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %0, i32 noundef %i.q, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = tail call ptr @proto_tree_add_string(ptr noundef %0, i32 noundef %3, ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.16) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @xmpp_simple_cdata_elem(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_xmpp_cdata, align 4
  %i.b = getelementptr i8, ptr %3, i64 48
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %3, i64 52
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %3, i64 40         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ @.str.16, %bb.a ]
  %i.j = getelementptr i8, ptr %2, i64 416
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %3, align 8                ; 4 uses
  %i.m = tail call i64 @strlen(ptr noundef readonly %i.l) #11 ; 6 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = shl i64 %i.m, 32
  %sext.i = add i64 %i.o, 4294967296
  %i.p = ashr exact i64 %sext.i, 32
  %i.q = tail call noalias ptr @wmem_alloc0(ptr noundef %i.k, i64 noundef %i.p) #9 ; 4 uses
  %i.r = icmp sgt i32 %i.n, 0
  br i1 %i.r, label %iter.check, label %xmpp_ep_string_upcase.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = and i64 %i.m, 2147483647   ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.prol, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp samesign ult i64 %wide.trip.count.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.m, 24
  %n.vec = and i64 %i.m, 2147483616               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr i8, ptr %i.l, i64 %index   ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <16 x i8>, ptr %i.t, align 1  ; 3 uses
  %wide.load14 = load <16 x i8>, ptr %i.u, align 1 ; 3 uses
  %i.v = getelementptr i8, ptr %i.q, i64 %index   ; 2 uses
  %i.w = add <16 x i8> %wide.load, splat (i8 -97)
  %i.x = add <16 x i8> %wide.load14, splat (i8 -97)
  %i.y = icmp ult <16 x i8> %i.w, splat (i8 26)
  %i.z = icmp ult <16 x i8> %i.x, splat (i8 26)
  %i.aa = add nsw <16 x i8> %wide.load, splat (i8 -32)
  %i.ab = add nsw <16 x i8> %wide.load14, splat (i8 -32)
  %i.ac = select <16 x i1> %i.y, <16 x i8> %i.aa, <16 x i8> %wide.load
  %i.ad = select <16 x i1> %i.z, <16 x i8> %i.ab, <16 x i8> %wide.load14
  %i.ae = getelementptr i8, ptr %i.v, i64 16
  store <16 x i8> %i.ac, ptr %i.v, align 1
  store <16 x i8> %i.ad, ptr %i.ae, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %xmpp_ep_string_upcase.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.prol, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.m, 2147483640             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr i8, ptr %i.l, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.ag, align 1 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.q, i64 %index16
  %i.ai = add <8 x i8> %wide.load17, splat (i8 -97)
  %i.aj = icmp ult <8 x i8> %i.ai, splat (i8 26)
  %i.ak = add nsw <8 x i8> %wide.load17, splat (i8 -32)
  %i.al = select <8 x i1> %i.aj, <8 x i8> %i.ak, <8 x i8> %wide.load17
  store <8 x i8> %i.al, ptr %i.ah, align 1
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.am = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.am, label %.lr.ph.i.preheader.a, label %vec.epilog.vector.body, !llvm.loop !25

.lr.ph.i.preheader.a:                             ; preds = %vec.epilog.vector.body
  %lcmp.mod.not = icmp eq i64 %wide.trip.count.i, %n.vec15
  br i1 %lcmp.mod.not, label %xmpp_ep_string_upcase.exit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %iter.check, %vec.epilog.iter.check, %.lr.ph.i.preheader.a
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %.lr.ph.i.preheader.a ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.prol ] ; 3 uses
  %i.an = getelementptr i8, ptr %i.l, i64 %indvars.iv.i
  %i.ao = load i8, ptr %i.an, align 1             ; 3 uses
  %i.ap = getelementptr i8, ptr %i.q, i64 %indvars.iv.i
  %i.aq = add i8 %i.ao, -97
  %or.cond.i.1 = icmp ult i8 %i.aq, 26
  %i.ar = add nsw i8 %i.ao, -32
  %spec.select.i.1 = select i1 %or.cond.i.1, i8 %i.ar, i8 %i.ao
  store i8 %spec.select.i.1, ptr %i.ap, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %xmpp_ep_string_upcase.exit, label %.lr.ph.i, !llvm.loop !26

xmpp_ep_string_upcase.exit:                       ; preds = %.lr.ph.i, %middle.block, %.lr.ph.i.preheader.a, %bb.c
  %i.as = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not11 = icmp eq ptr %i.as, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %xmpp_ep_string_upcase.exit
  %i.at = load ptr, ptr %i.as, align 8
  br label %bb.e

bb.e:                                             ; preds = %xmpp_ep_string_upcase.exit, %bb.d
  %i.au = phi ptr [ %i.at, %bb.d ], [ @.str.16, %xmpp_ep_string_upcase.exit ]
  %i.av = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %0, i32 noundef %i.a, ptr noundef %1, i32 noundef %i.c, i32 noundef %i.e, ptr noundef %i.i, ptr noundef nonnull @.str.18, ptr noundef %i.q, ptr noundef %i.au) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noalias noundef ptr @xmpp_ep_init_array_t(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %0, i64 noundef 16) #9 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.b, align 8
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noalias noundef ptr @xmpp_ep_init_attr_t(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %0, i64 noundef 32) #9 ; 5 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 16
  store i32 %2, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.a, i64 20
  store i32 %3, ptr %i.c, align 4
  %i.d = getelementptr i8, ptr %i.a, i64 8
  store ptr null, ptr %i.d, align 8
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @xmpp_steal_element_by_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._xmpp_element_t, align 8    ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %1, ptr %2, align 8
  %i.b = call ptr @g_list_find_custom(ptr noundef %.val, ptr noundef nonnull %2, ptr noundef nonnull @xmpp_element_t_cmp) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 56
  store i8 1, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @xmpp_steal_element_by_names(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct._xmpp_element_t, align 8    ; 4 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %xmpp_steal_element_by_name.exit._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %xmpp_steal_element_by_name.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %xmpp_steal_element_by_name.exit.thread ] ; 2 uses
  %i.c = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8
  %.val.i = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %i.d, ptr %3, align 8
  %i.e = call ptr @g_list_find_custom(ptr noundef %.val.i, ptr noundef nonnull %3, ptr noundef nonnull @xmpp_element_t_cmp) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %xmpp_steal_element_by_name.exit.thread, label %xmpp_steal_element_by_name.exit

xmpp_steal_element_by_name.exit:                  ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 56
  store i8 1, ptr %i.g, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %xmpp_steal_element_by_name.exit.thread, label %xmpp_steal_element_by_name.exit._crit_edge

xmpp_steal_element_by_name.exit.thread:           ; preds = %bb.b, %xmpp_steal_element_by_name.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %xmpp_steal_element_by_name.exit._crit_edge, label %bb.b, !llvm.loop !0

xmpp_steal_element_by_name.exit._crit_edge:       ; preds = %xmpp_steal_element_by_name.exit.thread, %xmpp_steal_element_by_name.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.f, %xmpp_steal_element_by_name.exit ], [ null, %xmpp_steal_element_by_name.exit.thread ]
  ret ptr %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @xmpp_steal_element_by_attr(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.01732 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not2133 = icmp eq ptr %.01732, null
  br i1 %.not2133, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.01734 = phi ptr [ %.017, %.thread ], [ %.01732, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.01734, align 8           ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @g_hash_table_lookup(ptr noundef %i.d, ptr noundef %1) ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = tail call ptr @g_hash_table_find(ptr noundef %i.f, ptr noundef nonnull @attr_find_pred, ptr noundef %1) ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.012.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.h = getelementptr i8, ptr %.012.i, i64 24
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 56
  %i.j = load i8, ptr %i.i, align 8, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %.012.i, align 8
  %i.m = tail call i32 @strcmp(ptr noundef %i.l, ptr noundef %2) #11
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.thread27, label %.thread

.thread27:                                        ; preds = %bb.d
  %i.o = load ptr, ptr %.01734, align 8           ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 56
  store i8 1, ptr %i.p, align 8
  br label %.loopexit

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %i.q = getelementptr i8, ptr %.01734, i64 8
  %.017 = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not21 = icmp eq ptr %.017, null
  br i1 %.not21, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.thread, %bb.a, %.thread27
  %.2 = phi ptr [ %i.o, %.thread27 ], [ null, %bb.a ], [ null, %.thread ]
  ret ptr %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @xmpp_steal_element_by_name_and_attr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.01934 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not2335 = icmp eq ptr %.01934, null
  br i1 %.not2335, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.01936 = phi ptr [ %.019, %.thread ], [ %.01934, %bb.a ] ; 3 uses
  %i.b = load ptr, ptr %.01936, align 8           ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @g_hash_table_lookup(ptr noundef %i.d, ptr noundef %2) ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = tail call ptr @g_hash_table_find(ptr noundef %i.f, ptr noundef nonnull @attr_find_pred, ptr noundef %2) ; 2 uses
  %.not9.i = icmp eq ptr %i.g, null
  br i1 %.not9.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.012.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.h = getelementptr i8, ptr %.012.i, i64 24
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 56
  %i.j = load i8, ptr %i.i, align 8, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = tail call i32 @strcmp(ptr noundef %i.l, ptr noundef %1) #11
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %.012.i, align 8
  %i.p = tail call i32 @strcmp(ptr noundef %i.o, ptr noundef %3) #11
  %i.q = icmp eq i32 %i.p, 0
end_hunk_0
begin_hunk_1_@xmpp_display_elems:bb.a

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @xmpp_unknown(ptr noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @xmpp_val_enum_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !38

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef %i.f) #11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.b

.critedge:                                        ; preds = %bb.b, %.preheader
  %i.i = tail call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ei_xmpp_field_unexpected_value, ptr noundef nonnull @.str.25, ptr noundef %2, ptr noundef nonnull %3) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @xmpp_change_elem_to_attrib(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._xmpp_element_t, align 8    ; 4 uses
  %i.a = getelementptr i8, ptr %3, i64 32
  %.val.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %1, ptr %5, align 8
  %i.b = call ptr @g_list_find_custom(ptr noundef %.val.i, ptr noundef nonnull %5, ptr noundef nonnull @xmpp_element_t_cmp) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.thread, label %xmpp_steal_element_by_name.exit

xmpp_steal_element_by_name.exit:                  ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 56
  store i8 1, ptr %i.d, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %xmpp_steal_element_by_name.exit
  %i.e = call ptr %4(ptr noundef %0, ptr noundef nonnull %i.c) ; 2 uses
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i32 @g_hash_table_insert(ptr noundef %i.g, ptr noundef %2, ptr noundef nonnull %i.e) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %xmpp_steal_element_by_name.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noalias noundef ptr @xmpp_transform_func_cdata(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ @.str.16, %bb.a ]
  %i.e = getelementptr i8, ptr %1, i64 48
  %i.f = load <2 x i32>, ptr %i.e, align 8
  %i.g = tail call noalias dereferenceable_or_null(32) ptr @wmem_alloc(ptr noundef %0, i64 noundef 32) #9 ; 4 uses
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 16
  store <2 x i32> %i.f, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.g, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.g
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_list_find_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @xmpp_element_t_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = tail call i32 @strcmp(ptr noundef %i.a, ptr noundef %i.b) #11 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.g = zext nneg i8 %i.f to i32
  %spec.select = sub nsw i32 0, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xmpp_copy_hash_table_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @g_hash_table_insert(ptr noundef %2, ptr noundef %0, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @cleanup_glist_cb(ptr noundef %0) #0 {
bb.a:
  tail call void @g_list_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { allocsize(1) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 8, i32 24}
!13 = distinct !{!13, !9, !10, !11}
!14 = distinct !{!14, !9, !10, !11}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10, !11}
!17 = distinct !{!17, !9, !10, !11}
!18 = distinct !{!18, !9, !10}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9, !10, !11}
!21 = distinct !{!21, !9, !10, !11}
!22 = distinct !{!22, !9, !10}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9, !10, !11}
!25 = distinct !{!25, !9, !10, !11}
!26 = distinct !{!26, !9, !11, !10}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
end_hunk_1
