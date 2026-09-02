Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_acl?download=true
inline.NumInlined: 37
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@archive_acl_to_text_l:bb.a
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  store ptr %i.ib, ptr %i.c, align 8, !tbaa !37
  store i8 100, ptr %i.ia, align 1, !tbaa !35
  br label %.split103.2.i

.split103.2.i:                                    ; preds = %bb.be, %.split103.1.i
  %i.ic = and i32 %i.cr, 268435456
  %.not88.2.i = icmp eq i32 %i.ic, 0
  br i1 %.not88.2.i, label %.split103.3.i, label %bb.bf

bb.bf:                                            ; preds = %.split103.2.i
  %i.id = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  store ptr %i.ie, ptr %i.c, align 8, !tbaa !37
  store i8 105, ptr %i.id, align 1, !tbaa !35
  br label %.split103.3.i

.split103.3.i:                                    ; preds = %bb.bf, %.split103.2.i
  %i.if = and i32 %i.cr, 134217728
  %.not88.3.i = icmp eq i32 %i.if, 0
  br i1 %.not88.3.i, label %.split103.4.i, label %bb.bg

bb.bg:                                            ; preds = %.split103.3.i
  %i.ig = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store ptr %i.ih, ptr %i.c, align 8, !tbaa !37
  store i8 110, ptr %i.ig, align 1, !tbaa !35
  br label %.split103.4.i

.split103.4.i:                                    ; preds = %bb.bg, %.split103.3.i
  %i.ii = and i32 %i.cr, 536870912
  %.not88.4.i = icmp eq i32 %i.ii, 0
  br i1 %.not88.4.i, label %.split103.5.i, label %bb.bh

bb.bh:                                            ; preds = %.split103.4.i
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store ptr %i.ik, ptr %i.c, align 8, !tbaa !37
  store i8 83, ptr %i.ij, align 1, !tbaa !35
  br label %.split103.5.i

.split103.5.i:                                    ; preds = %bb.bh, %.split103.4.i
  %i.il = and i32 %i.cr, 1073741824
  %.not88.5.i = icmp eq i32 %i.il, 0
  br i1 %.not88.5.i, label %.split103.6.i, label %bb.bi

bb.bi:                                            ; preds = %.split103.5.i
  %i.im = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  store ptr %i.in, ptr %i.c, align 8, !tbaa !37
  store i8 70, ptr %i.im, align 1, !tbaa !35
  br label %.split103.6.i

.split103.6.i:                                    ; preds = %bb.bi, %.split103.5.i
  %i.io = and i32 %i.cr, 16777216
  %.not88.6.i = icmp eq i32 %i.io, 0
  br i1 %.not88.6.i, label %.split105.us.i, label %.split105.us.sink.split.i

.split105.us.sink.split.i:                        ; preds = %.split103.6.i, %.preheader.split.us.preheader.i
  %.sink196.i = phi i8 [ %spec.select200.i, %.preheader.split.us.preheader.i ], [ 73, %.split103.6.i ]
  %i.ip = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  store ptr %i.iq, ptr %i.c, align 8, !tbaa !37
  store i8 %.sink196.i, ptr %i.ip, align 1, !tbaa !35
  br label %.split105.us.i

.split105.us.i:                                   ; preds = %.split105.us.sink.split.i, %.split103.6.i
  %i.ir = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  store ptr %i.is, ptr %i.c, align 8, !tbaa !37
  store i8 58, ptr %i.ir, align 1, !tbaa !35
  %i.it = call range(i32 0, 31) i32 @llvm.ctpop.i32(i32 %i.cn)
  %i.iu = icmp eq i32 %i.it, 1
  br i1 %i.iu, label %.split.i, label %bb.bn

.split.i:                                         ; preds = %.split105.us.i
  %i.iv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cn, i1 true)
  switch i32 %i.iv, label %bb.bn [
    i32 10, label %bb.bj
    i32 11, label %bb.bk
    i32 12, label %bb.bl
    i32 13, label %bb.bm
  ]

bb.bj:                                            ; preds = %.split.i
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.iw, ptr noundef nonnull align 1 dereferenceable(6) @.str.29, i64 6, i1 false) #20
  br label %bb.bo

bb.bk:                                            ; preds = %.split.i
  %i.ix = load ptr, ptr %i.c, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ix, ptr noundef nonnull align 1 dereferenceable(5) @.str.28, i64 5, i1 false) #20
  br label %bb.bo

bb.bl:                                            ; preds = %.split.i
  %i.iy = load ptr, ptr %i.c, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.iy, ptr noundef nonnull align 1 dereferenceable(6) @.str.30, i64 6, i1 false) #20
  br label %bb.bo

bb.bm:                                            ; preds = %.split.i
  %i.iz = load ptr, ptr %i.c, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.iz, ptr noundef nonnull align 1 dereferenceable(6) @.str.31, i64 6, i1 false) #20
  br label %bb.bo

bb.bn:                                            ; preds = %.split.i, %.split105.us.i
  %i.ja = load ptr, ptr %i.c, align 8, !tbaa !37
  store i8 0, ptr %i.ja, align 1, !tbaa !35
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %i.jb = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.jc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jb) #25
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jc
  store ptr %i.jd, ptr %i.c, align 8, !tbaa !37
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ao
  %.4118.i = phi i32 [ %.4119.i, %bb.bo ], [ %.4.i, %bb.ao ] ; 2 uses
  %.not93.i = icmp eq i32 %.4118.i, -1
  br i1 %.not93.i, label %append_entry.exit86, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.je = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  store ptr %i.jf, ptr %i.c, align 8, !tbaa !37
  store i8 58, ptr %i.je, align 1, !tbaa !35
  call fastcc void @append_id(ptr noundef nonnull %i.c, i32 noundef %.4118.i)
  br label %append_entry.exit86

append_entry.exit86:                              ; preds = %bb.bp, %bb.bq
  %i.jg = add nsw i32 %.198, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.n, %bb.n, %bb.n, %bb.l, %append_entry.exit86
  %.2 = phi i32 [ %.198, %bb.l ], [ %.198, %bb.n ], [ %.198, %bb.n ], [ %.198, %bb.n ], [ %i.jg, %append_entry.exit86 ]
  %.053 = load ptr, ptr %.05399, align 8, !tbaa !30 ; 2 uses
  %.not67 = icmp eq ptr %.053, null
  br i1 %.not67, label %._crit_edge.loopexit, label %bb.l, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %bb.br
  %.pre101 = load ptr, ptr %i.c, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %i.jh = phi ptr [ %.pre101, %._crit_edge.loopexit ], [ %i.bo, %bb.k ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store ptr %i.ji, ptr %i.c, align 8, !tbaa !37
  store i8 0, ptr %i.jh, align 1, !tbaa !35
  %i.jj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #25 ; 3 uses
  store i64 %i.jj, ptr %i.a, align 8, !tbaa !39
  %i.jk = add i64 %phi.call, -1
  %i.jl = icmp ugt i64 %i.jj, %i.jk
  br i1 %i.jl, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %._crit_edge
  call void @__archive_errx(i32 noundef 1, ptr noundef nonnull @.str.2) #24
  unreachable

bb.bt:                                            ; preds = %._crit_edge
  %.not68 = icmp eq ptr %1, null
  br i1 %.not68, label %archive_acl_text_want_type.exit.thread91, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store i64 %i.jj, ptr %1, align 8, !tbaa !39
  br label %archive_acl_text_want_type.exit.thread91

archive_acl_text_want_type.exit.thread91:         ; preds = %bb.b, %bb.bt, %bb.bu, %bb.f, %bb.d, %bb.p
  %.057 = phi ptr [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.p ], [ %i.l, %bb.bu ], [ %i.l, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.057
}

declare i32 @archive_mstring_get_mbs_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local range(i32 -30, 1) i32 @archive_acl_from_text_w(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [6 x %struct.anon], align 16        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %.2119.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  switch i32 %2, label %archive_acl_add_entry_w_len.exit [
    i32 768, label %bb.b
    i32 256, label %bb.d
    i32 512, label %bb.d
    i32 15360, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %.1123 = phi i32 [ %2, %bb.c ], [ 256, %bb.b ], [ %2, %bb.a ], [ %2, %bb.a ] ; 4 uses
  %.0121 = phi i32 [ 6, %bb.c ], [ 5, %bb.b ], [ 5, %bb.a ], [ 5, %bb.a ] ; 3 uses
  %.not340 = icmp eq ptr %1, null
  br i1 %.not340, label %.critedge, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.d
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not138 = icmp eq i32 %.1123, 15360
  %.sroa.8.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = zext nneg i32 %.0121 to i64
  %4 = add nsw i32 %.0121, -2
  %i.c = load i32, ptr %1, align 4, !tbaa !36
  %.not137403 = icmp eq i32 %i.c, 0
  br i1 %.not137403, label %.critedge, label %.preheader333.preheader

.preheader333.preheader:                          ; preds = %.lr.ph347, %is_nfs4_perms_w.exit.backedge
  %.0233341408 = phi ptr [ %.6239, %is_nfs4_perms_w.exit.backedge ], [ %1, %.lr.ph347 ]
  %.0114342407 = phi i32 [ %.0114.be, %is_nfs4_perms_w.exit.backedge ], [ 0, %.lr.ph347 ] ; 2 uses
  %.0110343404 = phi i32 [ %.0110.be, %is_nfs4_perms_w.exit.backedge ], [ 0, %.lr.ph347 ] ; 25 uses
  br label %.preheader333

.preheader333:                                    ; preds = %.preheader333.preheader, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader333.preheader ] ; 6 uses
  %.1234 = phi ptr [ %.6239, %bb.i ], [ %.0233341408, %.preheader333.preheader ]
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i, %.preheader333
  %.2235 = phi ptr [ %.1234, %.preheader333 ], [ %i.e, %.critedge.i ] ; 6 uses
  %i.d = load i32, ptr %.2235, align 4, !tbaa !36 ; 2 uses
  switch i32 %i.d, label %.preheader [
    i32 32, label %.critedge.i
    i32 9, label %.critedge.i
    i32 10, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.e, %bb.e, %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %.2235, i64 4
  br label %bb.e, !llvm.loop !47

.preheader:                                       ; preds = %bb.e, %bb.f
  %.pr = phi i32 [ %.pre, %bb.f ], [ %i.d, %bb.e ] ; 3 uses
  %.3236 = phi ptr [ %i.f, %bb.f ], [ %.2235, %bb.e ] ; 5 uses
  switch i32 %.pr, label %bb.f [
    i32 0, label %.critedge2.i
    i32 44, label %.critedge2.i
    i32 58, label %.critedge2.i
    i32 10, label %.critedge2.i
    i32 35, label %.critedge2.i
  ]

bb.f:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.3236, i64 4 ; 2 uses
  %.pre = load i32, ptr %i.f, align 4, !tbaa !36
  br label %.preheader, !llvm.loop !48

.critedge2.i:                                     ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.g = icmp eq ptr %.3236, %.2235
  br i1 %i.g, label %.loopexit.i, label %.preheader53.i

.preheader53.i:                                   ; preds = %.critedge2.i, %.preheader53.i.backedge
  %.pn.i = phi ptr [ %storemerge.i, %.preheader53.i.backedge ], [ %.3236, %.critedge2.i ] ; 2 uses
  %storemerge.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 2 uses
  %i.h = load i32, ptr %storemerge.i, align 4, !tbaa !36
  switch i32 %i.h, label %.loopexit.i [
    i32 32, label %.preheader53.i.backedge
    i32 9, label %.preheader53.i.backedge
    i32 10, label %.preheader53.i.backedge
  ]

.preheader53.i.backedge:                          ; preds = %.preheader53.i, %.preheader53.i, %.preheader53.i
  br label %.preheader53.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %.preheader53.i, %.critedge2.i
  %storemerge48.i = phi ptr [ %.2235, %.critedge2.i ], [ %.pn.i, %.preheader53.i ]
  %i.i = icmp eq i32 %.pr, 35
  br i1 %i.i, label %.preheader.i, label %.critedge6.i

.preheader.i:                                     ; preds = %.loopexit.i, %bb.g
  %i.j = phi i32 [ %.pre362, %bb.g ], [ 35, %.loopexit.i ] ; 4 uses
  %.5238 = phi ptr [ %i.k, %bb.g ], [ %.3236, %.loopexit.i ] ; 4 uses
  switch i32 %i.j, label %bb.g [
    i32 0, label %.critedge6.i
    i32 44, label %.critedge6.i
    i32 10, label %.critedge6.i
  ]

bb.g:                                             ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %.5238, i64 4 ; 2 uses
  %.pre362 = load i32, ptr %i.k, align 4, !tbaa !36
  br label %.preheader.i, !llvm.loop !50

.critedge6.i:                                     ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.loopexit.i
  %i.l = phi i32 [ %.pr, %.loopexit.i ], [ %i.j, %.preheader.i ], [ %i.j, %.preheader.i ], [ %i.j, %.preheader.i ] ; 2 uses
  %.4237 = phi ptr [ %.3236, %.loopexit.i ], [ %.5238, %.preheader.i ], [ %.5238, %.preheader.i ], [ %.5238, %.preheader.i ]
  %.not52.i = icmp eq i32 %i.l, 0
  %.6239.idx = select i1 %.not52.i, i64 0, i64 4
  %.6239 = getelementptr inbounds nuw i8, ptr %.4237, i64 %.6239.idx ; 3 uses
  %i.m = icmp samesign ult i64 %indvars.iv, %i.b
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge6.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store ptr %.2235, ptr %i.n, align 16, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %storemerge48.i, ptr %i.o, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge6.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = icmp eq i32 %i.l, 58
  br i1 %i.p, label %.preheader333, label %.preheader332, !llvm.loop !51

.preheader332:                                    ; preds = %bb.i
  %i.q = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.r = trunc nuw i64 %indvars.iv.next to i32
  %i.s = icmp samesign ugt i32 %.0121, %i.r
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader332
  %i.t = shl i64 %indvars.iv, 4
  %i.u = getelementptr i8, ptr %3, i64 %i.t
  %scevgep = getelementptr i8, ptr %i.u, i64 16
  %5 = trunc i64 %indvars.iv to i32
  %6 = sub i32 %4, %5
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 4
  %i.v = add nuw nsw i64 %8, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, i8 0, i64 %i.v, i1 false), !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader332
  %i.w = load ptr, ptr %3, align 16, !tbaa !58    ; 10 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  %or.cond = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond, label %archive_acl_add_entry_w_len.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !36  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 35
  br i1 %i.ab, label %is_nfs4_perms_w.exit.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  br i1 %.not138, label %bb.at, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = icmp eq i32 %i.aa, 100
  br i1 %i.af, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp eq i64 %i.ae, 4
  br i1 %i.ag, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = icmp ugt i64 %i.ae, 24
  br i1 %i.ah, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aj = tail call i32 @wmemcmp(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.4, i64 noundef 6) #25
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %.not322 = icmp eq i64 %i.ae, 28
  br i1 %.not322, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store ptr %i.al, ptr %3, align 16, !tbaa !58
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q
  %.1118 = phi i32 [ 0, %bb.q ], [ 1, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %bb.m ] ; 5 uses
  %.0111 = phi i32 [ 512, %bb.q ], [ 512, %bb.p ], [ %.1123, %bb.o ], [ %.1123, %bb.n ], [ %.1123, %bb.l ], [ 512, %bb.m ] ; 2 uses
  %i.am = zext nneg i32 %.1118 to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !58 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 4 uses
  %.not.i = icmp ult ptr %i.ap, %i.ar             ; 4 uses
  br i1 %.not.i, label %.preheader.i155, label %isint_w.exit.thread

.preheader.i155:                                  ; preds = %.thread, %bb.u
  %.022.i = phi i32 [ %.1.i, %bb.u ], [ 0, %.thread ] ; 3 uses
  %.01621.i = phi ptr [ %i.ba, %bb.u ], [ %i.ap, %.thread ] ; 2 uses
  %i.as = load i32, ptr %.01621.i, align 4, !tbaa !36 ; 3 uses
  %i.at = add i32 %i.as, -58
  %or.cond.i = icmp ult i32 %i.at, -10
  br i1 %or.cond.i, label %isint_w.exit.thread, label %bb.r

bb.r:                                             ; preds = %.preheader.i155
  %i.au = icmp sgt i32 %.022.i, 214748364
  br i1 %i.au, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = icmp eq i32 %.022.i, 214748364
  %i.aw = icmp samesign ugt i32 %i.as, 55
  %or.cond19.i = and i1 %i.av, %i.aw
  br i1 %or.cond19.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = mul nsw i32 %.022.i, 10
  %i.ay = add i32 %i.ax, -48
  %i.az = add i32 %i.ay, %i.as
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.1.i = phi i32 [ %i.az, %bb.t ], [ 2147483647, %bb.s ], [ 2147483647, %bb.r ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01621.i, i64 4 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.ar
  br i1 %i.bb, label %.preheader.i155, label %isint_w.exit, !llvm.loop !52

isint_w.exit:                                     ; preds = %bb.u
  %i.bc = icmp eq i32 %.1.i, -1
  br i1 %i.bc, label %isint_w.exit.thread, label %isint_w.exit165

isint_w.exit.thread:                              ; preds = %.preheader.i155, %.thread, %isint_w.exit
  %i.bd = add nuw nsw i32 %.1118, 3               ; 2 uses
  %.not141 = icmp samesign ugt i32 %i.bd, %i.q
  br i1 %.not141, label %isint_w.exit165, label %bb.v

bb.v:                                             ; preds = %isint_w.exit.thread
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 16, !tbaa !58 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !59 ; 2 uses
  %.not.i156 = icmp ult ptr %i.bg, %i.bi
  br i1 %.not.i156, label %.preheader.i159, label %isint_w.exit165

.preheader.i159:                                  ; preds = %bb.v, %bb.z
  %.022.i160 = phi i32 [ %.1.i164, %bb.z ], [ 0, %bb.v ] ; 3 uses
  %.01621.i161 = phi ptr [ %i.br, %bb.z ], [ %i.bg, %bb.v ] ; 2 uses
  %i.bj = load i32, ptr %.01621.i161, align 4, !tbaa !36 ; 3 uses
  %i.bk = add i32 %i.bj, -58
  %or.cond.i162 = icmp ult i32 %i.bk, -10
  br i1 %or.cond.i162, label %isint_w.exit165, label %bb.w

bb.w:                                             ; preds = %.preheader.i159
  %i.bl = icmp sgt i32 %.022.i160, 214748364
  br i1 %i.bl, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = icmp eq i32 %.022.i160, 214748364
  %i.bn = icmp samesign ugt i32 %i.bj, 55
  %or.cond19.i163 = and i1 %i.bm, %i.bn
  br i1 %or.cond19.i163, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = mul nsw i32 %.022.i160, 10
  %i.bp = add i32 %i.bo, -48
  %i.bq = add i32 %i.bp, %i.bj
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.1.i164 = phi i32 [ %i.bq, %bb.y ], [ 2147483647, %bb.x ], [ 2147483647, %bb.w ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01621.i161, i64 4 ; 2 uses
  %i.bs = icmp ult ptr %i.br, %i.bi
  br i1 %i.bs, label %.preheader.i159, label %isint_w.exit165, !llvm.loop !52

isint_w.exit165:                                  ; preds = %.preheader.i159, %bb.z, %bb.v, %isint_w.exit.thread, %isint_w.exit
  %.0222 = phi i32 [ -1, %isint_w.exit.thread ], [ %.1.i, %isint_w.exit ], [ -1, %bb.v ], [ %.1.i164, %bb.z ], [ -1, %.preheader.i159 ] ; 3 uses
  %i.bt = load ptr, ptr %i.an, align 16, !tbaa !58 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !59 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 4 uses
  %i.bz = icmp eq ptr %i.bv, %i.bt
  br i1 %i.bz, label %is_nfs4_perms_w.exit.backedge, label %bb.aa

bb.aa:                                            ; preds = %isint_w.exit165
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 4 uses
  %i.cb = load i32, ptr %i.bt, align 4, !tbaa !36
  switch i32 %i.cb, label %is_nfs4_perms_w.exit.backedge [
    i32 117, label %bb.ab
    i32 103, label %bb.ad
    i32 111, label %bb.af
    i32 109, label %bb.ah
  ]

bb.ab:                                            ; preds = %bb.aa
  switch i64 %i.by, label %is_nfs4_perms_w.exit.backedge [
    i64 4, label %bb.ao
    i64 16, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cc = tail call i32 @wmemcmp(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.5, i64 noundef 3) #25
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ao, label %is_nfs4_perms_w.exit.backedge

bb.ad:                                            ; preds = %bb.aa
  switch i64 %i.by, label %is_nfs4_perms_w.exit.backedge [
    i64 4, label %bb.ao
    i64 20, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ce = tail call i32 @wmemcmp(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.6, i64 noundef 4) #25
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ao, label %is_nfs4_perms_w.exit.backedge

bb.af:                                            ; preds = %bb.aa
  switch i64 %i.by, label %is_nfs4_perms_w.exit.backedge [
    i64 4, label %bb.aj
    i64 20, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.cg = tail call i32 @wmemcmp(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.7, i64 noundef 4) #25
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.aj, label %is_nfs4_perms_w.exit.backedge

bb.ah:                                            ; preds = %bb.aa
  switch i64 %i.by, label %is_nfs4_perms_w.exit.backedge [
    i64 4, label %bb.aj
    i64 16, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
end_hunk_0
begin_hunk_1_@archive_acl_from_text_w:bb.a
  %.01621.i193 = phi ptr [ %i.ft, %bb.cc ], [ %i.fi, %.thread298 ] ; 2 uses
  %i.fl = load i32, ptr %.01621.i193, align 4, !tbaa !36 ; 3 uses
  %i.fm = add i32 %i.fl, -58
  %or.cond.i194 = icmp ult i32 %i.fm, -10
  br i1 %or.cond.i194, label %isint_w.exit197.thread, label %bb.bz

bb.bz:                                            ; preds = %.preheader.i191
  %i.fn = icmp sgt i32 %.022.i192, 214748364
  br i1 %i.fn, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fo = icmp eq i32 %.022.i192, 214748364
  %i.fp = icmp samesign ugt i32 %i.fl, 55
  %or.cond19.i195 = and i1 %i.fo, %i.fp
  br i1 %or.cond19.i195, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fq = mul nsw i32 %.022.i192, 10
  %i.fr = add i32 %i.fq, -48
  %i.fs = add i32 %i.fr, %i.fl
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %.1.i196 = phi i32 [ %i.fs, %bb.cb ], [ 2147483647, %bb.ca ], [ 2147483647, %bb.bz ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.01621.i193, i64 4 ; 2 uses
  %i.fu = icmp ult ptr %i.ft, %i.fk
  br i1 %i.fu, label %.preheader.i191, label %isint_w.exit197.thread, !llvm.loop !52

isint_w.exit197.thread:                           ; preds = %bb.cc, %.preheader.i191, %.thread298
  %.2224.ph = phi i32 [ %.1223, %.thread298 ], [ %.1223, %.preheader.i191 ], [ %.1.i196, %bb.cc ]
  %i.fv = ptrtoint ptr %.sroa.8.1 to i64
  %i.fw = ptrtoint ptr %.sroa.0.1 to i64
  %i.fx = sub i64 %i.fv, %i.fw
  br label %bb.ch

isint_w.exit197:                                  ; preds = %bb.as, %ismode_w.exit
  %.2228 = phi i32 [ %.1227, %ismode_w.exit ], [ %.7, %bb.as ] ; 6 uses
  %.sroa.8.2 = phi i64 [ 0, %ismode_w.exit ], [ %.sroa.8.0265, %bb.as ]
  %.sroa.0.2 = phi ptr [ null, %ismode_w.exit ], [ %.sroa.0.0266, %bb.as ] ; 3 uses
  %.3 = phi i32 [ %.0.ph, %ismode_w.exit ], [ %.1268, %bb.as ] ; 3 uses
  %i.fy = ptrtoint ptr %.sroa.0.2 to i64
  %i.fz = sub i64 %.sroa.8.2, %i.fy               ; 2 uses
  %i.ga = icmp eq i32 %.0111, 256
  %i.gb = icmp ult i32 %.2228, 8
  %or.cond.i.i = and i1 %i.ga, %i.gb
  br i1 %or.cond.i.i, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %isint_w.exit197
  switch i32 %.3, label %bb.ch [
    i32 10002, label %bb.ce
    i32 10004, label %bb.cf
    i32 10006, label %bb.cg
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.gc = load i32, ptr %0, align 8, !tbaa !29
  %i.gd = and i32 %i.gc, -449
  %i.ge = shl nuw nsw i32 %.2228, 6
  %i.gf = or disjoint i32 %i.gd, %i.ge
  br label %acl_special.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.gg = load i32, ptr %0, align 8, !tbaa !29
  %i.gh = and i32 %i.gg, -57
  %i.gi = shl nuw nsw i32 %.2228, 3
  %i.gj = or disjoint i32 %i.gh, %i.gi
  br label %acl_special.exit.i

bb.cg:                                            ; preds = %bb.cd
  %i.gk = load i32, ptr %0, align 8, !tbaa !29
  %i.gl = and i32 %i.gk, -8
  %i.gm = or disjoint i32 %i.gl, %.2228
  br label %acl_special.exit.i

acl_special.exit.i:                               ; preds = %bb.cg, %bb.cf, %bb.ce
  %.sink.i.i = phi i32 [ %i.gm, %bb.cg ], [ %i.gj, %bb.cf ], [ %i.gf, %bb.ce ]
  store i32 %.sink.i.i, ptr %0, align 8, !tbaa !29
  br label %bb.cm

bb.ch:                                            ; preds = %isint_w.exit197.thread, %bb.cd, %isint_w.exit197
  %.in = phi i64 [ %i.fx, %isint_w.exit197.thread ], [ %i.fz, %bb.cd ], [ %i.fz, %isint_w.exit197 ] ; 2 uses
  %.3315 = phi i32 [ %.2277283, %isint_w.exit197.thread ], [ %.3, %bb.cd ], [ %.3, %isint_w.exit197 ]
  %.2113314 = phi i32 [ %.1112300, %isint_w.exit197.thread ], [ 256, %bb.cd ], [ %.0111, %isint_w.exit197 ] ; 3 uses
  %.sroa.0.2312 = phi ptr [ %.sroa.0.1, %isint_w.exit197.thread ], [ %.sroa.0.2, %bb.cd ], [ %.sroa.0.2, %isint_w.exit197 ] ; 3 uses
  %.2224311 = phi i32 [ %.2224.ph, %isint_w.exit197.thread ], [ %.0222, %bb.cd ], [ %.0222, %isint_w.exit197 ]
  %.2228310 = phi i32 [ %.14.ph, %isint_w.exit197.thread ], [ %.2228, %bb.cd ], [ %.2228, %isint_w.exit197 ]
  %i.gn = ashr exact i64 %.in, 2
  %i.go = tail call fastcc ptr @acl_new_entry(ptr noundef %0, i32 noundef %.2113314, i32 noundef %.2228310, i32 noundef %.3315, i32 noundef %.2224311) ; 3 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %archive_acl_add_entry_w_len.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not.i198 = icmp eq ptr %.sroa.0.2312, null
  br i1 %.not.i198, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gq = load i32, ptr %.sroa.0.2312, align 4, !tbaa !36
  %i.gr = icmp ne i32 %i.gq, 0
  %i.gs = icmp ne i64 %.in, 0
  %or.cond.i199 = and i1 %i.gs, %i.gr
  br i1 %or.cond.i199, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gu = tail call i32 @archive_mstring_copy_wcs_len(ptr noundef nonnull %i.gt, ptr noundef nonnull %.sroa.0.2312, i64 noundef %i.gn) #20 ; 0 uses
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj, %bb.ci
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  tail call void @archive_mstring_clean(ptr noundef nonnull %i.gv) #20
  br label %bb.cm

bb.cm:                                            ; preds = %acl_special.exit.i, %bb.cl, %bb.ck
  %.2113313.ph = phi i32 [ %.2113314, %bb.ck ], [ %.2113314, %bb.cl ], [ 256, %acl_special.exit.i ]
  %i.gw = or i32 %.2113313.ph, %.0110343404
  br label %is_nfs4_perms_w.exit.backedge

is_nfs4_perms_w.exit.backedge:                    ; preds = %.preheader330, %.lr.ph.i, %.lr.ph.i186, %bb.au, %bb.av, %bb.at, %ismode_w.exit.thread258, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.aa, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.cm, %bb.j, %isint_w.exit165, %.split, %.split278, %.split301, %.split302, %ismode_w.exit.thread, %.loopexit
  %.0114.be = phi i32 [ %.0114342407, %bb.j ], [ -20, %ismode_w.exit.thread258 ], [ -20, %.split302 ], [ -20, %bb.au ], [ -20, %.loopexit ], [ %.0114342407, %bb.cm ], [ -20, %isint_w.exit165 ], [ -20, %.lr.ph.i ], [ -20, %ismode_w.exit.thread ], [ -20, %bb.ac ], [ -20, %.split ], [ -20, %.split278 ], [ -20, %.split301 ], [ -20, %bb.ah ], [ -20, %bb.af ], [ -20, %bb.ad ], [ -20, %bb.ab ], [ -20, %bb.aa ], [ -20, %bb.ai ], [ -20, %bb.ag ], [ -20, %bb.ae ], [ -20, %.lr.ph.i186 ], [ -20, %bb.at ], [ -20, %bb.av ], [ -20, %.preheader330 ] ; 2 uses
  %.0110.be = phi i32 [ %.0110343404, %bb.j ], [ %.0110343404, %ismode_w.exit.thread258 ], [ %.0110343404, %.split302 ], [ %.0110343404, %bb.au ], [ %.0110343404, %.loopexit ], [ %i.gw, %bb.cm ], [ %.0110343404, %isint_w.exit165 ], [ %.0110343404, %.lr.ph.i ], [ %.0110343404, %ismode_w.exit.thread ], [ %.0110343404, %bb.ac ], [ %.0110343404, %.split ], [ %.0110343404, %.split278 ], [ %.0110343404, %.split301 ], [ %.0110343404, %bb.ah ], [ %.0110343404, %bb.af ], [ %.0110343404, %bb.ad ], [ %.0110343404, %bb.ab ], [ %.0110343404, %bb.aa ], [ %.0110343404, %bb.ai ], [ %.0110343404, %bb.ag ], [ %.0110343404, %bb.ae ], [ %.0110343404, %.lr.ph.i186 ], [ %.0110343404, %bb.at ], [ %.0110343404, %bb.av ], [ %.0110343404, %.preheader330 ] ; 2 uses
  %i.gx = load i32, ptr %.6239, align 4, !tbaa !36
  %.not137 = icmp eq i32 %i.gx, 0
  br i1 %.not137, label %.critedge, label %.preheader333.preheader

.critedge:                                        ; preds = %is_nfs4_perms_w.exit.backedge, %.lr.ph347, %bb.d
  %.0114.lcssa = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph347 ], [ %.0114.be, %is_nfs4_perms_w.exit.backedge ]
  %.0110.lcssa = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph347 ], [ %.0110.be, %is_nfs4_perms_w.exit.backedge ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.012.i.i = load ptr, ptr %i.gy, align 8, !tbaa !30 ; 3 uses
  %.not13.i.i = icmp eq ptr %.012.i.i, null
  br i1 %.not13.i.i, label %archive_acl_reset.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %.critedge ] ; 2 uses
  %.0914.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.critedge ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !31
  %i.hb = and i32 %i.ha, %.0110.lcssa
  %.not11.i.i = icmp ne i32 %i.hb, 0
  %i.hc = zext i1 %.not11.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %.0914.i.i, %i.hc ; 2 uses
  %.0.i.i = load ptr, ptr %.015.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %archive_acl_reset.exit, label %.lr.ph.i.i, !llvm.loop !1

archive_acl_reset.exit:                           ; preds = %.lr.ph.i.i, %.critedge
  %.09.lcssa.i.i = phi i32 [ 0, %.critedge ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.hd = icmp eq i32 %.09.lcssa.i.i, 0
  %i.he = and i32 %.0110.lcssa, 256
  %.not10.i.i = icmp eq i32 %i.he, 0              ; 2 uses
  %or.cond.i.i200 = or i1 %.not10.i.i, %i.hd
  %i.hf = add nuw nsw i32 %.09.lcssa.i.i, 3
  %.2.i.i = select i1 %or.cond.i.i200, i32 %.09.lcssa.i.i, i32 %i.hf
  %..i = select i1 %.not10.i.i, i32 0, i32 3
  %i.hg = icmp sgt i32 %.2.i.i, %..i
  %spec.select.i = select i1 %i.hg, i32 10002, i32 0
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %spec.select.i, ptr %i.hh, align 8, !tbaa !28
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.012.i.i, ptr %i.hi, align 8, !tbaa !26
  br label %archive_acl_add_entry_w_len.exit

archive_acl_add_entry_w_len.exit:                 ; preds = %bb.ch, %._crit_edge, %bb.a, %archive_acl_reset.exit
  %.0124 = phi i32 [ %.0114.lcssa, %archive_acl_reset.exit ], [ -30, %bb.a ], [ -25, %bb.ch ], [ -30, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.0124
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local range(i32 -30, 1) i32 @archive_acl_from_text_l(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.b = tail call i32 @archive_acl_from_text_nl(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.a, i32 noundef %2, ptr noundef %3)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -30, 1) i32 @archive_acl_from_text_nl(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca [6 x %struct.anon.0], align 16      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %.2121.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  switch i32 %3, label %archive_acl_add_entry_len_l.exit [
    i32 768, label %bb.b
    i32 256, label %bb.d
    i32 512, label %bb.d
    i32 15360, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %.1126 = phi i32 [ %3, %bb.c ], [ 256, %bb.b ], [ %3, %bb.a ], [ %3, %bb.a ] ; 4 uses
  %.0123 = phi i32 [ 6, %bb.c ], [ 5, %bb.b ], [ 5, %bb.a ], [ 5, %bb.a ] ; 3 uses
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond403 = and i1 %i.a, %i.b
  br i1 %or.cond403, label %.lr.ph411, label %.critedge

.lr.ph411:                                        ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not138 = icmp eq i32 %.1126, 15360
  %.sroa.8.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = zext nneg i32 %.0123 to i64
  %6 = add nsw i32 %.0123, -2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph411, %is_nfs4_perms.exit.backedge
  %.0112407 = phi i32 [ 0, %.lr.ph411 ], [ %.0112.be, %is_nfs4_perms.exit.backedge ] ; 26 uses
  %.0116406 = phi i32 [ 0, %.lr.ph411 ], [ %.0116.be, %is_nfs4_perms.exit.backedge ] ; 5 uses
  %.0258405 = phi i64 [ %2, %.lr.ph411 ], [ %.12270, %is_nfs4_perms.exit.backedge ]
  %.0271404 = phi ptr [ %1, %.lr.ph411 ], [ %.12283, %is_nfs4_perms.exit.backedge ] ; 2 uses
  %i.e = load i8, ptr %.0271404, align 1, !tbaa !35
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.critedge, label %.preheader386

.preheader386:                                    ; preds = %bb.e, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.e ] ; 6 uses
  %.1272 = phi ptr [ %.12283, %bb.j ], [ %.0271404, %bb.e ] ; 5 uses
  %.1259 = phi i64 [ %.12270, %bb.j ], [ %.0258405, %bb.e ] ; 3 uses
  %.not69.i = icmp eq i64 %.1259, 0
  br i1 %.not69.i, label %.critedge6.i.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader386
  %scevgep = getelementptr i8, ptr %.1272, i64 %.1259 ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.critedge2.i
  %.2273 = phi ptr [ %i.g, %.critedge2.i ], [ %.1272, %.lr.ph.i.preheader ] ; 11 uses
  %.2260 = phi i64 [ %i.h, %.critedge2.i ], [ %.1259, %.lr.ph.i.preheader ] ; 2 uses
  %i.f = load i8, ptr %.2273, align 1, !tbaa !35  ; 2 uses
  switch i8 %i.f, label %.lr.ph72.i [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 10, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.2273, i64 1
  %i.h = add i64 %.2260, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge6.i.thread, label %.lr.ph.i, !llvm.loop !60

.lr.ph72.ithread-pre-split:                       ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %.10281, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.i, align 1, !tbaa !35
  br label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.lr.ph.i, %.lr.ph72.ithread-pre-split
  %i.j = phi i8 [ %.pr, %.lr.ph72.ithread-pre-split ], [ %i.f, %.lr.ph.i ]
  %.10281 = phi ptr [ %i.i, %.lr.ph72.ithread-pre-split ], [ %.2273, %.lr.ph.i ] ; 9 uses
  %i.k = phi i64 [ %i.l, %.lr.ph72.ithread-pre-split ], [ %.2260, %.lr.ph.i ] ; 2 uses
  switch i8 %i.j, label %bb.f [
    i8 32, label %.lr.ph80.i.preheader
    i8 9, label %.lr.ph80.i.preheader
    i8 10, label %.lr.ph80.i.preheader
    i8 44, label %.lr.ph80.i.preheader
    i8 58, label %.lr.ph80.i.preheader
    i8 35, label %.lr.ph80.i.preheader
  ]

.lr.ph80.i.preheader:                             ; preds = %.lr.ph72.i, %.lr.ph72.i, %.lr.ph72.i, %.lr.ph72.i, %.lr.ph72.i, %.lr.ph72.i
  br label %.lr.ph80.i

bb.f:                                             ; preds = %.lr.ph72.i
  %i.l = add i64 %i.k, -1                         ; 2 uses
  %.not50.i = icmp eq i64 %i.l, 0
  br i1 %.not50.i, label %.critedge6.i.thread, label %.lr.ph72.ithread-pre-split, !llvm.loop !61

.lr.ph80.i:                                       ; preds = %.lr.ph80.i.preheader, %bb.g
  %.11282 = phi ptr [ %i.n, %bb.g ], [ %.10281, %.lr.ph80.i.preheader ] ; 7 uses
  %.11269 = phi i64 [ %i.o, %bb.g ], [ %i.k, %.lr.ph80.i.preheader ] ; 6 uses
  %i.m = load i8, ptr %.11282, align 1, !tbaa !35 ; 4 uses
  switch i8 %i.m, label %bb.g [
    i8 35, label %.lr.ph86.i.preheader
    i8 10, label %next_field.exit
    i8 44, label %next_field.exit
    i8 58, label %next_field.exit
  ]

bb.g:                                             ; preds = %.lr.ph80.i
  %i.n = getelementptr inbounds nuw i8, ptr %.11282, i64 1
  %i.o = add i64 %.11269, -1                      ; 2 uses
  %.not57.i = icmp eq i64 %i.o, 0
  br i1 %.not57.i, label %.critedge6.i.thread, label %.lr.ph80.i, !llvm.loop !62

.critedge6.i.thread:                              ; preds = %.critedge2.i, %bb.f, %bb.g, %.preheader386
  %.5276 = phi ptr [ %scevgep, %bb.g ], [ %scevgep, %bb.f ], [ %.1272, %.preheader386 ], [ %scevgep, %.critedge2.i ] ; 2 uses
  %.1244 = phi ptr [ %.2273, %bb.g ], [ %.2273, %bb.f ], [ %.1272, %.preheader386 ], [ %scevgep, %.critedge2.i ]
  %.0241 = phi ptr [ %.10281, %bb.g ], [ %scevgep, %bb.f ], [ %.1272, %.preheader386 ], [ %scevgep, %.critedge2.i ]
  %.pr109.i = load i8, ptr %.5276, align 1, !tbaa !35
  br label %next_field.exit

.lr.ph86.i.preheader:                             ; preds = %.lr.ph80.i
  %scevgep435 = getelementptr i8, ptr %.11282, i64 %.11269 ; 2 uses
  br label %.lr.ph86.i

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %bb.h
  %.8279 = phi ptr [ %i.q, %bb.h ], [ %.11282, %.lr.ph86.i.preheader ] ; 4 uses
  %.8266 = phi i64 [ %i.r, %bb.h ], [ %.11269, %.lr.ph86.i.preheader ] ; 3 uses
  %i.p = load i8, ptr %.8279, align 1, !tbaa !35  ; 3 uses
  switch i8 %i.p, label %bb.h [
    i8 44, label %next_field.exit
    i8 10, label %next_field.exit
  ]

bb.h:                                             ; preds = %.lr.ph86.i
  %i.q = getelementptr inbounds nuw i8, ptr %.8279, i64 1
  %i.r = add i64 %.8266, -1                       ; 2 uses
  %.not62.i = icmp eq i64 %i.r, 0
  br i1 %.not62.i, label %..critedge8.i.loopexit_crit_edge, label %.lr.ph86.i, !llvm.loop !63

..critedge8.i.loopexit_crit_edge:                 ; preds = %bb.h
  %.pre.pre = load i8, ptr %scevgep435, align 1, !tbaa !35
  br label %next_field.exit, !llvm.loop !63

next_field.exit:                                  ; preds = %.lr.ph80.i, %.lr.ph80.i, %.lr.ph80.i, %.lr.ph86.i, %.lr.ph86.i, %.critedge6.i.thread, %..critedge8.i.loopexit_crit_edge
  %.1242487 = phi ptr [ %.10281, %..critedge8.i.loopexit_crit_edge ], [ %.10281, %.lr.ph86.i ], [ %.0241, %.critedge6.i.thread ], [ %.10281, %.lr.ph86.i ], [ %.10281, %.lr.ph80.i ], [ %.10281, %.lr.ph80.i ], [ %.10281, %.lr.ph80.i ]
  %.2245485 = phi ptr [ %.2273, %..critedge8.i.loopexit_crit_edge ], [ %.2273, %.lr.ph86.i ], [ %.1244, %.critedge6.i.thread ], [ %.2273, %.lr.ph86.i ], [ %.2273, %.lr.ph80.i ], [ %.2273, %.lr.ph80.i ], [ %.2273, %.lr.ph80.i ]
  %.7278 = phi ptr [ %scevgep435, %..critedge8.i.loopexit_crit_edge ], [ %.8279, %.lr.ph86.i ], [ %.5276, %.critedge6.i.thread ], [ %.8279, %.lr.ph86.i ], [ %.11282, %.lr.ph80.i ], [ %.11282, %.lr.ph80.i ], [ %.11282, %.lr.ph80.i ]
  %.7265 = phi i64 [ 0, %..critedge8.i.loopexit_crit_edge ], [ %.8266, %.lr.ph86.i ], [ 0, %.critedge6.i.thread ], [ %.8266, %.lr.ph86.i ], [ %.11269, %.lr.ph80.i ], [ %.11269, %.lr.ph80.i ], [ %.11269, %.lr.ph80.i ] ; 3 uses
  %.0246 = phi i8 [ %.pre.pre, %..critedge8.i.loopexit_crit_edge ], [ %i.p, %.lr.ph86.i ], [ %.pr109.i, %.critedge6.i.thread ], [ %i.p, %.lr.ph86.i ], [ %i.m, %.lr.ph80.i ], [ %i.m, %.lr.ph80.i ], [ %i.m, %.lr.ph80.i ]
  %.not65.i = icmp ne i64 %.7265, 0
  %.12283.idx = zext i1 %.not65.i to i64
  %.12283 = getelementptr inbounds nuw i8, ptr %.7278, i64 %.12283.idx ; 2 uses
  %.12270 = tail call i64 @llvm.usub.sat.i64(i64 %.7265, i64 1) ; 2 uses
  %i.s = icmp samesign ult i64 %indvars.iv, %i.d
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %next_field.exit
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  store ptr %.2245485, ptr %i.t, align 16, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.1242487, ptr %i.u, align 8, !tbaa !72
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %next_field.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = icmp eq i8 %.0246, 58
  br i1 %i.v, label %.preheader386, label %.preheader385, !llvm.loop !64

.preheader385:                                    ; preds = %bb.j
  %i.w = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.x = trunc nuw i64 %indvars.iv.next to i32
  %i.y = icmp samesign ugt i32 %.0123, %i.x
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader385
  %i.z = shl i64 %indvars.iv, 4
  %i.aa = getelementptr i8, ptr %5, i64 %i.z
  %scevgep437 = getelementptr i8, ptr %i.aa, i64 16
  %7 = trunc i64 %indvars.iv to i32
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 4
  %i.ab = add nuw nsw i64 %10, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep437, i8 0, i64 %i.ab, i1 false), !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader385
  %i.ac = load ptr, ptr %5, align 16, !tbaa !71   ; 14 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  %or.cond5 = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond5, label %archive_acl_add_entry_len_l.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !35  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 35
  br i1 %i.ah, label %is_nfs4_perms.exit.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  br i1 %.not138, label %bb.au, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp eq i8 %i.ag, 100
  br i1 %i.al, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp ugt i64 %i.ak, 6
  br i1 %i.an, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = xor i32 %i.ap, 1969317477
  %i.ar = getelementptr i8, ptr %i.ao, i64 4
  %i.as = load i16, ptr %i.ar, align 1
  %i.at = zext i16 %i.as to i32
  %i.au = xor i32 %i.at, 29804
  %i.av = or i32 %i.aq, %i.au
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.not373 = icmp eq i64 %i.ak, 7
  br i1 %.not373, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 7
  store ptr %i.az, ptr %5, align 16, !tbaa !71
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r
  %.1120 = phi i32 [ 0, %bb.r ], [ 1, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.m ], [ 1, %bb.n ] ; 5 uses
  %.0113 = phi i32 [ 512, %bb.r ], [ 512, %bb.q ], [ %.1126, %bb.p ], [ %.1126, %bb.o ], [ %.1126, %bb.m ], [ 512, %bb.n ] ; 2 uses
  %i.ba = zext nneg i32 %.1120 to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ba ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !71 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !72 ; 4 uses
  %.not.i167 = icmp ult ptr %i.bd, %i.bf          ; 4 uses
  br i1 %.not.i167, label %.preheader.i, label %isint.exit.thread

.preheader.i:                                     ; preds = %.thread, %bb.v
  %.022.i = phi i32 [ %.1.i, %bb.v ], [ 0, %.thread ] ; 3 uses
  %.01621.i = phi ptr [ %i.bp, %bb.v ], [ %i.bd, %.thread ] ; 2 uses
  %i.bg = load i8, ptr %.01621.i, align 1, !tbaa !35 ; 3 uses
  %i.bh = add i8 %i.bg, -58
  %or.cond.i = icmp ult i8 %i.bh, -10
  br i1 %or.cond.i, label %isint.exit.thread, label %bb.s

bb.s:                                             ; preds = %.preheader.i
  %i.bi = icmp sgt i32 %.022.i, 214748364
  br i1 %i.bi, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = icmp eq i32 %.022.i, 214748364
  %i.bk = icmp samesign ugt i8 %i.bg, 55
  %or.cond19.i = and i1 %i.bj, %i.bk
  br i1 %or.cond19.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = mul nsw i32 %.022.i, 10
  %i.bm = zext nneg i8 %i.bg to i32
  %i.bn = add i32 %i.bl, -48
  %i.bo = add i32 %i.bn, %i.bm
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.1.i = phi i32 [ %i.bo, %bb.u ], [ 2147483647, %bb.t ], [ 2147483647, %bb.s ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01621.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bp, %i.bf
  br i1 %exitcond.not.i, label %isint.exit, label %.preheader.i, !llvm.loop !65

isint.exit:                                       ; preds = %bb.v
  %i.bq = icmp eq i32 %.1.i, -1
  br i1 %i.bq, label %isint.exit.thread, label %isint.exit177

isint.exit.thread:                                ; preds = %.preheader.i, %.thread, %isint.exit
  %i.br = add nuw nsw i32 %.1120, 3               ; 2 uses
  %.not150 = icmp samesign ugt i32 %i.br, %i.w
  br i1 %.not150, label %isint.exit177, label %bb.w

bb.w:                                             ; preds = %isint.exit.thread
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !71 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !72 ; 2 uses
  %.not.i168 = icmp ult ptr %i.bu, %i.bw
  br i1 %.not.i168, label %.preheader.i170, label %isint.exit177

.preheader.i170:                                  ; preds = %bb.w, %bb.aa
  %.022.i171 = phi i32 [ %.1.i175, %bb.aa ], [ 0, %bb.w ] ; 3 uses
  %.01621.i172 = phi ptr [ %i.cg, %bb.aa ], [ %i.bu, %bb.w ] ; 2 uses
  %i.bx = load i8, ptr %.01621.i172, align 1, !tbaa !35 ; 3 uses
  %i.by = add i8 %i.bx, -58
  %or.cond.i173 = icmp ult i8 %i.by, -10
  br i1 %or.cond.i173, label %isint.exit177, label %bb.x

bb.x:                                             ; preds = %.preheader.i170
  %i.bz = icmp sgt i32 %.022.i171, 214748364
  br i1 %i.bz, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = icmp eq i32 %.022.i171, 214748364
  %i.cb = icmp samesign ugt i8 %i.bx, 55
  %or.cond19.i174 = and i1 %i.ca, %i.cb
  br i1 %or.cond19.i174, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = mul nsw i32 %.022.i171, 10
  %i.cd = zext nneg i8 %i.bx to i32
  %i.ce = add i32 %i.cc, -48
  %i.cf = add i32 %i.ce, %i.cd
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.1.i175 = phi i32 [ %i.cf, %bb.z ], [ 2147483647, %bb.y ], [ 2147483647, %bb.x ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01621.i172, i64 1 ; 2 uses
  %exitcond.not.i176 = icmp eq ptr %i.cg, %i.bw
  br i1 %exitcond.not.i176, label %isint.exit177, label %.preheader.i170, !llvm.loop !65

isint.exit177:                                    ; preds = %.preheader.i170, %bb.aa, %bb.w, %isint.exit.thread, %isint.exit
  %.0247 = phi i32 [ -1, %isint.exit.thread ], [ %.1.i, %isint.exit ], [ -1, %bb.w ], [ %.1.i175, %bb.aa ], [ -1, %.preheader.i170 ] ; 3 uses
  %i.ch = load ptr, ptr %i.bb, align 16, !tbaa !71 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !72 ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = sub i64 %i.cl, %i.cm                    ; 4 uses
  %i.co = icmp eq ptr %i.ck, %i.ch
  br i1 %i.co, label %is_nfs4_perms.exit.backedge, label %bb.ab

bb.ab:                                            ; preds = %isint.exit177
  %i.cp = load i8, ptr %i.ch, align 1, !tbaa !35
  switch i8 %i.cp, label %is_nfs4_perms.exit.backedge [
    i8 117, label %bb.ac
    i8 103, label %bb.ae
    i8 111, label %bb.ag
    i8 109, label %bb.ai
  ]

bb.ac:                                            ; preds = %bb.ab
  switch i64 %i.cn, label %is_nfs4_perms.exit.backedge [
    i64 1, label %bb.ap
    i64 4, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cq = load i16, ptr %i.ci, align 1
  %i.cr = xor i16 %i.cq, 25971
  %i.cs = getelementptr i8, ptr %i.ci, i64 2
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i16
  %i.cv = xor i16 %i.cu, 114
  %i.cw = or i16 %i.cr, %i.cv
  %i.cx = icmp ne i16 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.ap, label %is_nfs4_perms.exit.backedge

bb.ae:                                            ; preds = %bb.ab
  switch i64 %i.cn, label %is_nfs4_perms.exit.backedge [
    i64 1, label %bb.ap
    i64 5, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.da = load i32, ptr %i.ci, align 1
  %i.db = icmp ne i32 %i.da, 1886744434
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
end_hunk_1
