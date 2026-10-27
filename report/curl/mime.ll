Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/mime?download=true
inline.NumInlined: 77
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@encoder_qp_read:bb.a

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.y ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !60
  %i.ae = icmp eq i8 %i.ad, 13
  br i1 %i.ae, label %bb.f, label %qp_lookahead_eol.exit.thread79

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.ac, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !60
  %i.ah = icmp eq i8 %i.ag, 10
  br i1 %i.ah, label %qp_lookahead_eol.exit.thread, label %qp_lookahead_eol.exit.thread79

qp_lookahead_eol.exit:                            ; preds = %bb.d
  br i1 %2, label %qp_lookahead_eol.exit.thread79, label %.thread88

qp_lookahead_eol.exit.thread:                     ; preds = %bb.f, %bb.c
  store i8 61, ptr %i.a, align 1, !tbaa !60
  br label %qp_lookahead_eol.exit.thread79

bb.g:                                             ; preds = %bb.b
  %i.ai = icmp uge i64 %i.j, %i.i
  %or.cond.i65 = and i1 %2, %i.ai
  br i1 %or.cond.i65, label %qp_lookahead_eol.exit68.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add i64 %i.j, 2
  %i.ak = icmp ugt i64 %i.aj, %i.i
  br i1 %i.ak, label %qp_lookahead_eol.exit68, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp eq i8 %i.l, 13
  br i1 %i.al, label %bb.j, label %qp_lookahead_eol.exit68.thread82

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.k, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !60
  %i.ao = icmp eq i8 %i.an, 10
  br i1 %i.ao, label %qp_lookahead_eol.exit68.thread, label %qp_lookahead_eol.exit68.thread82

qp_lookahead_eol.exit68:                          ; preds = %bb.h
  br i1 %2, label %qp_lookahead_eol.exit68.thread82, label %.thread88

qp_lookahead_eol.exit68.thread:                   ; preds = %bb.j, %bb.g
  store i8 10, ptr %.049.sroa.gep73, align 1, !tbaa !60
  br label %qp_lookahead_eol.exit.thread79

qp_lookahead_eol.exit68.thread82:                 ; preds = %qp_lookahead_eol.exit68, %bb.j, %bb.i
  store i8 61, ptr %i.a, align 1, !tbaa !60
  br label %qp_lookahead_eol.exit.thread79

bb.k:                                             ; preds = %bb.b
  store i8 61, ptr %i.a, align 1, !tbaa !60
  br label %qp_lookahead_eol.exit.thread79

qp_lookahead_eol.exit.thread79:                   ; preds = %qp_lookahead_eol.exit, %bb.f, %bb.e, %qp_lookahead_eol.exit68.thread, %qp_lookahead_eol.exit68.thread82, %qp_lookahead_eol.exit.thread, %bb.k, %bb.b
  %.049.sroa.phi = phi ptr [ %.049.sroa.gep, %bb.k ], [ %.049.sroa.gep73, %bb.b ], [ %.049.sroa.gep, %qp_lookahead_eol.exit.thread ], [ %.049.sroa.gep73, %qp_lookahead_eol.exit ], [ %.049.sroa.gep, %qp_lookahead_eol.exit68.thread82 ], [ %.049.sroa.gep77, %qp_lookahead_eol.exit68.thread ], [ %.049.sroa.gep73, %bb.e ], [ %.049.sroa.gep73, %bb.f ]
  %.049 = phi i64 [ 3, %bb.k ], [ 1, %bb.b ], [ 3, %qp_lookahead_eol.exit.thread ], [ 1, %qp_lookahead_eol.exit ], [ 3, %qp_lookahead_eol.exit68.thread82 ], [ 2, %qp_lookahead_eol.exit68.thread ], [ 1, %bb.e ], [ 1, %bb.f ] ; 5 uses
  %.048 = phi i64 [ 1, %bb.k ], [ 1, %bb.b ], [ 1, %qp_lookahead_eol.exit.thread ], [ 1, %qp_lookahead_eol.exit ], [ 1, %qp_lookahead_eol.exit68.thread82 ], [ 2, %qp_lookahead_eol.exit68.thread ], [ 1, %bb.e ], [ 1, %bb.f ] ; 5 uses
  %i.ap = getelementptr i8, ptr %.049.sroa.phi, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !60
  %.not = icmp eq i8 %i.aq, 10
  br i1 %.not, label %.thread, label %bb.l

bb.l:                                             ; preds = %qp_lookahead_eol.exit.thread79
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !75
  %i.as = add i64 %i.ar, %.049                    ; 2 uses
  %i.at = icmp eq i64 %i.as, 76
  br i1 %i.at, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.au = add i64 %i.j, %.048                     ; 3 uses
  %i.av = icmp uge i64 %i.au, %i.i
  %or.cond.i69 = and i1 %2, %i.av
  br i1 %or.cond.i69, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = add i64 %i.au, 2
  %i.ax = icmp ugt i64 %i.aw, %i.i
  br i1 %i.ax, label %qp_lookahead_eol.exit72, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !60
  %i.ba = icmp eq i8 %i.az, 13
  br i1 %i.ba, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr i8, ptr %i.ay, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !60
  %i.bd = icmp eq i8 %i.bc, 10
  br i1 %i.bd, label %.thread, label %.critedge

qp_lookahead_eol.exit72:                          ; preds = %bb.n
  br i1 %2, label %.critedge, label %.thread88

bb.q:                                             ; preds = %bb.l
  %i.be = icmp ugt i64 %i.as, 76
  br i1 %i.be, label %.critedge, label %.thread

.critedge:                                        ; preds = %qp_lookahead_eol.exit72, %bb.p, %bb.o, %bb.q
  call void @curlx_strcopy(ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef nonnull @.str.32, i64 noundef 3) #17
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.m, %bb.q, %.critedge, %qp_lookahead_eol.exit.thread79
  %.150 = phi i64 [ 3, %.critedge ], [ %.049, %bb.q ], [ %.049, %qp_lookahead_eol.exit.thread79 ], [ %.049, %bb.p ], [ %.049, %bb.m ] ; 7 uses
  %.1 = phi i64 [ 0, %.critedge ], [ %.048, %bb.q ], [ %.048, %qp_lookahead_eol.exit.thread79 ], [ %.048, %bb.p ], [ %.048, %bb.m ]
  %i.bf = icmp ugt i64 %.150, %.059103
  br i1 %i.bf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.thread
  %.not63 = icmp eq i64 %.052105, 0
  %spec.select = select i1 %.not63, i64 -2, i64 %.052105
  br label %.thread88

bb.s:                                             ; preds = %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.054104, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %.150, i1 false)
  %i.bg = add i64 %.150, %.052105                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.054104, i64 %.150
  %i.bi = sub nuw i64 %.059103, %.150
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !75
  %i.bk = add i64 %i.bj, %.150
  %i.bl = getelementptr i8, ptr %i.a, i64 %.150
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !60
  %i.bo = icmp eq i8 %i.bn, 10
  %spec.store.select = select i1 %i.bo, i64 0, i64 %i.bk
  store i64 %spec.store.select, ptr %i.b, align 8, !tbaa !75
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !62
  %i.bq = add i64 %i.bp, %.1                      ; 3 uses
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !62
  %i.br = load i64, ptr %i.d, align 8, !tbaa !63  ; 2 uses
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.b, label %.thread88

.thread88:                                        ; preds = %bb.s, %qp_lookahead_eol.exit68, %qp_lookahead_eol.exit, %qp_lookahead_eol.exit72, %bb.a, %bb.r
  %.258 = phi i64 [ %spec.select, %bb.r ], [ 0, %bb.a ], [ %i.bg, %bb.s ], [ %.052105, %qp_lookahead_eol.exit68 ], [ %.052105, %qp_lookahead_eol.exit ], [ %.052105, %qp_lookahead_eol.exit72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.258
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i64 -1, 1) i64 @encoder_qp_size(ptr nofree noundef readonly captures(none) %0) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %.not = icmp ne i64 %i.b, 0
  %i.c = sext i1 %.not to i64
  ret i64 %i.c
}

declare void @curlx_strcopy(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @read_part_content(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr nofree noundef nonnull captures(none) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %4, 1                            ; 2 uses
  %i.b = icmp ugt i64 %i.a, 40
  br i1 %i.b, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30   ; 5 uses
  switch i64 %i.d, label %bb.c [
    i64 0, label %bb.aj
    i64 268435456, label %bb.aj
    i64 268435457, label %bb.aj
    i64 -1, label %bb.aj
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51
  %.not34 = icmp slt i64 %i.h, %i.f
  br i1 %.not34, label %bb.e, label %.sink.split.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  switch i32 %i.j, label %bb.ad [
    i32 4, label %bb.f
    i32 2, label %bb.ab
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i64 %4, 2
  %i.l = icmp eq i64 %i.a, 40
  br i1 %i.l, label %.sink.split.a, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.aa
  %.049.i70 = phi i64 [ 0, %.preheader ], [ %i.at, %bb.aa ] ; 4 uses
  %.053.i68 = phi ptr [ %1, %.preheader ], [ %i.au, %bb.aa ] ; 5 uses
  %.055.i66 = phi i64 [ %2, %.preheader ], [ %i.av, %bb.aa ] ; 5 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !118  ; 6 uses
  %i.u = load i32, ptr %i.o, align 8, !tbaa !53
  switch i32 %i.u, label %bb.aa [
    i32 0, label %bb.h
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.v
    i32 8, label %mime_subparts_read.exit
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !40
  store i32 5, ptr %i.o, align 8, !tbaa !45
  store ptr %i.v, ptr %i.p, align 8, !tbaa !56
  store i64 2, ptr %i.q, align 8, !tbaa !119
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.q, align 8, !tbaa !57
  %i.x = tail call i64 @curlx_sotouz(i64 noundef %i.w) #17 ; 3 uses
  %i.y = icmp ult i64 %i.x, 4
  br i1 %i.y, label %readback_bytes.exit52, label %readback_bytes.exit52.thread

readback_bytes.exit52:                            ; preds = %bb.i
  %i.z = sub nuw nsw i64 4, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr @.str.36, i64 %i.x
  %spec.select.i51 = tail call i64 @llvm.umin.i64(i64 %i.z, i64 range(i64 1, 0) %.055.i66) ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.053.i68, ptr nonnull align 1 %i.aa, i64 %spec.select.i51, i1 false)
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !57
  %i.ac = add i64 %i.ab, %spec.select.i51
  br label %.sink.split

readback_bytes.exit52.thread:                     ; preds = %bb.i
  store i32 6, ptr %i.o, align 8, !tbaa !45
  store ptr %i.t, ptr %i.p, align 8, !tbaa !56
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %.not63.i = icmp eq ptr %i.t, null
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !57
  %i.ae = tail call i64 @curlx_sotouz(i64 noundef %i.ad) #17 ; 7 uses
  %i.af = icmp ult i64 %i.ae, 46                  ; 2 uses
  br i1 %.not63.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ae
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ah = add i64 %i.ae, -46                      ; 2 uses
  %.not.i41 = icmp ult i64 %i.ah, 2
  br i1 %.not.i41, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr @.str.34, i64 %i.ah
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.025.i43 = phi ptr [ %i.ag, %bb.l ], [ %i.ai, %bb.n ]
  %.pn = phi i64 [ 46, %bb.l ], [ 48, %bb.n ]
  %.0.i44 = sub nuw nsw i64 %.pn, %i.ae
  %spec.select.i45 = tail call i64 @llvm.umin.i64(i64 %.0.i44, i64 range(i64 1, 0) %.055.i66) ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.053.i68, ptr nonnull align 1 %.025.i43, i64 %spec.select.i45, i1 false)
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !57
  %i.ak = add i64 %i.aj, %spec.select.i45
  store i64 %i.ak, ptr %i.q, align 8, !tbaa !57
  br label %bb.aa

bb.p:                                             ; preds = %bb.j
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ae
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.am = add i64 %i.ae, -46                      ; 2 uses
  %.not.i39 = icmp ult i64 %i.am, 4
  br i1 %.not.i39, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr @.str.37, i64 %i.am
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.025.i = phi ptr [ %i.al, %bb.q ], [ %i.an, %bb.s ]
  %.pn64 = phi i64 [ 46, %bb.q ], [ 50, %bb.s ]
  %.0.i40 = sub nsw i64 %.pn64, %i.ae
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.0.i40, i64 range(i64 1, 0) %.055.i66) ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.053.i68, ptr nonnull align 1 %.025.i, i64 %spec.select.i, i1 false)
  %i.ao = load i64, ptr %i.q, align 8, !tbaa !57
  %i.ap = add i64 %i.ao, %spec.select.i
  store i64 %i.ap, ptr %i.q, align 8, !tbaa !57
  br label %bb.aa

bb.u:                                             ; preds = %bb.m, %bb.r
  store i32 7, ptr %i.o, align 8, !tbaa !45
  store ptr %i.t, ptr %i.p, align 8, !tbaa !56
  store i64 0, ptr %i.q, align 8, !tbaa !57
  br label %bb.aa

bb.v:                                             ; preds = %bb.g
  %.not61.i = icmp eq ptr %i.t, null
  br i1 %.not61.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 8, ptr %i.o, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.aq = tail call fastcc i64 @readback_part(ptr noundef nonnull %i.t, ptr noundef %.053.i68, i64 noundef %.055.i66, ptr noundef nonnull %3, i64 noundef %i.k), !inline_history !116 ; 3 uses
  switch i64 %i.aq, label %bb.aa [
    i64 268435456, label %bb.y
    i64 268435457, label %bb.y
    i64 -1, label %bb.y
    i64 -2, label %bb.y
    i64 0, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x
  %.not62.i = icmp eq i64 %.049.i70, 0
  %spec.select = select i1 %.not62.i, i64 %i.aq, i64 %.049.i70
  br label %mime_subparts_read.exit

bb.z:                                             ; preds = %bb.x
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41
  store i32 5, ptr %i.o, align 8, !tbaa !45
  store ptr %i.as, ptr %i.p, align 8, !tbaa !56
  store i64 0, ptr %i.q, align 8, !tbaa !57
  br label %bb.aa

.sink.split:                                      ; preds = %readback_bytes.exit52.thread, %readback_bytes.exit52
  %.sink = phi i64 [ %i.ac, %readback_bytes.exit52 ], [ 0, %readback_bytes.exit52.thread ]
  %.1.i.ph = phi i64 [ %spec.select.i51, %readback_bytes.exit52 ], [ 0, %readback_bytes.exit52.thread ]
  store i64 %.sink, ptr %i.q, align 8, !tbaa !57
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.g, %bb.h, %bb.u, %bb.w, %bb.x, %bb.z, %bb.t, %bb.o
  %.1.i = phi i64 [ 0, %bb.g ], [ 0, %bb.h ], [ %spec.select.i, %bb.t ], [ %spec.select.i45, %bb.o ], [ 0, %bb.w ], [ 0, %bb.u ], [ %i.aq, %bb.x ], [ 0, %bb.z ], [ %.1.i.ph, %.sink.split ] ; 3 uses
  %i.at = add i64 %.1.i, %.049.i70                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.053.i68, i64 %.1.i
  %i.av = sub i64 %.055.i66, %.1.i                ; 2 uses
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %mime_subparts_read.exit, label %bb.g, !llvm.loop !117

bb.ab:                                            ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  %.not35 = icmp eq ptr %i.ax, null
  br i1 %.not35, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ay = tail call i32 @feof(ptr noundef nonnull %i.ax) #17
  %.not36 = icmp eq i32 %i.ay, 0
  br i1 %.not36, label %bb.ad, label %.sink.split.a

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !43 ; 2 uses
  %.not37 = icmp eq ptr %i.ba, null
  br i1 %.not37, label %.sink.split.a, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !29
  %i.bd = and i32 %i.bc, 4
  %.not38 = icmp eq i32 %i.bd, 0
  br i1 %.not38, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.be = load i8, ptr %3, align 1, !tbaa !55, !range !76, !noundef !77
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %3, align 1, !tbaa !55
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !24
  %i.bi = tail call i64 %i.ba(ptr noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef %i.bh) #17
  br label %mime_subparts_read.exit

mime_subparts_read.exit:                          ; preds = %bb.g, %bb.aa, %bb.y, %bb.ah
  %.0 = phi i64 [ %spec.select, %bb.y ], [ %i.bi, %bb.ah ], [ %.049.i70, %bb.g ], [ %i.at, %bb.aa ] ; 8 uses
  switch i64 %.0, label %bb.ai [
    i64 -2, label %bb.aj
    i64 0, label %.sink.split.a
    i64 268435456, label %.sink.split.a
    i64 268435457, label %.sink.split.a
    i64 -1, label %.sink.split.a
  ]

bb.ai:                                            ; preds = %mime_subparts_read.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !51
  %i.bl = add i64 %i.bk, %.0
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !51
  br label %.sink.split.a

.sink.split.a:                                    ; preds = %mime_subparts_read.exit, %mime_subparts_read.exit, %mime_subparts_read.exit, %mime_subparts_read.exit, %bb.d, %bb.ad, %bb.ac, %bb.f, %bb.ai
  %.063.sink = phi i64 [ %.0, %bb.ai ], [ %.0, %mime_subparts_read.exit ], [ %.0, %mime_subparts_read.exit ], [ %.0, %mime_subparts_read.exit ], [ %.0, %mime_subparts_read.exit ], [ -1, %bb.f ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.d ] ; 2 uses
  store i64 %.063.sink, ptr %i.c, align 8, !tbaa !30
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.a, %bb.b, %bb.b, %bb.b, %bb.b, %mime_subparts_read.exit, %bb.af, %bb.a
  %.030 = phi i64 [ %.0, %mime_subparts_read.exit ], [ -2, %bb.af ], [ -1, %bb.a ], [ %i.d, %bb.b ], [ %i.d, %bb.b ], [ %i.d, %bb.b ], [ %i.d, %bb.b ], [ %.063.sink, %.sink.split.a ]
  ret i64 %.030
}

declare i32 @curl_strnequal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc ptr @escape_string(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.dynbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.c = load i64, ptr %i.b, align 1
  %i.d = and i64 %i.c, 8
  %.not21 = icmp eq i64 %i.d, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.015 = phi ptr [ @escape_string.mimetable, %bb.d ], [ @escape_string.formtable, %bb.c ], [ @escape_string.formtable, %bb.b ] ; 2 uses
  call void @curlx_dyn_init(ptr noundef nonnull %3, i64 noundef 8000000) #17
  %i.e = call i32 @curlx_dyn_addn(ptr noundef nonnull %3, ptr noundef nonnull @.str.35, i64 noundef 0) #17
  %.not2230 = icmp eq i32 %i.e, 0
  br i1 %.not2230, label %.lr.ph33, label %.critedge

.lr.ph33:                                         ; preds = %bb.e, %bb.g
  %.01731 = phi ptr [ %i.o, %bb.g ], [ %1, %bb.e ] ; 3 uses
  %i.f = load i8, ptr %.01731, align 1, !tbaa !60 ; 2 uses
  %.not23 = icmp eq i8 %i.f, 0
  br i1 %.not23, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.lr.ph33
  %i.g = load ptr, ptr %.015, align 16, !tbaa !122 ; 2 uses
  %.not2428 = icmp eq ptr %i.g, null
  br i1 %.not2428, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.029, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122  ; 2 uses
  %.not24 = icmp eq ptr %i.i, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !120

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.j = phi ptr [ %i.i, %bb.f ], [ %i.g, %.preheader ] ; 2 uses
  %.029 = phi ptr [ %i.h, %bb.f ], [ %.015, %.preheader ]
  %i.k = load i8, ptr %i.j, align 1, !tbaa !60
  %.not25 = icmp eq i8 %i.k, %i.f
  br i1 %.not25, label %.critedge2, label %bb.f

.critedge2:                                       ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = call i32 @curlx_dyn_add(ptr noundef nonnull %3, ptr noundef nonnull %i.l) #17
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.n = call i32 @curlx_dyn_addn(ptr noundef nonnull %3, ptr noundef nonnull %.01731, i64 noundef 1) #17
  br label %bb.g

bb.g:                                             ; preds = %.critedge2, %._crit_edge
  %.1 = phi i32 [ %i.m, %.critedge2 ], [ %i.n, %._crit_edge ]
  %i.o = getelementptr inbounds nuw i8, ptr %.01731, i64 1
  %.not22 = icmp eq i32 %.1, 0
  br i1 %.not22, label %.lr.ph33, label %.critedge, !llvm.loop !121

.critedge:                                        ; preds = %.lr.ph33, %bb.g, %bb.e
  %i.p = call ptr @curlx_dyn_ptr(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %i.p
}

declare void @curlx_dyn_init(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @curlx_dyn_addn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @curlx_dyn_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @curlx_dyn_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @cr_mime_init(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 -1, ptr %i.c, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @Curl_bufq_init2(ptr noundef nonnull %i.e, i64 noundef 1024, i64 noundef 1, i32 noundef 2) #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @cr_mime_read(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca [256 x i8], align 16              ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 16 uses
  %i.i = load i8, ptr %i.h, align 8               ; 2 uses
  %i.j = and i8 %i.i, 2
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not182 = icmp eq ptr %0, null
  br i1 %.not182, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2187
end_hunk_0
