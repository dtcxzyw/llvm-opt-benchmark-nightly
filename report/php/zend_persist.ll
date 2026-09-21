Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_persist?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@zend_persist_attributes:bb.a
bb.ay:                                            ; preds = %zend_string_release_ex.exit173, %bb.ax, %bb.ak, %bb.ai
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 36 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !191
  %.not195 = icmp eq i32 %i.fe, 0
  br i1 %.not195, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ay
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph, %bb.bp
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bp ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %indvars.iv ; 8 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !196 ; 4 uses
  %.not163 = icmp eq ptr %i.fh, null
  br i1 %.not163, label %bb.bp, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fi = load ptr, ptr @accel_shared_globals, align 8, !tbaa !83 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 184
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !90
  %.not164 = icmp ult ptr %i.fh, %i.fk
  br i1 %.not164, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 192
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !91
  %i.fn = icmp ult ptr %i.fh, %i.fm
  br i1 %i.fn, label %bb.bp, label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.fo = tail call ptr @zend_shared_alloc_get_xlat_entry(ptr noundef nonnull %i.fh) #6 ; 2 uses
  %.not165 = icmp eq ptr %i.fo, null
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !196 ; 6 uses
  br i1 %.not165, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !23
  %i.fs = and i32 %i.fr, 64
  %.not.i168 = icmp eq i32 %i.fs, 0
  br i1 %.not.i168, label %bb.be, label %zend_string_release_ex.exit169

bb.be:                                            ; preds = %bb.bd
  %i.ft = load i32, ptr %i.fp, align 4, !tbaa !24 ; 2 uses
  %i.fu = icmp ne i32 %i.ft, 0
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = add i32 %i.ft, -1                       ; 2 uses
  store i32 %i.fv, ptr %i.fp, align 4, !tbaa !24
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.bf, label %zend_string_release_ex.exit169

bb.bf:                                            ; preds = %bb.be
  tail call void @_efree(ptr noundef nonnull %i.fp) #6
  br label %zend_string_release_ex.exit169

zend_string_release_ex.exit169:                   ; preds = %bb.bd, %bb.be, %bb.bf
  store ptr %i.fo, ptr %i.fg, align 8, !tbaa !196
  br label %bb.bp

bb.bg:                                            ; preds = %bb.bc
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !16
  %i.fz = add i64 %i.fy, 25
  %i.ga = tail call ptr @zend_shared_memdup_put(ptr noundef %i.fp, i64 noundef %i.fz) #6 ; 4 uses
  %i.gb = load ptr, ptr %i.fg, align 8, !tbaa !196 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !23
  %i.ge = and i32 %i.gd, 64
  %.not.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i, label %bb.bh, label %zend_string_release_ex.exit

bb.bh:                                            ; preds = %bb.bg
  %i.gf = load i32, ptr %i.gb, align 4, !tbaa !24 ; 2 uses
  %i.gg = icmp ne i32 %i.gf, 0
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = add i32 %i.gf, -1                       ; 2 uses
  store i32 %i.gh, ptr %i.gb, align 4, !tbaa !24
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.bi, label %zend_string_release_ex.exit

bb.bi:                                            ; preds = %bb.bh
  tail call void @_efree(ptr noundef nonnull %i.gb) #6
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.bg, %bb.bh, %bb.bi
  store ptr %i.ga, ptr %i.fg, align 8, !tbaa !196
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !92
  %.not.i182 = icmp eq i64 %i.gk, 0
  br i1 %.not.i182, label %bb.bj, label %zend_string_hash_val.exit

bb.bj:                                            ; preds = %zend_string_release_ex.exit
  %i.gl = tail call i64 @zend_string_hash_func(ptr noundef nonnull %i.ga) #6 ; 0 uses
  %.pre202 = load ptr, ptr %i.fg, align 8, !tbaa !196
  br label %zend_string_hash_val.exit

zend_string_hash_val.exit:                        ; preds = %zend_string_release_ex.exit, %bb.bj
  %i.gm = phi ptr [ %i.ga, %zend_string_release_ex.exit ], [ %.pre202, %bb.bj ] ; 3 uses
  store i32 2, ptr %i.gm, align 4, !tbaa !24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !23
  %i.gp = and i32 %i.go, 512                      ; 2 uses
  %i.gq = load i8, ptr @file_cache_only, align 1, !tbaa !93, !range !63, !noundef !64
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %zend_string_hash_val.exit
  %i.gs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @accel_globals, i64 400), align 8, !tbaa !48 ; 2 uses
  %.not167 = icmp eq ptr %i.gs, null
  br i1 %.not167, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 400
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !62, !range !63, !noundef !64
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %zend_string_hash_val.exit
  store i32 86, ptr %i.gn, align 4, !tbaa !23
  %i.gw = or disjoint i32 %i.gp, 86
  %.pre203 = load ptr, ptr %i.fg, align 8, !tbaa !196
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.gx = or disjoint i32 %i.gp, 342
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.gy = phi ptr [ %.pre203, %bb.bm ], [ %i.gm, %bb.bn ]
  %.0129 = phi i32 [ %i.gw, %bb.bm ], [ %i.gx, %bb.bn ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store i32 %.0129, ptr %i.gz, align 4, !tbaa !23
  br label %bb.bp

bb.bp:                                            ; preds = %zend_string_release_ex.exit169, %bb.bo, %bb.bb, %bb.az
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  tail call fastcc void @zend_persist_zval(ptr noundef nonnull %i.ha)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hb = load i32, ptr %i.fd, align 4, !tbaa !191
  %i.hc = zext i32 %i.hb to i64
  %i.hd = icmp samesign ult i64 %indvars.iv.next, %i.hc
  br i1 %i.hd, label %bb.az, label %._crit_edge, !llvm.loop !188

._crit_edge:                                      ; preds = %bb.bp, %bb.ay
  store ptr %i.v, ptr %.0133191, align 8, !tbaa !23
  store i32 13, ptr %i.m, align 8, !tbaa !23
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph193, %._crit_edge
  %i.he = getelementptr inbounds nuw i8, ptr %.0133191, i64 16 ; 2 uses
  %.not149 = icmp eq ptr %i.he, %i.l
  br i1 %.not149, label %._crit_edge194, label %.lr.ph193, !llvm.loop !189

._crit_edge194:                                   ; preds = %bb.bq, %bb.d
  %i.hf = tail call ptr @zend_shared_memdup_put_free(ptr noundef %0, i64 noundef 56) #6 ; 3 uses
  store i32 2, ptr %i.hf, align 4, !tbaa !24
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i32 87, ptr %i.hg, align 4, !tbaa !23
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge194, %bb.c, %bb.b
  %.1 = phi ptr [ %0, %bb.b ], [ %i.hf, %._crit_edge194 ], [ %i.f, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden void @zend_update_parent_ce(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %.not163 = icmp eq ptr %i.e, null
  br i1 %.not163, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.e, align 8, !tbaa !40
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @zend_shared_alloc_get_xlat_entry(ptr noundef nonnull %i.e) #6 ; 3 uses
  %.not164 = icmp eq ptr %i.h, null
  br i1 %.not164, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.h, ptr %i.d, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.1 = phi ptr [ %i.e, %bb.c ], [ %i.h, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.1, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !99
  %i.k = add nsw i32 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.2228 = phi ptr [ %.1, %bb.f ], [ %i.ad, %._crit_edge ] ; 2 uses
  %.0129227 = phi i32 [ %i.k, %bb.f ], [ %.1130.lcssa, %._crit_edge ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.2228, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98
  %.not166 = icmp eq ptr %i.n, null
  br i1 %.not166, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.2228, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 3 uses
  %.not197 = icmp eq ptr %i.p, null
  br i1 %.not197, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !99
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.s = phi i32 [ %i.r, %bb.i ], [ 0, %bb.h ]    ; 2 uses
  %.not198225 = icmp slt i32 %.0129227, %i.s
  br i1 %.not198225, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.t = sext i32 %.0129227 to i64
  %i.u = sext i32 %i.s to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next.1, %bb.l ] ; 4 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !98
  %i.w = getelementptr inbounds [16 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !23
  %i.z = icmp eq i8 %i.y, 12
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %indvars.iv
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !23
  store i32 12, ptr %i.x, align 8, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -1 ; 2 uses
  %.not198.not.1 = icmp sgt i64 %indvars.iv, %i.u
  br i1 %.not198.not.1, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !197

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.ac = trunc nsw i64 %indvars.iv.next.1 to i32
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.ad = phi ptr [ %i.p, %bb.j ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.1130.lcssa = phi i32 [ %.0129227, %bb.j ], [ %i.ac, %._crit_edge.loopexit ]
  %.not165 = icmp eq ptr %i.ad, null
  br i1 %.not165, label %.critedge, label %bb.g, !llvm.loop !198

.critedge:                                        ; preds = %bb.g, %._crit_edge, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !115 ; 2 uses
  %.not167 = icmp eq i32 %i.af, 0
  br i1 %.not167, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ai = zext i32 %i.af to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = tail call ptr @zend_shared_memdup_free(ptr noundef %i.ah, i64 noundef %i.aj) #6
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !23
  %i.al = load i32, ptr %i.ae, align 8, !tbaa !115
  %.not232 = icmp eq i32 %i.al, 0
  br i1 %.not232, label %.loopexit, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.m, %bb.p
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.p ], [ 0, %bb.m ] ; 3 uses
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv234
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !81 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !40
  %i.aq = icmp eq i8 %i.ap, 2
  br i1 %i.aq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph231
  %i.ar = tail call ptr @zend_shared_alloc_get_xlat_entry(ptr noundef nonnull %i.ao) #6 ; 2 uses
  %.not196 = icmp eq ptr %i.ar, null
  br i1 %.not196, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv234
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !81
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %.lr.ph231
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.au = load i32, ptr %i.ae, align 8, !tbaa !115
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next235, %i.av
  br i1 %i.aw, label %.lr.ph231, label %.loopexit, !llvm.loop !199

.loopexit:                                        ; preds = %bb.p, %bb.m, %.critedge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 7 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !113 ; 2 uses
  %.not168 = icmp eq ptr %i.ay, null
  br i1 %.not168, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i8 0, i64 48, i1 false)
  %i.az = load ptr, ptr @zend_ce_aggregate, align 8, !tbaa !81
  %i.ba = tail call zeroext i1 @zend_class_implements_interface(ptr noundef nonnull %0, ptr noundef %i.az) #6
  br i1 %i.ba, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str, i64 noundef 11) #6 ; 2 uses
  %.not.i220 = icmp eq ptr %i.bc, null
  br i1 %.not.i220, label %zend_hash_str_find_ptr.exit222, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23, !nonnull !64, !noundef !64
  br label %zend_hash_str_find_ptr.exit222

zend_hash_str_find_ptr.exit222:                   ; preds = %bb.r, %bb.s
  %.0.i221 = phi ptr [ %i.bd, %bb.s ], [ null, %bb.r ]
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !113
  store ptr %.0.i221, ptr %i.be, align 8, !tbaa !201
  br label %bb.t

bb.t:                                             ; preds = %zend_hash_str_find_ptr.exit222, %bb.q
  %i.bf = load ptr, ptr @zend_ce_iterator, align 8, !tbaa !81
  %i.bg = tail call zeroext i1 @zend_class_implements_interface(ptr noundef nonnull %0, ptr noundef %i.bf) #6
  br i1 %i.bg, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.bi = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.bh, ptr noundef nonnull @.str.1, i64 noundef 6) #6 ; 2 uses
  %.not.i217 = icmp eq ptr %i.bi, null
  br i1 %.not.i217, label %zend_hash_str_find_ptr.exit219, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23, !nonnull !64, !noundef !64
  br label %zend_hash_str_find_ptr.exit219

zend_hash_str_find_ptr.exit219:                   ; preds = %bb.u, %bb.v
  %.0.i218 = phi ptr [ %i.bj, %bb.v ], [ null, %bb.u ]
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !113
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %.0.i218, ptr %i.bl, align 8, !tbaa !202
  %i.bm = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.bh, ptr noundef nonnull @.str.2, i64 noundef 5) #6 ; 2 uses
  %.not.i214 = icmp eq ptr %i.bm, null
  br i1 %.not.i214, label %zend_hash_str_find_ptr.exit216, label %bb.w

bb.w:                                             ; preds = %zend_hash_str_find_ptr.exit219
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !23, !nonnull !64, !noundef !64
  br label %zend_hash_str_find_ptr.exit216

zend_hash_str_find_ptr.exit216:                   ; preds = %zend_hash_str_find_ptr.exit219, %bb.w
  %.0.i215 = phi ptr [ %i.bn, %bb.w ], [ null, %zend_hash_str_find_ptr.exit219 ]
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !113
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %.0.i215, ptr %i.bp, align 8, !tbaa !203
  %i.bq = load ptr, ptr @zend_known_strings, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 184
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22
  %i.bt = tail call ptr @zend_hash_find(ptr noundef nonnull %i.bh, ptr noundef %i.bs) #6 ; 2 uses
  %.not.i223 = icmp eq ptr %i.bt, null
  br i1 %.not.i223, label %zend_hash_find_ptr.exit, label %bb.x

bb.x:                                             ; preds = %zend_hash_str_find_ptr.exit216
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !23, !nonnull !64, !noundef !64
  br label %zend_hash_find_ptr.exit

zend_hash_find_ptr.exit:                          ; preds = %zend_hash_str_find_ptr.exit216, %bb.x
  %.0.i224 = phi ptr [ %i.bu, %bb.x ], [ null, %zend_hash_str_find_ptr.exit216 ]
  %i.bv = load ptr, ptr %i.ax, align 8, !tbaa !113
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %.0.i224, ptr %i.bw, align 8, !tbaa !204
  %i.bx = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.bh, ptr noundef nonnull @.str.3, i64 noundef 7) #6 ; 2 uses
  %.not.i211 = icmp eq ptr %i.bx, null
  br i1 %.not.i211, label %zend_hash_str_find_ptr.exit213, label %bb.y

bb.y:                                             ; preds = %zend_hash_find_ptr.exit
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !23, !nonnull !64, !noundef !64
  br label %zend_hash_str_find_ptr.exit213

zend_hash_str_find_ptr.exit213:                   ; preds = %zend_hash_find_ptr.exit, %bb.y
  %.0.i212 = phi ptr [ %i.by, %bb.y ], [ null, %zend_hash_find_ptr.exit ]
  %i.bz = load ptr, ptr %i.ax, align 8, !tbaa !113
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %.0.i212, ptr %i.ca, align 8, !tbaa !205
  %i.cb = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.bh, ptr noundef nonnull @.str.4, i64 noundef 4) #6 ; 2 uses
  %.not.i208 = icmp eq ptr %i.cb, null
  br i1 %.not.i208, label %zend_hash_str_find_ptr.exit210, label %bb.z

bb.z:                                             ; preds = %zend_hash_str_find_ptr.exit213
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !23, !nonnull !64, !noundef !64
  br label %zend_hash_str_find_ptr.exit210

zend_hash_str_find_ptr.exit210:                   ; preds = %zend_hash_str_find_ptr.exit213, %bb.z
  %.0.i209 = phi ptr [ %i.cc, %bb.z ], [ null, %zend_hash_str_find_ptr.exit213 ]
  %i.cd = load ptr, ptr %i.ax, align 8, !tbaa !113
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr %.0.i209, ptr %i.ce, align 8, !tbaa !206
  br label %bb.aa

bb.aa:                                            ; preds = %bb.t, %zend_hash_str_find_ptr.exit210, %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !114
  %.not169 = icmp eq ptr %i.cg, null
  br i1 %.not169, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ci = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.5, i64 noundef 9) #6 ; 2 uses
  %.not.i205 = icmp eq ptr %i.ci, null
  br i1 %.not.i205, label %zend_hash_str_find_ptr.exit207, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23, !nonnull !64, !noundef !64
  br label %zend_hash_str_find_ptr.exit207

zend_hash_str_find_ptr.exit207:                   ; preds = %bb.ab, %bb.ac
  %.0.i206 = phi ptr [ %i.cj, %bb.ac ], [ null, %bb.ab ]
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !114
  store ptr %.0.i206, ptr %i.ck, align 8, !tbaa !208
  %i.cl = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.6, i64 noundef 12) #6 ; 2 uses
  %.not.i202 = icmp eq ptr %i.cl, null
  br i1 %.not.i202, label %zend_hash_str_find_ptr.exit204, label %bb.ad

bb.ad:                                            ; preds = %zend_hash_str_find_ptr.exit207
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23, !nonnull !64, !noundef !64
  br label %zend_hash_str_find_ptr.exit204

zend_hash_str_find_ptr.exit204:                   ; preds = %zend_hash_str_find_ptr.exit207, %bb.ad
  %.0.i203 = phi ptr [ %i.cm, %bb.ad ], [ null, %zend_hash_str_find_ptr.exit207 ]
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !114
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %.0.i203, ptr %i.co, align 8, !tbaa !209
  %i.cp = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.ch, ptr noundef nonnull @.str.7, i64 noundef 9) #6 ; 2 uses
  %.not.i199 = icmp eq ptr %i.cp, null
  br i1 %.not.i199, label %zend_hash_str_find_ptr.exit201, label %bb.ae

bb.ae:                                            ; preds = %zend_hash_str_find_ptr.exit204
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !23, !nonnull !64, !noundef !64
  br label %zend_hash_str_find_ptr.exit201

zend_hash_str_find_ptr.exit201:                   ; preds = %zend_hash_str_find_ptr.exit204, %bb.ae
end_hunk_0
