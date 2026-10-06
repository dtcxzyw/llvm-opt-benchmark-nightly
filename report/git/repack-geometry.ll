Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/repack-geometry?download=true
inline.NumInlined: 26
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pack_geometry_split:bb.a
  %i.n = load i32, ptr %i.e, align 4, !tbaa !95
  %i.o = tail call fastcc i32 @compute_pack_geometry_split(ptr noundef %i.j, i64 noundef %i.m, i32 noundef %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.o, ptr %i.p, align 8, !tbaa !59
  %i.q = load i32, ptr %i.h, align 8, !tbaa !58   ; 4 uses
  %.not15 = icmp eq i32 %i.q, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 3 uses
  %wide.trip.count = zext i32 %i.q to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.t = icmp eq i32 %i.q, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i32 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.epil.init
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.x = load i16, ptr %i.w, align 8
  %i.y = and i16 %i.x, 128
  %.not.epil = icmp eq i16 %i.y, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  store i8 1, ptr %i.s, align 1, !tbaa !96
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  ret void

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = and i16 %i.ac, 128
  %.not = icmp eq i16 %i.ad, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.s, align 1, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = and i16 %i.ai, 128
  %.not.1 = icmp eq i16 %i.aj, 0
  br i1 %.not.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.s, align 1, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !94
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @compute_pack_geometry_split(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not64 = icmp eq i32 %2, 0                     ; 2 uses
  %i.a = sext i32 %2 to i64                       ; 3 uses
  %i.b = add nsw i64 %1, -1                       ; 3 uses
  %cond.us.wide228 = icmp eq i64 %i.b, 0          ; 2 uses
  br i1 %.not64, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.b
  br i1 %cond.us.wide228, label %.preheader, label %.lr.ph227

.split.us.preheader:                              ; preds = %bb.b
  br i1 %cond.us.wide228, label %.preheader, label %.lr.ph230

.split.us:                                        ; preds = %pack_geometry_weight.exit68.us
  %i.c = add nsw i64 %i.d, -1                     ; 2 uses
  %cond.us.wide = icmp eq i64 %i.c, 0
  br i1 %cond.us.wide, label %.preheader, label %.lr.ph230

.lr.ph230:                                        ; preds = %.split.us.preheader, %.split.us
  %i.d = phi i64 [ %i.c, %.split.us ], [ %i.b, %.split.us.preheader ] ; 3 uses
  %indvars.iv148229 = phi i64 [ %i.d, %.split.us ], [ %1, %.split.us.preheader ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = add i64 %indvars.iv148229, 4294967294
  %i.h = and i64 %i.g, 4294967295
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = tail call i32 @open_pack_index(ptr noundef %i.f) #14
  %.not.i67.us = icmp eq i32 %i.k, 0
  br i1 %.not.i67.us, label %pack_geometry_weight.exit68.us, label %.split108.us

pack_geometry_weight.exit68.us:                   ; preds = %.lr.ph230
  %i.l = tail call i32 @open_pack_index(ptr noundef %i.j) #14
  %.not.i69.us = icmp eq i32 %i.l, 0
  br i1 %.not.i69.us, label %.split.us, label %.split111.us

.split:                                           ; preds = %pack_geometry_weight.exit70
  %i.m = add nsw i64 %i.n, -1                     ; 2 uses
  %cond.wide = icmp eq i64 %i.m, 0
  br i1 %cond.wide, label %.preheader, label %.lr.ph227

.lr.ph227:                                        ; preds = %.split.preheader, %.split
  %i.n = phi i64 [ %i.m, %.split ], [ %i.b, %.split.preheader ] ; 3 uses
  %indvars.iv226 = phi i64 [ %i.n, %.split ], [ %1, %.split.preheader ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 3 uses
  %i.q = add i64 %indvars.iv226, 4294967294
  %i.r = and i64 %i.q, 4294967295
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56   ; 6 uses
  %i.u = tail call i32 @open_pack_index(ptr noundef %i.t) #14
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %pack_geometry_weight.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph227
  %i.v = tail call fastcc ptr @_(ptr noundef nonnull @.str.7)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.v, ptr noundef nonnull %i.w) #15
  unreachable

pack_geometry_weight.exit:                        ; preds = %.lr.ph227
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !57
  %i.z = zext i32 %i.y to i64
  %i.aa = udiv i64 4294967295, %i.a
  %i.ab = icmp samesign ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %pack_geometry_weight.exit
  %i.ac = tail call fastcc ptr @_(ptr noundef nonnull @.str.9)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.ac, ptr noundef nonnull %i.ad) #15
  unreachable

bb.e:                                             ; preds = %pack_geometry_weight.exit
  %i.ae = tail call i32 @open_pack_index(ptr noundef %i.p) #14
  %.not.i67 = icmp eq i32 %i.ae, 0
  br i1 %.not.i67, label %pack_geometry_weight.exit68, label %.split108.us

.split108.us:                                     ; preds = %bb.e, %.lr.ph230
  %.us-phi109 = phi ptr [ %i.f, %.lr.ph230 ], [ %i.p, %bb.e ]
  %i.af = tail call fastcc ptr @_(ptr noundef nonnull @.str.7)
  %i.ag = getelementptr inbounds nuw i8, ptr %.us-phi109, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.af, ptr noundef nonnull %i.ag) #15
  unreachable

pack_geometry_weight.exit68:                      ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !57
  %i.aj = tail call i32 @open_pack_index(ptr noundef nonnull %i.t) #14
  %.not.i69 = icmp eq i32 %i.aj, 0
  br i1 %.not.i69, label %pack_geometry_weight.exit70, label %.split111.us

.split111.us:                                     ; preds = %pack_geometry_weight.exit68, %pack_geometry_weight.exit68.us
  %.us-phi112 = phi ptr [ %i.j, %pack_geometry_weight.exit68.us ], [ %i.t, %pack_geometry_weight.exit68 ]
  %i.ak = tail call fastcc ptr @_(ptr noundef nonnull @.str.7)
  %i.al = getelementptr inbounds nuw i8, ptr %.us-phi112, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.ak, ptr noundef nonnull %i.al) #15
  unreachable

pack_geometry_weight.exit70:                      ; preds = %pack_geometry_weight.exit68
  %i.am = load i32, ptr %i.x, align 8, !tbaa !57
  %i.an = mul i32 %i.am, %2
  %i.ao = icmp ult i32 %i.ai, %i.an
  br i1 %i.ao, label %.split106.us, label %.split

.split106.us:                                     ; preds = %pack_geometry_weight.exit70
  %i.ap = trunc nuw i64 %indvars.iv226 to i32
  br label %.lr.ph

.preheader:                                       ; preds = %.split, %pack_geometry_weight.exit74, %.split.us, %.split.preheader, %.split.us.preheader
  %.us-phi161 = phi i32 [ 0, %.split.us.preheader ], [ %i.ap, %pack_geometry_weight.exit74 ], [ 0, %.split.preheader ], [ 0, %.split.us ], [ 0, %.split ] ; 2 uses
  %.pre-phi = phi i64 [ 0, %.split.us.preheader ], [ %indvars.iv226, %pack_geometry_weight.exit74 ], [ 0, %.split.preheader ], [ 0, %.split.us ], [ 0, %.split ] ; 2 uses
  %.050.lcssa = phi i64 [ 0, %.split.us.preheader ], [ %i.bc, %pack_geometry_weight.exit74 ], [ 0, %.split.preheader ], [ 0, %.split.us ], [ 0, %.split ]
  %i.aq = icmp samesign ugt i64 %1, %.pre-phi
  br i1 %i.aq, label %.lr.ph118, label %.loopexit

.lr.ph118:                                        ; preds = %.preheader
  %3 = trunc nuw i64 %1 to i32
  br label %.lr.ph118.a

.lr.ph:                                           ; preds = %.split106.us, %pack_geometry_weight.exit74
  %indvars.iv152 = phi i64 [ 0, %.split106.us ], [ %indvars.iv.next153, %pack_geometry_weight.exit74 ] ; 2 uses
  %.050114 = phi i64 [ 0, %.split106.us ], [ %i.bc, %pack_geometry_weight.exit74 ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !56 ; 5 uses
  %i.at = tail call i32 @open_pack_index(ptr noundef %i.as) #14
  %.not.i71 = icmp eq i32 %i.at, 0
  br i1 %.not.i71, label %pack_geometry_weight.exit72, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.au = tail call fastcc ptr @_(ptr noundef nonnull @.str.7)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.au, ptr noundef nonnull %i.av) #15
  unreachable

pack_geometry_weight.exit72:                      ; preds = %.lr.ph
  %i.aw = tail call i32 @open_pack_index(ptr noundef %i.as) #14
  %.not.i73 = icmp eq i32 %i.aw, 0
  br i1 %.not.i73, label %pack_geometry_weight.exit74, label %bb.g

bb.g:                                             ; preds = %pack_geometry_weight.exit72
  %i.ax = tail call fastcc ptr @_(ptr noundef nonnull @.str.7)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.ax, ptr noundef nonnull %i.ay) #15
  unreachable

pack_geometry_weight.exit74:                      ; preds = %pack_geometry_weight.exit72
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !57
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %.050114, %i.bb         ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next153, %indvars.iv226
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !97

.lr.ph118.a:                                      ; preds = %.lr.ph118, %bb.o
  %i.bd = phi i64 [ %.pre-phi, %.lr.ph118 ], [ %i.cc, %bb.o ]
  %.151117 = phi i64 [ %.050.lcssa, %.lr.ph118 ], [ %i.cb, %bb.o ] ; 3 uses
  %.153116 = phi i32 [ %.us-phi161, %.lr.ph118 ], [ %i.by, %bb.o ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !56 ; 8 uses
  br i1 %.not64, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph118.a
  %i.bg = udiv i64 4294967295, %i.a
  %i.bh = icmp samesign ugt i64 %.151117, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = tail call fastcc ptr @_(ptr noundef nonnull @.str.10)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.bi, ptr noundef nonnull %i.bj) #15
  unreachable

bb.j:                                             ; preds = %bb.h, %.lr.ph118.a
  %i.bk = tail call i32 @open_pack_index(ptr noundef %i.bf) #14
  %.not.i75 = icmp eq i32 %i.bk, 0
  br i1 %.not.i75, label %pack_geometry_weight.exit76, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = tail call fastcc ptr @_(ptr noundef nonnull @.str.7)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.bl, ptr noundef nonnull %i.bm) #15
  unreachable

pack_geometry_weight.exit76:                      ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !57
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul nsw i64 %.151117, %i.a
  %i.br = icmp sgt i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %pack_geometry_weight.exit76
  %i.bs = tail call i32 @open_pack_index(ptr noundef nonnull %i.bf) #14
  %.not.i77 = icmp eq i32 %i.bs, 0
  br i1 %.not.i77, label %pack_geometry_weight.exit78, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = tail call fastcc ptr @_(ptr noundef nonnull @.str.7)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.bt, ptr noundef nonnull %i.bu) #15
  unreachable

pack_geometry_weight.exit78:                      ; preds = %bb.l
  %i.bv = tail call i32 @open_pack_index(ptr noundef nonnull %i.bf) #14
  %.not.i79 = icmp eq i32 %i.bv, 0
  br i1 %.not.i79, label %bb.o, label %bb.n

bb.n:                                             ; preds = %pack_geometry_weight.exit78
  %i.bw = tail call fastcc ptr @_(ptr noundef nonnull @.str.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 208
  tail call void (ptr, ...) @die(ptr noundef %i.bw, ptr noundef nonnull %i.bx) #15
  unreachable

bb.o:                                             ; preds = %pack_geometry_weight.exit78
  %i.by = add nuw i32 %.153116, 1                 ; 4 uses
  %i.bz = load i32, ptr %i.bn, align 8, !tbaa !57
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %.151117, %i.ca
  %i.cc = zext i32 %i.by to i64
  %4 = icmp ult i32 %i.by, %3
  br i1 %4, label %.lr.ph118.a, label %.loopexit, !llvm.loop !98

.loopexit:                                        ; preds = %bb.o, %pack_geometry_weight.exit76, %.preheader, %bb.a
  %.058 = phi i32 [ 0, %bb.a ], [ %.us-phi161, %.preheader ], [ %i.by, %bb.o ], [ %.153116, %pack_geometry_weight.exit76 ]
  ret i32 %.058
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @pack_geometry_preferred_pack(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 3 uses
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.f = zext i32 %i.b to i64
  %i.g = icmp ugt i32 %i.d, %i.b
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.h = zext i32 %i.d to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !47
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ugt i64 %i.k, %i.f
  br i1 %i.j, label %bb.c, label %.loopexit, !llvm.loop !99

bb.c:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv18 = phi i64 [ %i.h, %.lr.ph ], [ %i.k, %.preheader ]
  %i.k = add nsw i64 %indvars.iv18, -1            ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = load i16, ptr %i.n, align 8
  %i.p = and i16 %i.o, 1
  %.not14 = icmp eq i16 %i.p, 0
  br i1 %.not14, label %.preheader, label %..loopexit.loopexit_crit_edge, !llvm.loop !99

..loopexit.loopexit_crit_edge:                    ; preds = %bb.c
  br label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %..loopexit.loopexit_crit_edge, %bb.b, %bb.a
  %.011 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.m, %..loopexit.loopexit_crit_edge ], [ null, %.preheader.preheader ], [ null, %.preheader ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define dso_local void @pack_geometry_remove_redundant(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !58
  tail call fastcc void @remove_redundant_packs(ptr noundef %i.a, i32 noundef %i.c, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !59
  tail call fastcc void @remove_redundant_packs(ptr noundef %i.e, i32 noundef %i.g, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @remove_redundant_packs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.strbuf, align 8             ; 8 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.remove_redundant_packs.buf, i64 24, i1 false)
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 114
  %i.j = call ptr @hash_to_hex_algop(ptr noundef nonnull %i.i, ptr noundef %i.c) #14
  %i.k = call zeroext i1 @string_list_has_string(ptr noundef %2, ptr noundef %i.j) #14
  br i1 %i.k, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !51
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %.not9.i = icmp eq ptr %i.l, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.l, align 1, !tbaa !53
  br label %strbuf_setlen.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !53
  %.not10.i = icmp eq i8 %i.m, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.d, %bb.e
  %i.n = call ptr @pack_basename(ptr noundef nonnull %i.h) #14 ; 2 uses
  %i.o = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #16
  call void @strbuf_add(ptr noundef nonnull %6, ptr noundef nonnull %i.n, i64 noundef %i.o) #14
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %i.q = load i64, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp ult i64 %i.q, 5
  br i1 %i.r, label %strbuf_strip_suffix.exit, label %bb.g

bb.g:                                             ; preds = %strbuf_setlen.exit
  %i.s = add i64 %i.q, -5                         ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s ; 3 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = xor i32 %i.u, 1667330094
  %i.w = getelementptr i8, ptr %i.t, i64 4
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = xor i32 %i.y, 107
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.h, label %strbuf_strip_suffix.exit

bb.h:                                             ; preds = %bb.g
  store i64 %i.s, ptr %i.d, align 8, !tbaa !54
  %i.ad = load i64, ptr %6, align 8, !tbaa !55
  %spec.select.i.i = call i64 @llvm.usub.sat.i64(i64 %i.ad, i64 1)
  %i.ae = icmp ugt i64 %i.s, %spec.select.i.i
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.3, i32 noundef 167, ptr noundef nonnull @.str.4) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.p, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.t, align 1, !tbaa !53
  br label %strbuf_strip_suffix.exit

bb.l:                                             ; preds = %bb.j
  %i.af = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !53
  %.not10.i.i = icmp eq i8 %i.af, 0
  br i1 %.not10.i.i, label %strbuf_strip_suffix.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #15
  unreachable

strbuf_strip_suffix.exit:                         ; preds = %strbuf_setlen.exit, %bb.g, %bb.k, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = and i16 %i.ah, 2
  %.not = icmp eq i16 %i.ai, 0
  br i1 %.not, label %bb.n, label %bb.p

bb.n:                                             ; preds = %strbuf_strip_suffix.exit
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.ak = call zeroext i1 @string_list_has_string(ptr noundef nonnull %i.f, ptr noundef %i.aj) #14
  br i1 %i.ak, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %3, align 8, !tbaa !19
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !52
  call void @repack_remove_redundant_pack(ptr noundef %i.al, ptr noundef %4, ptr noundef %i.am, i1 noundef zeroext %5) #14
  br label %bb.p

bb.p:                                             ; preds = %strbuf_strip_suffix.exit, %bb.n, %bb.b, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.p, %bb.a
  call void @strbuf_release(ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @pack_geometry_release(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
end_hunk_0
