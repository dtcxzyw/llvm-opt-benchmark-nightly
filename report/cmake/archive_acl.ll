Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_acl?download=true
inline.NumInlined: 37
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@archive_acl_to_text_l:bb.a

bb.bg:                                            ; preds = %.split103.3.i
  %i.ig = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store ptr %i.ih, ptr %i.c, align 8, !tbaa !39
  store i8 110, ptr %i.ig, align 1, !tbaa !36
  br label %.split103.4.i

.split103.4.i:                                    ; preds = %bb.bg, %.split103.3.i
  %i.ii = and i32 %i.cr, 536870912
  %.not88.4.i = icmp eq i32 %i.ii, 0
  br i1 %.not88.4.i, label %.split103.5.i, label %bb.bh

bb.bh:                                            ; preds = %.split103.4.i
  %i.ij = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store ptr %i.ik, ptr %i.c, align 8, !tbaa !39
  store i8 83, ptr %i.ij, align 1, !tbaa !36
  br label %.split103.5.i

.split103.5.i:                                    ; preds = %bb.bh, %.split103.4.i
  %i.il = and i32 %i.cr, 1073741824
  %.not88.5.i = icmp eq i32 %i.il, 0
  br i1 %.not88.5.i, label %.split103.6.i, label %bb.bi

bb.bi:                                            ; preds = %.split103.5.i
  %i.im = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  store ptr %i.in, ptr %i.c, align 8, !tbaa !39
  store i8 70, ptr %i.im, align 1, !tbaa !36
  br label %.split103.6.i

.split103.6.i:                                    ; preds = %bb.bi, %.split103.5.i
  %i.io = and i32 %i.cr, 16777216
  %.not88.6.i = icmp eq i32 %i.io, 0
  br i1 %.not88.6.i, label %.split105.us.i, label %.split105.us.sink.split.i

.split105.us.sink.split.i:                        ; preds = %.split103.6.i, %.preheader.split.us.preheader.i
  %.sink196.i = phi i8 [ %spec.select200.i, %.preheader.split.us.preheader.i ], [ 73, %.split103.6.i ]
  %i.ip = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  store ptr %i.iq, ptr %i.c, align 8, !tbaa !39
  store i8 %.sink196.i, ptr %i.ip, align 1, !tbaa !36
  br label %.split105.us.i

.split105.us.i:                                   ; preds = %.split105.us.sink.split.i, %.split103.6.i
  %i.ir = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  store ptr %i.is, ptr %i.c, align 8, !tbaa !39
  store i8 58, ptr %i.ir, align 1, !tbaa !36
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
  %i.iw = load ptr, ptr %i.c, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.iw, ptr noundef nonnull align 1 dereferenceable(6) @.str.29, i64 6, i1 false) #20
  br label %bb.bo

bb.bk:                                            ; preds = %.split.i
  %i.ix = load ptr, ptr %i.c, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ix, ptr noundef nonnull align 1 dereferenceable(5) @.str.28, i64 5, i1 false) #20
  br label %bb.bo

bb.bl:                                            ; preds = %.split.i
  %i.iy = load ptr, ptr %i.c, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.iy, ptr noundef nonnull align 1 dereferenceable(6) @.str.30, i64 6, i1 false) #20
  br label %bb.bo

bb.bm:                                            ; preds = %.split.i
  %i.iz = load ptr, ptr %i.c, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.iz, ptr noundef nonnull align 1 dereferenceable(6) @.str.31, i64 6, i1 false) #20
  br label %bb.bo

bb.bn:                                            ; preds = %.split.i, %.split105.us.i
  %i.ja = load ptr, ptr %i.c, align 8, !tbaa !39
  store i8 0, ptr %i.ja, align 1, !tbaa !36
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %i.jb = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.jc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jb) #25
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jc
  store ptr %i.jd, ptr %i.c, align 8, !tbaa !39
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ao
  %.4118.i = phi i32 [ %.4119.i, %bb.bo ], [ %.4.i, %bb.ao ] ; 2 uses
  %.not93.i = icmp eq i32 %.4118.i, -1
  br i1 %.not93.i, label %append_entry.exit86, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.je = load ptr, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  store ptr %i.jf, ptr %i.c, align 8, !tbaa !39
  store i8 58, ptr %i.je, align 1, !tbaa !36
  call fastcc void @append_id(ptr noundef nonnull %i.c, i32 noundef %.4118.i)
  br label %append_entry.exit86

append_entry.exit86:                              ; preds = %bb.bp, %bb.bq
  %i.jg = add nsw i32 %.198, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.n, %bb.n, %bb.n, %bb.l, %append_entry.exit86
  %.2 = phi i32 [ %.198, %bb.l ], [ %.198, %bb.n ], [ %.198, %bb.n ], [ %.198, %bb.n ], [ %i.jg, %append_entry.exit86 ]
  %.053 = load ptr, ptr %.05399, align 8, !tbaa !29 ; 2 uses
  %.not67 = icmp eq ptr %.053, null
  br i1 %.not67, label %._crit_edge.loopexit, label %bb.l, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %bb.br
  %.pre101 = load ptr, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %i.jh = phi ptr [ %.pre101, %._crit_edge.loopexit ], [ %i.bo, %bb.k ] ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store ptr %i.ji, ptr %i.c, align 8, !tbaa !39
  store i8 0, ptr %i.jh, align 1, !tbaa !36
  %i.jj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #25 ; 3 uses
  store i64 %i.jj, ptr %i.a, align 8, !tbaa !43
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
  store i64 %i.jj, ptr %1, align 8, !tbaa !43
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
  %.0121 = phi i32 [ 6, %bb.c ], [ 5, %bb.b ], [ 5, %bb.a ], [ 5, %bb.a ] ; 2 uses
  %.not340 = icmp eq ptr %1, null
  br i1 %.not340, label %.critedge, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.d
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not138 = icmp eq i32 %.1123, 15360
  %.sroa.8.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = zext nneg i32 %.0121 to i64              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 4294967294
  %i.d = load i32, ptr %1, align 4, !tbaa !37
  %.not137403 = icmp eq i32 %i.d, 0
  br i1 %.not137403, label %.critedge, label %.preheader333.preheader

.preheader333.preheader:                          ; preds = %.lr.ph347, %is_nfs4_perms_w.exit.backedge
  %.0233341408 = phi ptr [ %.6239, %is_nfs4_perms_w.exit.backedge ], [ %1, %.lr.ph347 ]
  %.0114342407 = phi i32 [ %.0114.be, %is_nfs4_perms_w.exit.backedge ], [ 0, %.lr.ph347 ] ; 2 uses
  %.0110343404 = phi i32 [ %.0110.be, %is_nfs4_perms_w.exit.backedge ], [ 0, %.lr.ph347 ] ; 25 uses
  br label %.preheader333

.preheader333:                                    ; preds = %.preheader333.preheader, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader333.preheader ] ; 5 uses
  %.1234 = phi ptr [ %.6239, %bb.i ], [ %.0233341408, %.preheader333.preheader ]
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i, %.preheader333
  %.2235 = phi ptr [ %.1234, %.preheader333 ], [ %i.f, %.critedge.i ] ; 6 uses
  %i.e = load i32, ptr %.2235, align 4, !tbaa !37 ; 2 uses
  switch i32 %i.e, label %.preheader [
    i32 32, label %.critedge.i
    i32 9, label %.critedge.i
    i32 10, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.e, %bb.e, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %.2235, i64 4
  br label %bb.e, !llvm.loop !47

.preheader:                                       ; preds = %bb.e, %bb.f
  %.pr = phi i32 [ %.pre, %bb.f ], [ %i.e, %bb.e ] ; 3 uses
  %.3236 = phi ptr [ %i.g, %bb.f ], [ %.2235, %bb.e ] ; 5 uses
  switch i32 %.pr, label %bb.f [
    i32 0, label %.critedge2.i
    i32 44, label %.critedge2.i
    i32 58, label %.critedge2.i
    i32 10, label %.critedge2.i
    i32 35, label %.critedge2.i
  ]

bb.f:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.3236, i64 4 ; 2 uses
  %.pre = load i32, ptr %i.g, align 4, !tbaa !37
  br label %.preheader, !llvm.loop !48

.critedge2.i:                                     ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.h = icmp eq ptr %.3236, %.2235
  br i1 %i.h, label %.loopexit.i, label %.preheader53.i

.preheader53.i:                                   ; preds = %.critedge2.i, %.preheader53.i.backedge
  %.pn.i = phi ptr [ %storemerge.i, %.preheader53.i.backedge ], [ %.3236, %.critedge2.i ] ; 2 uses
  %storemerge.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 2 uses
  %i.i = load i32, ptr %storemerge.i, align 4, !tbaa !37
  switch i32 %i.i, label %.loopexit.i [
    i32 32, label %.preheader53.i.backedge
    i32 9, label %.preheader53.i.backedge
    i32 10, label %.preheader53.i.backedge
  ]

.preheader53.i.backedge:                          ; preds = %.preheader53.i, %.preheader53.i, %.preheader53.i
  br label %.preheader53.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %.preheader53.i, %.critedge2.i
  %storemerge48.i = phi ptr [ %.2235, %.critedge2.i ], [ %.pn.i, %.preheader53.i ]
  %i.j = icmp eq i32 %.pr, 35
  br i1 %i.j, label %.preheader.i, label %.critedge6.i

.preheader.i:                                     ; preds = %.loopexit.i, %bb.g
  %i.k = phi i32 [ %.pre362, %bb.g ], [ 35, %.loopexit.i ] ; 4 uses
  %.5238 = phi ptr [ %i.l, %bb.g ], [ %.3236, %.loopexit.i ] ; 4 uses
  switch i32 %i.k, label %bb.g [
    i32 0, label %.critedge6.i
    i32 44, label %.critedge6.i
    i32 10, label %.critedge6.i
  ]

bb.g:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %.5238, i64 4 ; 2 uses
  %.pre362 = load i32, ptr %i.l, align 4, !tbaa !37
  br label %.preheader.i, !llvm.loop !50

.critedge6.i:                                     ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.loopexit.i
  %i.m = phi i32 [ %.pr, %.loopexit.i ], [ %i.k, %.preheader.i ], [ %i.k, %.preheader.i ], [ %i.k, %.preheader.i ] ; 2 uses
  %.4237 = phi ptr [ %.3236, %.loopexit.i ], [ %.5238, %.preheader.i ], [ %.5238, %.preheader.i ], [ %.5238, %.preheader.i ]
  %.not52.i = icmp eq i32 %i.m, 0
  %.6239.idx = select i1 %.not52.i, i64 0, i64 4
  %.6239 = getelementptr inbounds nuw i8, ptr %.4237, i64 %.6239.idx ; 3 uses
  %i.n = icmp samesign ult i64 %indvars.iv, %i.b
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge6.i
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store ptr %.2235, ptr %i.o, align 16, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %storemerge48.i, ptr %i.p, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge6.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.q = icmp eq i32 %i.m, 58
  br i1 %i.q, label %.preheader333, label %.preheader332, !llvm.loop !54

.preheader332:                                    ; preds = %bb.i
  %i.r = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.s = trunc nuw i64 %indvars.iv.next to i32
  %i.t = icmp samesign ugt i32 %.0121, %i.s
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader332
  %i.u = shl i64 %indvars.iv.next, 4
  %scevgep = getelementptr i8, ptr %3, i64 %i.u
  %i.v = sub nsw i64 %i.c, %indvars.iv
  %i.w = shl i64 %i.v, 4
  %i.x = and i64 %i.w, 68719476720
  %i.y = add nuw nsw i64 %i.x, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep, i8 0, i64 %i.y, i1 false), !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader332
  %i.z = load ptr, ptr %3, align 16, !tbaa !51    ; 10 uses
  %i.aa = icmp eq ptr %i.z, null
  %i.ab = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %archive_acl_add_entry_w_len.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !37  ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 35
  br i1 %i.ae, label %is_nfs4_perms_w.exit.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.z to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  br i1 %.not138, label %bb.at, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp eq i32 %i.ad, 100
  br i1 %i.ai, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = icmp ugt i64 %i.ah, 24
  br i1 %i.ak, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.am = tail call i32 @wmemcmp(ptr noundef nonnull %i.al, ptr noundef nonnull @.str.4, i64 noundef 6) #25
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %.not322 = icmp eq i64 %i.ah, 28
  br i1 %.not322, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  store ptr %i.ao, ptr %3, align 16, !tbaa !51
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q
  %.1118 = phi i32 [ 0, %bb.q ], [ 1, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.l ], [ 1, %bb.m ] ; 5 uses
  %.0111 = phi i32 [ 512, %bb.q ], [ 512, %bb.p ], [ %.1123, %bb.o ], [ %.1123, %bb.n ], [ %.1123, %bb.l ], [ 512, %bb.m ] ; 2 uses
  %i.ap = zext nneg i32 %.1118 to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ap ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !51 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 4 uses
  %.not.i = icmp ult ptr %i.as, %i.au             ; 4 uses
  br i1 %.not.i, label %.preheader.i155, label %isint_w.exit.thread

.preheader.i155:                                  ; preds = %.thread, %bb.u
  %.022.i = phi i32 [ %.1.i, %bb.u ], [ 0, %.thread ] ; 3 uses
  %.01621.i = phi ptr [ %i.bd, %bb.u ], [ %i.as, %.thread ] ; 2 uses
  %i.av = load i32, ptr %.01621.i, align 4, !tbaa !37 ; 3 uses
  %i.aw = add i32 %i.av, -58
  %or.cond.i = icmp ult i32 %i.aw, -10
  br i1 %or.cond.i, label %isint_w.exit.thread, label %bb.r

bb.r:                                             ; preds = %.preheader.i155
  %i.ax = icmp sgt i32 %.022.i, 214748364
  br i1 %i.ax, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ay = icmp eq i32 %.022.i, 214748364
  %i.az = icmp samesign ugt i32 %i.av, 55
  %or.cond19.i = and i1 %i.ay, %i.az
  br i1 %or.cond19.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = mul nsw i32 %.022.i, 10
  %i.bb = add i32 %i.ba, -48
  %i.bc = add i32 %i.bb, %i.av
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.1.i = phi i32 [ %i.bc, %bb.t ], [ 2147483647, %bb.s ], [ 2147483647, %bb.r ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01621.i, i64 4 ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.au
  br i1 %i.be, label %.preheader.i155, label %isint_w.exit, !llvm.loop !55

isint_w.exit:                                     ; preds = %bb.u
  %i.bf = icmp eq i32 %.1.i, -1
  br i1 %i.bf, label %isint_w.exit.thread, label %isint_w.exit165

isint_w.exit.thread:                              ; preds = %.preheader.i155, %.thread, %isint_w.exit
  %i.bg = add nuw nsw i32 %.1118, 3               ; 2 uses
  %.not141 = icmp samesign ugt i32 %i.bg, %i.r
  br i1 %.not141, label %isint_w.exit165, label %bb.v

bb.v:                                             ; preds = %isint_w.exit.thread
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !51 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53 ; 2 uses
  %.not.i156 = icmp ult ptr %i.bj, %i.bl
  br i1 %.not.i156, label %.preheader.i159, label %isint_w.exit165

.preheader.i159:                                  ; preds = %bb.v, %bb.z
  %.022.i160 = phi i32 [ %.1.i164, %bb.z ], [ 0, %bb.v ] ; 3 uses
  %.01621.i161 = phi ptr [ %i.bu, %bb.z ], [ %i.bj, %bb.v ] ; 2 uses
  %i.bm = load i32, ptr %.01621.i161, align 4, !tbaa !37 ; 3 uses
  %i.bn = add i32 %i.bm, -58
  %or.cond.i162 = icmp ult i32 %i.bn, -10
  br i1 %or.cond.i162, label %isint_w.exit165, label %bb.w

bb.w:                                             ; preds = %.preheader.i159
  %i.bo = icmp sgt i32 %.022.i160, 214748364
  br i1 %i.bo, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = icmp eq i32 %.022.i160, 214748364
  %i.bq = icmp samesign ugt i32 %i.bm, 55
  %or.cond19.i163 = and i1 %i.bp, %i.bq
  br i1 %or.cond19.i163, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = mul nsw i32 %.022.i160, 10
  %i.bs = add i32 %i.br, -48
  %i.bt = add i32 %i.bs, %i.bm
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.1.i164 = phi i32 [ %i.bt, %bb.y ], [ 2147483647, %bb.x ], [ 2147483647, %bb.w ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01621.i161, i64 4 ; 2 uses
  %i.bv = icmp ult ptr %i.bu, %i.bl
  br i1 %i.bv, label %.preheader.i159, label %isint_w.exit165, !llvm.loop !55

isint_w.exit165:                                  ; preds = %.preheader.i159, %bb.z, %bb.v, %isint_w.exit.thread, %isint_w.exit
  %.0222 = phi i32 [ -1, %isint_w.exit.thread ], [ %.1.i, %isint_w.exit ], [ -1, %bb.v ], [ %.1.i164, %bb.z ], [ -1, %.preheader.i159 ] ; 3 uses
  %i.bw = load ptr, ptr %i.aq, align 16, !tbaa !51 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53 ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  %i.cc = icmp eq ptr %i.by, %i.bw
  br i1 %i.cc, label %is_nfs4_perms_w.exit.backedge, label %bb.aa

bb.aa:                                            ; preds = %isint_w.exit165
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 4 uses
  %i.ce = load i32, ptr %i.bw, align 4, !tbaa !37
  switch i32 %i.ce, label %is_nfs4_perms_w.exit.backedge [
    i32 117, label %bb.ab
    i32 103, label %bb.ad
    i32 111, label %bb.af
    i32 109, label %bb.ah
  ]

bb.ab:                                            ; preds = %bb.aa
  switch i64 %i.cb, label %is_nfs4_perms_w.exit.backedge [
    i64 4, label %bb.ao
    i64 16, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cf = tail call i32 @wmemcmp(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.5, i64 noundef 3) #25
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ao, label %is_nfs4_perms_w.exit.backedge

bb.ad:                                            ; preds = %bb.aa
  switch i64 %i.cb, label %is_nfs4_perms_w.exit.backedge [
    i64 4, label %bb.ao
    i64 20, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ch = tail call i32 @wmemcmp(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.6, i64 noundef 4) #25
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ao, label %is_nfs4_perms_w.exit.backedge

bb.af:                                            ; preds = %bb.aa
  switch i64 %i.cb, label %is_nfs4_perms_w.exit.backedge [
    i64 4, label %bb.aj
    i64 20, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.cj = tail call i32 @wmemcmp(ptr noundef nonnull %i.cd, ptr noundef nonnull @.str.7, i64 noundef 4) #25
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.aj, label %is_nfs4_perms_w.exit.backedge

bb.ah:                                            ; preds = %bb.aa
  switch i64 %i.cb, label %is_nfs4_perms_w.exit.backedge [
    i64 4, label %bb.aj
end_hunk_0
begin_hunk_1_@archive_acl_from_text_w:bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %.01621.i193, i64 4 ; 2 uses
  %i.fx = icmp ult ptr %i.fw, %i.fn
  br i1 %i.fx, label %.preheader.i191, label %isint_w.exit197.thread, !llvm.loop !55

isint_w.exit197.thread:                           ; preds = %bb.cc, %.preheader.i191, %.thread298
  %.2224.ph = phi i32 [ %.1223, %.thread298 ], [ %.1223, %.preheader.i191 ], [ %.1.i196, %bb.cc ]
  %i.fy = ptrtoint ptr %.sroa.8.1 to i64
  %i.fz = ptrtoint ptr %.sroa.0.1 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  br label %bb.ch

isint_w.exit197:                                  ; preds = %bb.as, %ismode_w.exit
  %.2228 = phi i32 [ %.1227, %ismode_w.exit ], [ %.7, %bb.as ] ; 6 uses
  %.sroa.8.2 = phi i64 [ 0, %ismode_w.exit ], [ %.sroa.8.0265, %bb.as ]
  %.sroa.0.2 = phi ptr [ null, %ismode_w.exit ], [ %.sroa.0.0266, %bb.as ] ; 3 uses
  %.3 = phi i32 [ %.0.ph, %ismode_w.exit ], [ %.1268, %bb.as ] ; 3 uses
  %i.gb = ptrtoint ptr %.sroa.0.2 to i64
  %i.gc = sub i64 %.sroa.8.2, %i.gb               ; 2 uses
  %i.gd = icmp eq i32 %.0111, 256
  %i.ge = icmp ult i32 %.2228, 8
  %or.cond.i.i = and i1 %i.gd, %i.ge
  br i1 %or.cond.i.i, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %isint_w.exit197
  switch i32 %.3, label %bb.ch [
    i32 10002, label %bb.ce
    i32 10004, label %bb.cf
    i32 10006, label %bb.cg
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.gf = load i32, ptr %0, align 8, !tbaa !28
  %i.gg = and i32 %i.gf, -449
  %i.gh = shl nuw nsw i32 %.2228, 6
  %i.gi = or disjoint i32 %i.gg, %i.gh
  br label %acl_special.exit.i

bb.cf:                                            ; preds = %bb.cd
  %i.gj = load i32, ptr %0, align 8, !tbaa !28
  %i.gk = and i32 %i.gj, -57
  %i.gl = shl nuw nsw i32 %.2228, 3
  %i.gm = or disjoint i32 %i.gk, %i.gl
  br label %acl_special.exit.i

bb.cg:                                            ; preds = %bb.cd
  %i.gn = load i32, ptr %0, align 8, !tbaa !28
  %i.go = and i32 %i.gn, -8
  %i.gp = or disjoint i32 %i.go, %.2228
  br label %acl_special.exit.i

acl_special.exit.i:                               ; preds = %bb.cg, %bb.cf, %bb.ce
  %.sink.i.i = phi i32 [ %i.gp, %bb.cg ], [ %i.gm, %bb.cf ], [ %i.gi, %bb.ce ]
  store i32 %.sink.i.i, ptr %0, align 8, !tbaa !28
  br label %bb.cm

bb.ch:                                            ; preds = %isint_w.exit197.thread, %bb.cd, %isint_w.exit197
  %.in = phi i64 [ %i.ga, %isint_w.exit197.thread ], [ %i.gc, %bb.cd ], [ %i.gc, %isint_w.exit197 ] ; 2 uses
  %.3315 = phi i32 [ %.2277283, %isint_w.exit197.thread ], [ %.3, %bb.cd ], [ %.3, %isint_w.exit197 ]
  %.2113314 = phi i32 [ %.1112300, %isint_w.exit197.thread ], [ 256, %bb.cd ], [ %.0111, %isint_w.exit197 ] ; 3 uses
  %.sroa.0.2312 = phi ptr [ %.sroa.0.1, %isint_w.exit197.thread ], [ %.sroa.0.2, %bb.cd ], [ %.sroa.0.2, %isint_w.exit197 ] ; 3 uses
  %.2224311 = phi i32 [ %.2224.ph, %isint_w.exit197.thread ], [ %.0222, %bb.cd ], [ %.0222, %isint_w.exit197 ]
  %.2228310 = phi i32 [ %.14.ph, %isint_w.exit197.thread ], [ %.2228, %bb.cd ], [ %.2228, %isint_w.exit197 ]
  %i.gq = ashr exact i64 %.in, 2
  %i.gr = tail call fastcc ptr @acl_new_entry(ptr noundef %0, i32 noundef %.2113314, i32 noundef %.2228310, i32 noundef %.3315, i32 noundef %.2224311) ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %archive_acl_add_entry_w_len.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not.i198 = icmp eq ptr %.sroa.0.2312, null
  br i1 %.not.i198, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gt = load i32, ptr %.sroa.0.2312, align 4, !tbaa !37
  %i.gu = icmp ne i32 %i.gt, 0
  %i.gv = icmp ne i64 %.in, 0
  %or.cond.i199 = and i1 %i.gv, %i.gu
  br i1 %or.cond.i199, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gx = tail call i32 @archive_mstring_copy_wcs_len(ptr noundef nonnull %i.gw, ptr noundef nonnull %.sroa.0.2312, i64 noundef %i.gq) #20 ; 0 uses
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj, %bb.ci
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  tail call void @archive_mstring_clean(ptr noundef nonnull %i.gy) #20
  br label %bb.cm

bb.cm:                                            ; preds = %acl_special.exit.i, %bb.cl, %bb.ck
  %.2113313.ph = phi i32 [ %.2113314, %bb.ck ], [ %.2113314, %bb.cl ], [ 256, %acl_special.exit.i ]
  %i.gz = or i32 %.2113313.ph, %.0110343404
  br label %is_nfs4_perms_w.exit.backedge

is_nfs4_perms_w.exit.backedge:                    ; preds = %.preheader330, %.lr.ph.i, %.lr.ph.i186, %bb.au, %bb.av, %bb.at, %ismode_w.exit.thread258, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.aa, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.cm, %bb.j, %isint_w.exit165, %.split, %.split278, %.split301, %.split302, %ismode_w.exit.thread, %.loopexit
  %.0114.be = phi i32 [ %.0114342407, %bb.j ], [ -20, %ismode_w.exit.thread258 ], [ -20, %.split302 ], [ -20, %bb.au ], [ -20, %.loopexit ], [ %.0114342407, %bb.cm ], [ -20, %isint_w.exit165 ], [ -20, %.lr.ph.i ], [ -20, %ismode_w.exit.thread ], [ -20, %bb.ac ], [ -20, %.split ], [ -20, %.split278 ], [ -20, %.split301 ], [ -20, %bb.ah ], [ -20, %bb.af ], [ -20, %bb.ad ], [ -20, %bb.ab ], [ -20, %bb.aa ], [ -20, %bb.ai ], [ -20, %bb.ag ], [ -20, %bb.ae ], [ -20, %.lr.ph.i186 ], [ -20, %bb.at ], [ -20, %bb.av ], [ -20, %.preheader330 ] ; 2 uses
  %.0110.be = phi i32 [ %.0110343404, %bb.j ], [ %.0110343404, %ismode_w.exit.thread258 ], [ %.0110343404, %.split302 ], [ %.0110343404, %bb.au ], [ %.0110343404, %.loopexit ], [ %i.gz, %bb.cm ], [ %.0110343404, %isint_w.exit165 ], [ %.0110343404, %.lr.ph.i ], [ %.0110343404, %ismode_w.exit.thread ], [ %.0110343404, %bb.ac ], [ %.0110343404, %.split ], [ %.0110343404, %.split278 ], [ %.0110343404, %.split301 ], [ %.0110343404, %bb.ah ], [ %.0110343404, %bb.af ], [ %.0110343404, %bb.ad ], [ %.0110343404, %bb.ab ], [ %.0110343404, %bb.aa ], [ %.0110343404, %bb.ai ], [ %.0110343404, %bb.ag ], [ %.0110343404, %bb.ae ], [ %.0110343404, %.lr.ph.i186 ], [ %.0110343404, %bb.at ], [ %.0110343404, %bb.av ], [ %.0110343404, %.preheader330 ] ; 2 uses
  %i.ha = load i32, ptr %.6239, align 4, !tbaa !37
  %.not137 = icmp eq i32 %i.ha, 0
  br i1 %.not137, label %.critedge, label %.preheader333.preheader

.critedge:                                        ; preds = %is_nfs4_perms_w.exit.backedge, %.lr.ph347, %bb.d
  %.0114.lcssa = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph347 ], [ %.0114.be, %is_nfs4_perms_w.exit.backedge ]
  %.0110.lcssa = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph347 ], [ %.0110.be, %is_nfs4_perms_w.exit.backedge ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.012.i.i = load ptr, ptr %i.hb, align 8, !tbaa !29 ; 3 uses
  %.not13.i.i = icmp eq ptr %.012.i.i, null
  br i1 %.not13.i.i, label %archive_acl_reset.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %.critedge ] ; 2 uses
  %.0914.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %.critedge ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !30
  %i.he = and i32 %i.hd, %.0110.lcssa
  %.not11.i.i = icmp ne i32 %i.he, 0
  %i.hf = zext i1 %.not11.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %.0914.i.i, %i.hf ; 2 uses
  %.0.i.i = load ptr, ptr %.015.i.i, align 8, !tbaa !29 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %archive_acl_reset.exit, label %.lr.ph.i.i, !llvm.loop !38

archive_acl_reset.exit:                           ; preds = %.lr.ph.i.i, %.critedge
  %.09.lcssa.i.i = phi i32 [ 0, %.critedge ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.hg = icmp eq i32 %.09.lcssa.i.i, 0
  %i.hh = and i32 %.0110.lcssa, 256
  %.not10.i.i = icmp eq i32 %i.hh, 0              ; 2 uses
  %or.cond.i.i200 = or i1 %.not10.i.i, %i.hg
  %i.hi = add nuw nsw i32 %.09.lcssa.i.i, 3
  %.2.i.i = select i1 %or.cond.i.i200, i32 %.09.lcssa.i.i, i32 %i.hi
  %..i = select i1 %.not10.i.i, i32 0, i32 3
  %i.hj = icmp sgt i32 %.2.i.i, %..i
  %spec.select.i = select i1 %i.hj, i32 10002, i32 0
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %spec.select.i, ptr %i.hk, align 8, !tbaa !27
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.012.i.i, ptr %i.hl, align 8, !tbaa !25
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
  %.0123 = phi i32 [ 6, %bb.c ], [ 5, %bb.b ], [ 5, %bb.a ], [ 5, %bb.a ] ; 2 uses
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond404 = and i1 %i.a, %i.b
  br i1 %or.cond404, label %.lr.ph412, label %.critedge

.lr.ph412:                                        ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not138 = icmp eq i32 %.1126, 15360
  %.sroa.8.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = zext nneg i32 %.0123 to i64              ; 2 uses
  %i.e = add nuw nsw i64 %i.d, 4294967294
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph412, %is_nfs4_perms.exit.backedge
  %.0112408 = phi i32 [ 0, %.lr.ph412 ], [ %.0112.be, %is_nfs4_perms.exit.backedge ] ; 26 uses
  %.0116407 = phi i32 [ 0, %.lr.ph412 ], [ %.0116.be, %is_nfs4_perms.exit.backedge ] ; 5 uses
  %.0258406 = phi i64 [ %2, %.lr.ph412 ], [ %.12270, %is_nfs4_perms.exit.backedge ]
  %.0271405 = phi ptr [ %1, %.lr.ph412 ], [ %.12283, %is_nfs4_perms.exit.backedge ] ; 2 uses
  %i.f = load i8, ptr %.0271405, align 1, !tbaa !36
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.critedge, label %.preheader386

.preheader386:                                    ; preds = %bb.e, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.e ] ; 5 uses
  %.1272 = phi ptr [ %.12283, %bb.j ], [ %.0271405, %bb.e ] ; 5 uses
  %.1259 = phi i64 [ %.12270, %bb.j ], [ %.0258406, %bb.e ] ; 3 uses
  %.not69.i = icmp eq i64 %.1259, 0
  br i1 %.not69.i, label %.critedge6.i.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader386
  %scevgep = getelementptr i8, ptr %.1272, i64 %.1259 ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.critedge2.i
  %.2273 = phi ptr [ %i.h, %.critedge2.i ], [ %.1272, %.lr.ph.i.preheader ] ; 11 uses
  %.2260 = phi i64 [ %i.i, %.critedge2.i ], [ %.1259, %.lr.ph.i.preheader ] ; 2 uses
  %i.g = load i8, ptr %.2273, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.g, label %.lr.ph72.i [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 10, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.2273, i64 1
  %i.i = add i64 %.2260, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %.critedge6.i.thread, label %.lr.ph.i, !llvm.loop !60

.lr.ph72.ithread-pre-split:                       ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.10281, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.j, align 1, !tbaa !36
  br label %.lr.ph72.i

.lr.ph72.i:                                       ; preds = %.lr.ph.i, %.lr.ph72.ithread-pre-split
  %i.k = phi i8 [ %.pr, %.lr.ph72.ithread-pre-split ], [ %i.g, %.lr.ph.i ]
  %.10281 = phi ptr [ %i.j, %.lr.ph72.ithread-pre-split ], [ %.2273, %.lr.ph.i ] ; 9 uses
  %i.l = phi i64 [ %i.m, %.lr.ph72.ithread-pre-split ], [ %.2260, %.lr.ph.i ] ; 2 uses
  switch i8 %i.k, label %bb.f [
    i8 32, label %.lr.ph81.i.preheader
    i8 9, label %.lr.ph81.i.preheader
    i8 10, label %.lr.ph81.i.preheader
    i8 44, label %.lr.ph81.i.preheader
    i8 58, label %.lr.ph81.i.preheader
    i8 35, label %.lr.ph81.i.preheader
  ]

.lr.ph81.i.preheader:                             ; preds = %.lr.ph72.i, %.lr.ph72.i, %.lr.ph72.i, %.lr.ph72.i, %.lr.ph72.i, %.lr.ph72.i
  br label %.lr.ph81.i

bb.f:                                             ; preds = %.lr.ph72.i
  %i.m = add i64 %i.l, -1                         ; 2 uses
  %.not50.i = icmp eq i64 %i.m, 0
  br i1 %.not50.i, label %.critedge6.i.thread, label %.lr.ph72.ithread-pre-split, !llvm.loop !61

.lr.ph81.i:                                       ; preds = %.lr.ph81.i.preheader, %bb.g
  %.11282 = phi ptr [ %i.p, %bb.g ], [ %.10281, %.lr.ph81.i.preheader ] ; 7 uses
  %i.n = phi i64 [ %i.q, %bb.g ], [ %i.l, %.lr.ph81.i.preheader ] ; 6 uses
  %i.o = load i8, ptr %.11282, align 1, !tbaa !36 ; 4 uses
  switch i8 %i.o, label %bb.g [
    i8 35, label %.lr.ph88.i.preheader
    i8 10, label %next_field.exit
    i8 44, label %next_field.exit
    i8 58, label %next_field.exit
  ]

bb.g:                                             ; preds = %.lr.ph81.i
  %i.p = getelementptr inbounds nuw i8, ptr %.11282, i64 1
  %i.q = add i64 %i.n, -1                         ; 2 uses
  %.not57.i = icmp eq i64 %i.q, 0
  br i1 %.not57.i, label %.critedge6.i.thread, label %.lr.ph81.i, !llvm.loop !62

.critedge6.i.thread:                              ; preds = %.critedge2.i, %bb.f, %bb.g, %.preheader386
  %.5276 = phi ptr [ %scevgep, %bb.g ], [ %scevgep, %bb.f ], [ %.1272, %.preheader386 ], [ %scevgep, %.critedge2.i ] ; 2 uses
  %.1244 = phi ptr [ %.2273, %bb.g ], [ %.2273, %bb.f ], [ %.1272, %.preheader386 ], [ %scevgep, %.critedge2.i ]
  %.0241 = phi ptr [ %.10281, %bb.g ], [ %scevgep, %bb.f ], [ %.1272, %.preheader386 ], [ %scevgep, %.critedge2.i ]
  %.pr111.i = load i8, ptr %.5276, align 1, !tbaa !36
  br label %next_field.exit

.lr.ph88.i.preheader:                             ; preds = %.lr.ph81.i
  %scevgep437 = getelementptr i8, ptr %.11282, i64 %i.n ; 2 uses
  br label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %bb.h
  %.8279 = phi ptr [ %i.s, %bb.h ], [ %.11282, %.lr.ph88.i.preheader ] ; 4 uses
  %.8266 = phi i64 [ %i.t, %bb.h ], [ %i.n, %.lr.ph88.i.preheader ] ; 3 uses
  %i.r = load i8, ptr %.8279, align 1, !tbaa !36  ; 3 uses
  switch i8 %i.r, label %bb.h [
    i8 44, label %next_field.exit
    i8 10, label %next_field.exit
  ]

bb.h:                                             ; preds = %.lr.ph88.i
  %i.s = getelementptr inbounds nuw i8, ptr %.8279, i64 1
  %i.t = add i64 %.8266, -1                       ; 2 uses
  %.not62.i = icmp eq i64 %i.t, 0
  br i1 %.not62.i, label %..critedge8.i.loopexit_crit_edge, label %.lr.ph88.i, !llvm.loop !63

..critedge8.i.loopexit_crit_edge:                 ; preds = %bb.h
  %.pre.pre = load i8, ptr %scevgep437, align 1, !tbaa !36
  br label %next_field.exit, !llvm.loop !63

next_field.exit:                                  ; preds = %.lr.ph81.i, %.lr.ph81.i, %.lr.ph81.i, %.lr.ph88.i, %.lr.ph88.i, %.critedge6.i.thread, %..critedge8.i.loopexit_crit_edge
  %.1242489 = phi ptr [ %.10281, %..critedge8.i.loopexit_crit_edge ], [ %.10281, %.lr.ph88.i ], [ %.0241, %.critedge6.i.thread ], [ %.10281, %.lr.ph88.i ], [ %.10281, %.lr.ph81.i ], [ %.10281, %.lr.ph81.i ], [ %.10281, %.lr.ph81.i ]
  %.2245487 = phi ptr [ %.2273, %..critedge8.i.loopexit_crit_edge ], [ %.2273, %.lr.ph88.i ], [ %.1244, %.critedge6.i.thread ], [ %.2273, %.lr.ph88.i ], [ %.2273, %.lr.ph81.i ], [ %.2273, %.lr.ph81.i ], [ %.2273, %.lr.ph81.i ]
  %.7278 = phi ptr [ %scevgep437, %..critedge8.i.loopexit_crit_edge ], [ %.8279, %.lr.ph88.i ], [ %.5276, %.critedge6.i.thread ], [ %.8279, %.lr.ph88.i ], [ %.11282, %.lr.ph81.i ], [ %.11282, %.lr.ph81.i ], [ %.11282, %.lr.ph81.i ]
  %.7265 = phi i64 [ 0, %..critedge8.i.loopexit_crit_edge ], [ %.8266, %.lr.ph88.i ], [ 0, %.critedge6.i.thread ], [ %.8266, %.lr.ph88.i ], [ %i.n, %.lr.ph81.i ], [ %i.n, %.lr.ph81.i ], [ %i.n, %.lr.ph81.i ] ; 3 uses
  %.0246 = phi i8 [ %.pre.pre, %..critedge8.i.loopexit_crit_edge ], [ %i.r, %.lr.ph88.i ], [ %.pr111.i, %.critedge6.i.thread ], [ %i.r, %.lr.ph88.i ], [ %i.o, %.lr.ph81.i ], [ %i.o, %.lr.ph81.i ], [ %i.o, %.lr.ph81.i ]
  %.not65.i = icmp ne i64 %.7265, 0
  %.12283.idx = zext i1 %.not65.i to i64
  %.12283 = getelementptr inbounds nuw i8, ptr %.7278, i64 %.12283.idx ; 2 uses
  %.12270 = tail call i64 @llvm.usub.sat.i64(i64 %.7265, i64 1) ; 2 uses
  %i.u = icmp samesign ult i64 %indvars.iv, %i.d
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %next_field.exit
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  store ptr %.2245487, ptr %i.v, align 16, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.1242489, ptr %i.w, align 8, !tbaa !66
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %next_field.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.x = icmp eq i8 %.0246, 58
  br i1 %i.x, label %.preheader386, label %.preheader385, !llvm.loop !67

.preheader385:                                    ; preds = %bb.j
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.z = trunc nuw i64 %indvars.iv.next to i32
  %i.aa = icmp samesign ugt i32 %.0123, %i.z
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader385
  %i.ab = shl i64 %indvars.iv.next, 4
  %scevgep439 = getelementptr i8, ptr %5, i64 %i.ab
  %i.ac = sub nsw i64 %i.e, %indvars.iv
  %i.ad = shl i64 %i.ac, 4
  %i.ae = and i64 %i.ad, 68719476720
  %i.af = add nuw nsw i64 %i.ae, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %scevgep439, i8 0, i64 %i.af, i1 false), !tbaa !39
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader385
  %i.ag = load ptr, ptr %5, align 16, !tbaa !64   ; 14 uses
  %i.ah = icmp eq ptr %i.ag, null
  %i.ai = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %or.cond5 = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond5, label %archive_acl_add_entry_len_l.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !36  ; 2 uses
  %i.al = icmp eq i8 %i.ak, 35
  br i1 %i.al, label %is_nfs4_perms.exit.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 4 uses
  br i1 %.not138, label %bb.au, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp eq i8 %i.ak, 100
  br i1 %i.ap, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp eq i64 %i.ao, 1
  br i1 %i.aq, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp ugt i64 %i.ao, 6
  br i1 %i.ar, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %i.at = load i32, ptr %i.as, align 1
  %i.au = xor i32 %i.at, 1969317477
  %i.av = getelementptr i8, ptr %i.as, i64 4
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = zext i16 %i.aw to i32
  %i.ay = xor i32 %i.ax, 29804
  %i.az = or i32 %i.au, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.not373 = icmp eq i64 %i.ao, 7
  br i1 %.not373, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 7
  store ptr %i.bd, ptr %5, align 16, !tbaa !64
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r
  %.1120 = phi i32 [ 0, %bb.r ], [ 1, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.m ], [ 1, %bb.n ] ; 5 uses
  %.0113 = phi i32 [ 512, %bb.r ], [ 512, %bb.q ], [ %.1126, %bb.p ], [ %.1126, %bb.o ], [ %.1126, %bb.m ], [ 512, %bb.n ] ; 2 uses
  %i.be = zext nneg i32 %.1120 to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !64 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66 ; 4 uses
  %.not.i167 = icmp ult ptr %i.bh, %i.bj          ; 4 uses
  br i1 %.not.i167, label %.preheader.i, label %isint.exit.thread

.preheader.i:                                     ; preds = %.thread, %bb.v
  %.022.i = phi i32 [ %.1.i, %bb.v ], [ 0, %.thread ] ; 3 uses
  %.01621.i = phi ptr [ %i.bt, %bb.v ], [ %i.bh, %.thread ] ; 2 uses
  %i.bk = load i8, ptr %.01621.i, align 1, !tbaa !36 ; 3 uses
  %i.bl = add i8 %i.bk, -58
  %or.cond.i = icmp ult i8 %i.bl, -10
  br i1 %or.cond.i, label %isint.exit.thread, label %bb.s

bb.s:                                             ; preds = %.preheader.i
  %i.bm = icmp sgt i32 %.022.i, 214748364
  br i1 %i.bm, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = icmp eq i32 %.022.i, 214748364
  %i.bo = icmp samesign ugt i8 %i.bk, 55
  %or.cond19.i = and i1 %i.bn, %i.bo
  br i1 %or.cond19.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = mul nsw i32 %.022.i, 10
  %i.bq = zext nneg i8 %i.bk to i32
  %i.br = add i32 %i.bp, -48
  %i.bs = add i32 %i.br, %i.bq
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.1.i = phi i32 [ %i.bs, %bb.u ], [ 2147483647, %bb.t ], [ 2147483647, %bb.s ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01621.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bt, %i.bj
  br i1 %exitcond.not.i, label %isint.exit, label %.preheader.i, !llvm.loop !68

isint.exit:                                       ; preds = %bb.v
  %i.bu = icmp eq i32 %.1.i, -1
  br i1 %i.bu, label %isint.exit.thread, label %isint.exit177

isint.exit.thread:                                ; preds = %.preheader.i, %.thread, %isint.exit
  %i.bv = add nuw nsw i32 %.1120, 3               ; 2 uses
  %.not150 = icmp samesign ugt i32 %i.bv, %i.y
  br i1 %.not150, label %isint.exit177, label %bb.w

bb.w:                                             ; preds = %isint.exit.thread
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !66 ; 2 uses
  %.not.i168 = icmp ult ptr %i.by, %i.ca
  br i1 %.not.i168, label %.preheader.i170, label %isint.exit177

.preheader.i170:                                  ; preds = %bb.w, %bb.aa
  %.022.i171 = phi i32 [ %.1.i175, %bb.aa ], [ 0, %bb.w ] ; 3 uses
  %.01621.i172 = phi ptr [ %i.ck, %bb.aa ], [ %i.by, %bb.w ] ; 2 uses
  %i.cb = load i8, ptr %.01621.i172, align 1, !tbaa !36 ; 3 uses
  %i.cc = add i8 %i.cb, -58
  %or.cond.i173 = icmp ult i8 %i.cc, -10
  br i1 %or.cond.i173, label %isint.exit177, label %bb.x

bb.x:                                             ; preds = %.preheader.i170
  %i.cd = icmp sgt i32 %.022.i171, 214748364
  br i1 %i.cd, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = icmp eq i32 %.022.i171, 214748364
  %i.cf = icmp samesign ugt i8 %i.cb, 55
  %or.cond19.i174 = and i1 %i.ce, %i.cf
  br i1 %or.cond19.i174, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = mul nsw i32 %.022.i171, 10
  %i.ch = zext nneg i8 %i.cb to i32
  %i.ci = add i32 %i.cg, -48
  %i.cj = add i32 %i.ci, %i.ch
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.1.i175 = phi i32 [ %i.cj, %bb.z ], [ 2147483647, %bb.y ], [ 2147483647, %bb.x ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01621.i172, i64 1 ; 2 uses
  %exitcond.not.i176 = icmp eq ptr %i.ck, %i.ca
  br i1 %exitcond.not.i176, label %isint.exit177, label %.preheader.i170, !llvm.loop !68

isint.exit177:                                    ; preds = %.preheader.i170, %bb.aa, %bb.w, %isint.exit.thread, %isint.exit
  %.0247 = phi i32 [ -1, %isint.exit.thread ], [ %.1.i, %isint.exit ], [ -1, %bb.w ], [ %.1.i175, %bb.aa ], [ -1, %.preheader.i170 ] ; 3 uses
  %i.cl = load ptr, ptr %i.bf, align 16, !tbaa !64 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !66 ; 2 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.cl to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 4 uses
  %i.cs = icmp eq ptr %i.co, %i.cl
  br i1 %i.cs, label %is_nfs4_perms.exit.backedge, label %bb.ab

bb.ab:                                            ; preds = %isint.exit177
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !36
  switch i8 %i.ct, label %is_nfs4_perms.exit.backedge [
    i8 117, label %bb.ac
    i8 103, label %bb.ae
    i8 111, label %bb.ag
    i8 109, label %bb.ai
  ]

bb.ac:                                            ; preds = %bb.ab
  switch i64 %i.cr, label %is_nfs4_perms.exit.backedge [
    i64 1, label %bb.ap
    i64 4, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i16, ptr %i.cm, align 1
  %i.cv = xor i16 %i.cu, 25971
  %i.cw = getelementptr i8, ptr %i.cm, i64 2
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i16
  %i.cz = xor i16 %i.cy, 114
  %i.da = or i16 %i.cv, %i.cz
  %i.db = icmp ne i16 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ap, label %is_nfs4_perms.exit.backedge

bb.ae:                                            ; preds = %bb.ab
  switch i64 %i.cr, label %is_nfs4_perms.exit.backedge [
    i64 1, label %bb.ap
    i64 5, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
end_hunk_1
