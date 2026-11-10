Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_tile?download=true
inline.NumInlined: 173
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ojph5local4tile8fill_tlmEPNS0_9param_tlmE:bb.a
  %lcmp.mod186.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod186.not, label %.preheader.preheader, label %.epil.preheader183

.epil.preheader183:                               ; preds = %.preheader.preheader.unr-lcssa, %.lr.ph106
  %indvars.iv141.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next142.3, %.preheader.preheader.unr-lcssa ]
  %.055104.epil.init = phi i32 [ 0, %.lr.ph106 ], [ %spec.select73.3, %.preheader.preheader.unr-lcssa ]
  %lcmp.mod188 = icmp ne i64 %xtraiter184, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader183
  %indvars.iv141.epil = phi i64 [ %indvars.iv141.epil.init, %.epil.preheader183 ], [ %indvars.iv.next142.epil, %bb.l ] ; 2 uses
  %.055104.epil = phi i32 [ %.055104.epil.init, %.epil.preheader183 ], [ %spec.select73.epil, %bb.l ]
  %epil.iter185 = phi i64 [ 0, %.epil.preheader183 ], [ %epil.iter185.next, %bb.l ]
  %i.cq = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %indvars.iv141.epil
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !99
  %spec.select73.epil = tail call i32 @llvm.umax.i32(i32 %.055104.epil, i32 %i.cs) ; 2 uses
  %indvars.iv.next142.epil = add nuw nsw i64 %indvars.iv141.epil, 1
  %epil.iter185.next = add i64 %epil.iter185, 1   ; 2 uses
  %epil.iter185.cmp.not = icmp eq i64 %epil.iter185.next, %xtraiter184
  br i1 %epil.iter185.cmp.not, label %.preheader.preheader, label %bb.l, !llvm.loop !130

.preheader.preheader:                             ; preds = %bb.l, %.preheader.preheader.unr-lcssa
  %spec.select73.lcssa = phi i32 [ %spec.select73.3, %.preheader.preheader.unr-lcssa ], [ %spec.select73.epil, %bb.l ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 134
  br label %.preheader

bb.m:                                             ; preds = %bb.m, %.lr.ph106.new
  %indvars.iv141 = phi i64 [ 0, %.lr.ph106.new ], [ %indvars.iv.next142.3, %bb.m ] ; 5 uses
  %.055104 = phi i32 [ 0, %.lr.ph106.new ], [ %spec.select73.3, %bb.m ]
  %niter190 = phi i64 [ 0, %.lr.ph106.new ], [ %niter190.next.3, %bb.m ]
  %i.cv = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %indvars.iv141
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !99
  %spec.select73 = tail call i32 @llvm.umax.i32(i32 %.055104, i32 %i.cx)
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %indvars.iv141
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !99
  %spec.select73.1 = tail call i32 @llvm.umax.i32(i32 %spec.select73, i32 %i.da)
  %i.db = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %indvars.iv141
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 152
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !99
  %spec.select73.2 = tail call i32 @llvm.umax.i32(i32 %spec.select73.1, i32 %i.dd)
  %i.de = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %indvars.iv141
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 208
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !99
  %spec.select73.3 = tail call i32 @llvm.umax.i32(i32 %spec.select73.2, i32 %i.dg) ; 3 uses
  %indvars.iv.next142.3 = add nuw nsw i64 %indvars.iv141, 4 ; 2 uses
  %niter190.next.3 = add i64 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i64 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %.preheader.preheader.unr-lcssa, label %bb.m, !llvm.loop !131

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge110
  %i.dh = phi i32 [ %i.dj, %._crit_edge110 ], [ %i.i, %.preheader.preheader ] ; 2 uses
  %i.di = phi i32 [ %i.dk, %._crit_edge110 ], [ 1, %.preheader.preheader ]
  %.053111 = phi i32 [ %i.dl, %._crit_edge110 ], [ 0, %.preheader.preheader ] ; 3 uses
  %.not120 = icmp eq i32 %i.di, 0
  br i1 %.not120, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %bb.o, %.preheader
  %i.dj = phi i32 [ %i.dh, %.preheader ], [ %i.dt, %bb.o ]
  %i.dk = phi i32 [ 0, %.preheader ], [ %i.dt, %bb.o ]
  %i.dl = add i32 %.053111, 1                     ; 2 uses
  %.not = icmp ugt i32 %i.dl, %spec.select73.lcssa
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !132

.lr.ph109:                                        ; preds = %.preheader, %bb.o
  %i.dm = phi i32 [ %i.dt, %bb.o ], [ %i.dh, %.preheader ]
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %bb.o ], [ 0, %.preheader ] ; 2 uses
  %i.dn = load ptr, ptr %i.ct, align 8, !tbaa !79
  %i.do = getelementptr inbounds nuw [56 x i8], ptr %i.dn, i64 %indvars.iv146 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !99
  %.not68 = icmp ugt i32 %.053111, %i.dq
  br i1 %.not68, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph109
  %i.dr = load i16, ptr %i.cu, align 2, !tbaa !67
  %i.ds = tail call noundef i32 @_ZNK4ojph5local9tile_comp13get_num_bytesEj(ptr noundef nonnull align 8 dereferenceable(52) %i.do, i32 noundef %.053111)
  tail call void @_ZN4ojph5local9param_tlm13set_next_pairEtj(ptr noundef nonnull align 8 dereferenceable(24) %1, i16 noundef zeroext %i.dr, i32 noundef %i.ds)
  %.pre149 = load i32, ptr %i.h, align 8, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph109, %bb.n
  %i.dt = phi i32 [ %i.dm, %.lr.ph109 ], [ %.pre149, %bb.n ] ; 4 uses
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = icmp samesign ult i64 %indvars.iv.next147, %i.du
  br i1 %i.dv, label %.lr.ph109, label %._crit_edge110, !llvm.loop !133

.loopexit:                                        ; preds = %bb.k, %._crit_edge, %._crit_edge101, %._crit_edge110, %.preheader75, %bb.f, %.preheader83, %bb.e, %bb.b
  ret void
}

declare void @_ZN4ojph5local9param_tlm13set_next_pairEtj(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK4ojph5local9tile_comp13get_num_bytesEj(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local4tile5flushEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"struct.ojph::point", align 8      ; 11 uses
  %3 = alloca %"struct.ojph::point", align 8      ; 13 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %4 = alloca %"struct.ojph::point", align 8      ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76   ; 3 uses
  %.not292 = icmp eq i32 %i.g, 0
  br i1 %.not292, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 5 uses
  %wide.trip.count = zext i32 %i.g to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.j = icmp ult i32 %i.g, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0155233.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod379)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.0155233.epil = phi i32 [ %.0155233.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !99
  %spec.select.epil = tail call i32 @llvm.umax.i32(i32 %.0155233.epil, i32 %i.m) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !134

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  %.0155.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.b ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !96
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.0155233 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !99
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.0155233, i32 %i.s)
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !99
  %spec.select.1 = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 %i.v)
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load i32, ptr %i.x, align 8, !tbaa !99
  %spec.select.2 = tail call i32 @llvm.umax.i32(i32 %spec.select.1, i32 %i.y)
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !99
  %spec.select.3 = tail call i32 @llvm.umax.i32(i32 %spec.select.2, i32 %i.ab) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !135

bb.d:                                             ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !75
  %i.af = tail call noundef zeroext i1 @_ZN4ojph5local9param_sot5writeEPNS_12outfile_baseEj(ptr noundef nonnull align 4 dereferenceable(10) %i.ac, ptr noundef %1, i32 noundef %i.ae)
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef 196737, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 573, ptr noundef nonnull @.str.8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i16 -27649, ptr %i.a, align 2, !tbaa !150
  %i.aj = load ptr, ptr %1, align 8, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 2)
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.ap = load ptr, ptr %i.ao, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef 196738, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 578, ptr noundef nonnull @.str.8)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !74
  switch i32 %i.ar, label %.loopexit [
    i32 0, label %bb.j
    i32 1, label %bb.j
    i32 2, label %.preheader227
    i32 3, label %.preheader230
    i32 4, label %.preheader231
  ]

.preheader231:                                    ; preds = %bb.i
  %i.as = load i32, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %.not293 = icmp eq i32 %i.as, 0
  br i1 %.not293, label %.loopexit, label %.lr.ph241

.lr.ph241:                                        ; preds = %.preheader231
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  br label %bb.au

.preheader230:                                    ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store i32 0, ptr %3, align 8, !tbaa !103
  store i32 0, ptr %i.aw, align 4, !tbaa !104
  %i.ay = load i32, ptr %i.f, align 8, !tbaa !76
  %.not294366 = icmp eq i32 %i.ay, 0
  br i1 %.not294366, label %.thread212, label %.preheader229.preheader

.preheader227:                                    ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bb = trunc i32 %.0155.lcssa to i8
  %i.bc = add i8 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  br label %bb.v

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.be = load i32, ptr %i.n, align 8, !tbaa !96
  switch i32 %i.be, label %bb.o [
    i32 0, label %.preheader221
    i32 1, label %.preheader224
  ]

.preheader224:                                    ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bh = trunc i32 %.0155.lcssa to i8
  %i.bi = add i8 %i.bh, 1
  %.pre333 = load i32, ptr %i.f, align 8, !tbaa !76
  br label %.preheader223

.preheader221:                                    ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load i32, ptr %i.f, align 8, !tbaa !76
  %.not299 = icmp eq i32 %i.bk, 0
  br i1 %.not299, label %.loopexit, label %.preheader220

.preheader220:                                    ; preds = %.preheader221, %._crit_edge286
  %i.bl = phi i32 [ %i.bm, %._crit_edge286 ], [ 1, %.preheader221 ]
  %.0153287 = phi i32 [ %i.bn, %._crit_edge286 ], [ 0, %.preheader221 ] ; 2 uses
  %.not300 = icmp eq i32 %i.bl, 0
  br i1 %.not300, label %._crit_edge286, label %.lr.ph285

._crit_edge286:                                   ; preds = %.lr.ph285, %.preheader220
  %i.bm = phi i32 [ 0, %.preheader220 ], [ %i.bq, %.lr.ph285 ]
  %i.bn = add i32 %.0153287, 1                    ; 2 uses
  %.not184 = icmp ugt i32 %i.bn, %.0155.lcssa
  br i1 %.not184, label %.loopexit, label %.preheader220, !llvm.loop !136

.lr.ph285:                                        ; preds = %.preheader220, %.lr.ph285
  %indvars.iv327 = phi i64 [ %indvars.iv.next328, %.lr.ph285 ], [ 0, %.preheader220 ] ; 2 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !79
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.bo, i64 %indvars.iv327
  call void @_ZN4ojph5local9tile_comp15write_precinctsEjPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.bp, i32 noundef %.0153287, ptr noundef %1)
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %i.bq = load i32, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %indvars.iv.next328, %i.br
  br i1 %i.bs, label %.lr.ph285, label %._crit_edge286, !llvm.loop !137

.preheader223:                                    ; preds = %.preheader224, %._crit_edge282
  %i.bt = phi i32 [ %.pre333, %.preheader224 ], [ %i.co, %._crit_edge282 ]
  %.0148283 = phi i32 [ 0, %.preheader224 ], [ %i.cp, %._crit_edge282 ] ; 4 uses
  %.not297 = icmp eq i32 %i.bt, 0
  br i1 %.not297, label %._crit_edge277, label %.lr.ph276

._crit_edge277:                                   ; preds = %.lr.ph276, %.preheader223
  %.0147.lcssa = phi i32 [ 0, %.preheader223 ], [ %i.bz, %.lr.ph276 ]
  %i.bu = trunc i32 %.0148283 to i8
  %i.bv = call noundef zeroext i1 @_ZN4ojph5local9param_sot5writeEPNS_12outfile_baseEjhh(ptr noundef nonnull align 4 dereferenceable(10) %i.bg, ptr noundef %1, i32 noundef %.0147.lcssa, i8 noundef zeroext %i.bu, i8 noundef zeroext %i.bi)
  br i1 %i.bv, label %bb.l, label %bb.k

.lr.ph276:                                        ; preds = %.preheader223, %.lr.ph276
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %.lr.ph276 ], [ 0, %.preheader223 ] ; 2 uses
  %.0147274 = phi i32 [ %i.bz, %.lr.ph276 ], [ 0, %.preheader223 ]
  %i.bw = load ptr, ptr %i.bf, align 8, !tbaa !79
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %indvars.iv321
  %i.by = call noundef i32 @_ZNK4ojph5local9tile_comp13get_num_bytesEj(ptr noundef nonnull align 8 dereferenceable(52) %i.bx, i32 noundef %.0148283)
  %i.bz = add i32 %i.by, %.0147274                ; 2 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %i.ca = load i32, ptr %i.f, align 8, !tbaa !76
  %i.cb = zext i32 %i.ca to i64
  %i.cc = icmp samesign ult i64 %indvars.iv.next322, %i.cb
  br i1 %i.cc, label %.lr.ph276, label %._crit_edge277, !llvm.loop !138

bb.k:                                             ; preds = %._crit_edge277
  %i.cd = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.cf = load ptr, ptr %i.ce, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 noundef 196739, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 601, ptr noundef nonnull @.str.8)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge277
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i16 -27649, ptr %i.b, align 2, !tbaa !150
  %i.cg = load ptr, ptr %1, align 8, !tbaa !53
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef i64 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 2)
  %.not183 = icmp eq i64 %i.cj, 0
  br i1 %.not183, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ck = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !53
  %i.cm = load ptr, ptr %i.cl, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, i32 noundef 196740, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 606, ptr noundef nonnull @.str.8)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cn = load i32, ptr %i.f, align 8, !tbaa !76
  %.not298 = icmp eq i32 %i.cn, 0
  br i1 %.not298, label %._crit_edge282, label %.lr.ph281

._crit_edge282:                                   ; preds = %.lr.ph281, %bb.n
  %i.co = phi i32 [ 0, %bb.n ], [ %i.cs, %.lr.ph281 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.cp = add i32 %.0148283, 1                    ; 2 uses
  %.not182 = icmp ugt i32 %i.cp, %.0155.lcssa
  br i1 %.not182, label %.loopexit, label %.preheader223, !llvm.loop !139

.lr.ph281:                                        ; preds = %bb.n, %.lr.ph281
  %indvars.iv324 = phi i64 [ %indvars.iv.next325, %.lr.ph281 ], [ 0, %bb.n ] ; 2 uses
  %i.cq = load ptr, ptr %i.bf, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %i.cq, i64 %indvars.iv324
  call void @_ZN4ojph5local9tile_comp15write_precinctsEjPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.cr, i32 noundef %.0148283, ptr noundef nonnull %1)
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %i.cs = load i32, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign ult i64 %indvars.iv.next325, %i.ct
  br i1 %i.cu, label %.lr.ph281, label %._crit_edge282, !llvm.loop !140

bb.o:                                             ; preds = %bb.j
  %i.cv = load i32, ptr %i.f, align 8, !tbaa !76  ; 3 uses
  %i.cw = add i32 %.0155.lcssa, 1
  %i.cx = mul i32 %i.cv, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.da = trunc i32 %i.cx to i8
  %.not301 = icmp eq i32 %i.cv, 0
  br i1 %.not301, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o, %._crit_edge290
  %i.db = phi i32 [ %i.dd, %._crit_edge290 ], [ %i.cv, %bb.o ] ; 2 uses
  %i.dc = phi i32 [ %i.de, %._crit_edge290 ], [ 1, %bb.o ]
  %.0144291 = phi i32 [ %i.df, %._crit_edge290 ], [ 0, %bb.o ] ; 5 uses
  %.not302 = icmp eq i32 %i.dc, 0
  br i1 %.not302, label %._crit_edge290, label %.lr.ph289

._crit_edge290:                                   ; preds = %bb.u, %.preheader
  %i.dd = phi i32 [ %i.db, %.preheader ], [ %i.ee, %bb.u ]
  %i.de = phi i32 [ 0, %.preheader ], [ %i.ee, %bb.u ]
  %i.df = add i32 %.0144291, 1                    ; 2 uses
  %.not179 = icmp ugt i32 %i.df, %.0155.lcssa
  br i1 %.not179, label %.loopexit, label %.preheader, !llvm.loop !141

.lr.ph289:                                        ; preds = %.preheader, %bb.u
  %i.dg = phi i32 [ %i.ee, %bb.u ], [ %i.db, %.preheader ]
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %bb.u ], [ 0, %.preheader ] ; 4 uses
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !79
  %i.di = getelementptr inbounds nuw [56 x i8], ptr %i.dh, i64 %indvars.iv330 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !99
  %.not180 = icmp ugt i32 %.0144291, %i.dk
  br i1 %.not180, label %bb.u, label %bb.p

bb.p:                                             ; preds = %.lr.ph289
  %i.dl = call noundef i32 @_ZNK4ojph5local9tile_comp13get_num_bytesEj(ptr noundef nonnull align 8 dereferenceable(52) %i.di, i32 noundef %.0144291)
  %i.dm = load i32, ptr %i.f, align 8, !tbaa !76
  %i.dn = mul i32 %i.dm, %.0144291
  %i.do = trunc nuw i64 %indvars.iv330 to i32
  %i.dp = add i32 %i.dn, %i.do
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = call noundef zeroext i1 @_ZN4ojph5local9param_sot5writeEPNS_12outfile_baseEjhh(ptr noundef nonnull align 4 dereferenceable(10) %i.cz, ptr noundef %1, i32 noundef %i.dl, i8 noundef zeroext %i.dq, i8 noundef zeroext %i.da)
  br i1 %i.dr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ds = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !53
  %i.du = load ptr, ptr %i.dt, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 noundef 196741, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 622, ptr noundef nonnull @.str.8)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i16 -27649, ptr %i.c, align 2, !tbaa !150
  %i.dv = load ptr, ptr %1, align 8, !tbaa !53
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef i64 %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 2)
  %.not181 = icmp eq i64 %i.dy, 0
  br i1 %.not181, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dz = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !53
  %i.eb = load ptr, ptr %i.ea, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, i32 noundef 196742, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 626, ptr noundef nonnull @.str.8)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ec = load ptr, ptr %i.cy, align 8, !tbaa !79
  %i.ed = getelementptr inbounds nuw [56 x i8], ptr %i.ec, i64 %indvars.iv330
  call void @_ZN4ojph5local9tile_comp15write_precinctsEjPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.ed, i32 noundef %.0144291, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %.pre334 = load i32, ptr %i.f, align 8, !tbaa !76
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph289, %bb.t
  %i.ee = phi i32 [ %i.dg, %.lr.ph289 ], [ %.pre334, %bb.t ] ; 4 uses
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = icmp samesign ult i64 %indvars.iv.next331, %i.ef
  br i1 %i.eg, label %.lr.ph289, label %._crit_edge290, !llvm.loop !142

bb.v:                                             ; preds = %.preheader227, %.critedge
  %.0142273 = phi i32 [ 0, %.preheader227 ], [ %i.fw, %.critedge ] ; 5 uses
  %i.eh = load i32, ptr %i.n, align 8, !tbaa !96
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %.preheader226, label %bb.aa

.preheader226:                                    ; preds = %bb.v
  %i.ej = load i32, ptr %i.f, align 8, !tbaa !76
  %.not295 = icmp eq i32 %i.ej, 0
  br i1 %.not295, label %._crit_edge261, label %.lr.ph260

._crit_edge261:                                   ; preds = %.lr.ph260, %.preheader226
  %.0141.lcssa = phi i32 [ 0, %.preheader226 ], [ %i.ep, %.lr.ph260 ]
  %i.ek = trunc i32 %.0142273 to i8
  %i.el = call noundef zeroext i1 @_ZN4ojph5local9param_sot5writeEPNS_12outfile_baseEjhh(ptr noundef nonnull align 4 dereferenceable(10) %i.ba, ptr noundef %1, i32 noundef %.0141.lcssa, i8 noundef zeroext %i.ek, i8 noundef zeroext %i.bc)
  br i1 %i.el, label %bb.x, label %bb.w

.lr.ph260:                                        ; preds = %.preheader226, %.lr.ph260
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %.lr.ph260 ], [ 0, %.preheader226 ] ; 2 uses
  %.0141258 = phi i32 [ %i.ep, %.lr.ph260 ], [ 0, %.preheader226 ]
  %i.em = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.en = getelementptr inbounds nuw [56 x i8], ptr %i.em, i64 %indvars.iv316
  %i.eo = call noundef i32 @_ZNK4ojph5local9tile_comp13get_num_bytesEj(ptr noundef nonnull align 8 dereferenceable(52) %i.en, i32 noundef %.0142273)
  %i.ep = add i32 %i.eo, %.0141258                ; 2 uses
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.eq = load i32, ptr %i.f, align 8, !tbaa !76
  %i.er = zext i32 %i.eq to i64
  %i.es = icmp samesign ult i64 %indvars.iv.next317, %i.er
  br i1 %i.es, label %.lr.ph260, label %._crit_edge261, !llvm.loop !143

bb.w:                                             ; preds = %._crit_edge261
  %i.et = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !53
  %i.ev = load ptr, ptr %i.eu, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.et, i32 noundef 196743, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 642, ptr noundef nonnull @.str.8)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i16 -27649, ptr %i.d, align 2, !tbaa !150
  %i.ew = load ptr, ptr %1, align 8, !tbaa !53
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef i64 %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 2)
  %.not178 = icmp eq i64 %i.ez, 0
  br i1 %.not178, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fa = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !53
  %i.fc = load ptr, ptr %i.fb, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i32 noundef 196744, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 647, ptr noundef nonnull @.str.8)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i32 0, ptr %2, align 8, !tbaa !103
  store i32 0, ptr %i.bd, align 4, !tbaa !104
  %i.fd = load i32, ptr %i.f, align 8, !tbaa !76
  %.not296367 = icmp eq i32 %i.fd, 0
  br i1 %.not296367, label %.critedge, label %.lr.ph269

._crit_edge270:                                   ; preds = %bb.af
  br i1 %.1139, label %bb.ag, label %.critedge

.lr.ph269:                                        ; preds = %bb.aa, %.lr.ph269.backedge
  %indvars.iv319 = phi i64 [ %indvars.iv319.be, %.lr.ph269.backedge ], [ 0, %bb.aa ] ; 3 uses
  %.0136266 = phi i32 [ %.0136266.be, %.lr.ph269.backedge ], [ 0, %bb.aa ] ; 2 uses
  %.0138265 = phi i1 [ %.0138265.be, %.lr.ph269.backedge ], [ false, %bb.aa ]
  %.sroa.0204.0264 = phi i32 [ %.sroa.0204.0264.be, %.lr.ph269.backedge ], [ 2147483647, %bb.aa ] ; 3 uses
  %.sroa.6206.0263 = phi i32 [ %.sroa.6206.0263.be, %.lr.ph269.backedge ], [ 2147483647, %bb.aa ] ; 4 uses
  %i.fe = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.ff = getelementptr inbounds nuw [56 x i8], ptr %i.fe, i64 %indvars.iv319
  %i.fg = call noundef zeroext i1 @_ZN4ojph5local9tile_comp21get_top_left_precinctEjRNS_5pointE(ptr noundef nonnull align 8 dereferenceable(52) %i.ff, i32 noundef %.0142273, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br i1 %i.fg, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %.lr.ph269
  %i.fh = load i32, ptr %i.bd, align 4, !tbaa !104 ; 2 uses
  %i.fi = icmp ult i32 %i.fh, %.sroa.6206.0263
  %i.fj = trunc nuw i64 %indvars.iv319 to i32     ; 2 uses
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fk = load i64, ptr %2, align 8, !tbaa !47    ; 2 uses
  %.sroa.0204.0.extract.trunc205 = trunc i64 %i.fk to i32
  %.sroa.6206.0.extract.shift207 = lshr i64 %i.fk, 32
  %.sroa.6206.0.extract.trunc208 = trunc nuw i64 %.sroa.6206.0.extract.shift207 to i32
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.fl = icmp eq i32 %i.fh, %.sroa.6206.0263
  %i.fm = load i32, ptr %2, align 8
  %i.fn = icmp ult i32 %i.fm, %.sroa.0204.0264
  %or.cond217 = select i1 %i.fl, i1 %i.fn, i1 false
  br i1 %or.cond217, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fo = load i64, ptr %2, align 8, !tbaa !47    ; 2 uses
  %.sroa.0204.0.extract.trunc = trunc i64 %i.fo to i32
  %.sroa.6206.0.extract.shift = lshr i64 %i.fo, 32
  %.sroa.6206.0.extract.trunc = trunc nuw i64 %.sroa.6206.0.extract.shift to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad, %.lr.ph269
  %.sroa.6206.1 = phi i32 [ %.sroa.6206.0.extract.trunc208, %bb.ac ], [ %.sroa.6206.0.extract.trunc, %bb.ae ], [ %.sroa.6206.0263, %.lr.ph269 ], [ %.sroa.6206.0263, %bb.ad ]
  %.sroa.0204.1 = phi i32 [ %.sroa.0204.0.extract.trunc205, %bb.ac ], [ %.sroa.0204.0.extract.trunc, %bb.ae ], [ %.sroa.0204.0264, %.lr.ph269 ], [ %.sroa.0204.0264, %bb.ad ]
  %.1139 = phi i1 [ true, %bb.ac ], [ true, %bb.ae ], [ %.0138265, %.lr.ph269 ], [ true, %bb.ad ] ; 2 uses
  %.1137 = phi i32 [ %i.fj, %bb.ac ], [ %i.fj, %bb.ae ], [ %.0136266, %.lr.ph269 ], [ %.0136266, %bb.ad ] ; 2 uses
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.fp = load i32, ptr %i.f, align 8, !tbaa !76
  %i.fq = zext i32 %i.fp to i64
  %i.fr = icmp samesign ult i64 %indvars.iv.next320, %i.fq
  br i1 %i.fr, label %.lr.ph269.backedge, label %._crit_edge270

.lr.ph269.backedge:                               ; preds = %bb.af, %bb.ag
  %indvars.iv319.be = phi i64 [ %indvars.iv.next320, %bb.af ], [ 0, %bb.ag ]
  %.0136266.be = phi i32 [ %.1137, %bb.af ], [ 0, %bb.ag ]
  %.0138265.be = phi i1 [ %.1139, %bb.af ], [ false, %bb.ag ]
  %.sroa.0204.0264.be = phi i32 [ %.sroa.0204.1, %bb.af ], [ 2147483647, %bb.ag ]
  %.sroa.6206.0263.be = phi i32 [ %.sroa.6206.1, %bb.af ], [ 2147483647, %bb.ag ]
  br label %.lr.ph269, !llvm.loop !144

bb.ag:                                            ; preds = %._crit_edge270
  %i.fs = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.ft = zext i32 %.1137 to i64
  %i.fu = getelementptr inbounds nuw [56 x i8], ptr %i.fs, i64 %i.ft
  call void @_ZN4ojph5local9tile_comp18write_one_precinctEjPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.fu, i32 noundef %.0142273, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i32 0, ptr %2, align 8, !tbaa !103
  store i32 0, ptr %i.bd, align 4, !tbaa !104
  %i.fv = load i32, ptr %i.f, align 8, !tbaa !76
  %.not296 = icmp eq i32 %i.fv, 0
  br i1 %.not296, label %.critedge, label %.lr.ph269.backedge

.critedge:                                        ; preds = %._crit_edge270, %bb.ag, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.fw = add i32 %.0142273, 1                    ; 2 uses
  %.not177 = icmp ugt i32 %i.fw, %.0155.lcssa
  br i1 %.not177, label %.loopexit, label %bb.v, !llvm.loop !145

.preheader229.preheader:                          ; preds = %.preheader230, %bb.at
  %.pre = load ptr, ptr %i.ax, align 8, !tbaa !79
  br label %.preheader229

.preheader229:                                    ; preds = %.preheader229.preheader, %bb.ah
  %i.fx = phi ptr [ %.pre, %.preheader229.preheader ], [ %i.gu, %bb.ah ]
  %indvars.iv314 = phi i64 [ 0, %.preheader229.preheader ], [ %indvars.iv.next315, %bb.ah ] ; 6 uses
  %.0127252 = phi i32 [ 0, %.preheader229.preheader ], [ %.2, %bb.ah ]
  %.0129251 = phi i32 [ 0, %.preheader229.preheader ], [ %.2131, %bb.ah ]
  %.0132250 = phi i1 [ false, %.preheader229.preheader ], [ %.2134, %bb.ah ]
  %.sroa.0190.0249 = phi i32 [ 2147483647, %.preheader229.preheader ], [ %.sroa.0190.2, %bb.ah ]
  %.sroa.10.0248 = phi i32 [ 2147483647, %.preheader229.preheader ], [ %.sroa.10.2, %bb.ah ]
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %i.fx, i64 %indvars.iv314
  %i.fz = trunc nuw i64 %indvars.iv314 to i32     ; 4 uses
  br label %bb.ai

._crit_edge254:                                   ; preds = %bb.ah
  br i1 %.2134, label %bb.at, label %.thread212

.thread212:                                       ; preds = %._crit_edge254, %bb.at, %.preheader230
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %.loopexit

bb.ah:                                            ; preds = %bb.as
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %i.ga = load i32, ptr %i.f, align 8, !tbaa !76
  %i.gb = zext i32 %i.ga to i64
  %i.gc = icmp samesign ult i64 %indvars.iv.next315, %i.gb
  br i1 %i.gc, label %.preheader229, label %._crit_edge254, !llvm.loop !146

bb.ai:                                            ; preds = %.preheader229, %bb.as
  %i.gd = phi ptr [ %i.fy, %.preheader229 ], [ %i.gv, %bb.as ]
  %.0125247 = phi i32 [ 0, %.preheader229 ], [ %i.gt, %bb.as ] ; 7 uses
  %.1128246 = phi i32 [ %.0127252, %.preheader229 ], [ %.2, %bb.as ] ; 4 uses
  %.1130245 = phi i32 [ %.0129251, %.preheader229 ], [ %.2131, %bb.as ] ; 4 uses
  %.1133244 = phi i1 [ %.0132250, %.preheader229 ], [ %.2134, %bb.as ]
  %.sroa.0190.1243 = phi i32 [ %.sroa.0190.0249, %.preheader229 ], [ %.sroa.0190.2, %bb.as ] ; 5 uses
  %.sroa.10.1242 = phi i32 [ %.sroa.10.0248, %.preheader229 ], [ %.sroa.10.2, %bb.as ] ; 5 uses
  %i.ge = call noundef zeroext i1 @_ZN4ojph5local9tile_comp21get_top_left_precinctEjRNS_5pointE(ptr noundef nonnull align 8 dereferenceable(52) %i.gd, i32 noundef %.0125247, ptr noundef nonnull align 4 dereferenceable(8) %3)
  br i1 %i.ge, label %bb.aj, label %bb.as

bb.aj:                                            ; preds = %bb.ai
  %i.gf = load i32, ptr %i.aw, align 4, !tbaa !104 ; 2 uses
  %i.gg = icmp ult i32 %i.gf, %.sroa.10.1242
  br i1 %i.gg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gh = load i64, ptr %3, align 8, !tbaa !47    ; 2 uses
  %.sroa.0190.0.extract.trunc195 = trunc i64 %i.gh to i32
  %.sroa.10.0.extract.shift200 = lshr i64 %i.gh, 32
  %.sroa.10.0.extract.trunc201 = trunc nuw i64 %.sroa.10.0.extract.shift200 to i32
  br label %bb.as

bb.al:                                            ; preds = %bb.aj
  %i.gi = icmp eq i32 %i.gf, %.sroa.10.1242
  br i1 %i.gi, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.gj = load i32, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.gk = icmp ult i32 %i.gj, %.sroa.0190.1243
  br i1 %i.gk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gl = load i64, ptr %3, align 8, !tbaa !47    ; 2 uses
  %.sroa.0190.0.extract.trunc194 = trunc i64 %i.gl to i32
  %.sroa.10.0.extract.shift198 = lshr i64 %i.gl, 32
  %.sroa.10.0.extract.trunc199 = trunc nuw i64 %.sroa.10.0.extract.shift198 to i32
  br label %bb.as

bb.ao:                                            ; preds = %bb.am
  %i.gm = icmp eq i32 %i.gj, %.sroa.0190.1243     ; 2 uses
  %i.gn = zext i32 %.1130245 to i64               ; 2 uses
  %i.go = icmp samesign ult i64 %indvars.iv314, %i.gn
  %or.cond = select i1 %i.gm, i1 %i.go, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gp = load i64, ptr %3, align 8, !tbaa !47    ; 2 uses
  %.sroa.0190.0.extract.trunc193 = trunc i64 %i.gp to i32
  %.sroa.10.0.extract.shift196 = lshr i64 %i.gp, 32
  %.sroa.10.0.extract.trunc197 = trunc nuw i64 %.sroa.10.0.extract.shift196 to i32
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.gq = icmp eq i64 %indvars.iv314, %i.gn
  %or.cond185 = select i1 %i.gm, i1 %i.gq, i1 false
  %i.gr = icmp ult i32 %.0125247, %.1128246
  %or.cond186 = select i1 %or.cond185, i1 %i.gr, i1 false
  br i1 %or.cond186, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gs = load i64, ptr %3, align 8, !tbaa !47    ; 2 uses
  %.sroa.0190.0.extract.trunc = trunc i64 %i.gs to i32
  %.sroa.10.0.extract.shift = lshr i64 %i.gs, 32
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.al, %bb.ak, %bb.ap, %bb.ar, %bb.aq, %bb.an, %bb.ai
  %.sroa.10.2 = phi i32 [ %.sroa.10.0.extract.trunc201, %bb.ak ], [ %.sroa.10.0.extract.trunc199, %bb.an ], [ %.sroa.10.0.extract.trunc197, %bb.ap ], [ %.sroa.10.0.extract.trunc, %bb.ar ], [ %.sroa.10.1242, %bb.aq ], [ %.sroa.10.1242, %bb.ai ], [ %.sroa.10.1242, %bb.al ] ; 2 uses
  %.sroa.0190.2 = phi i32 [ %.sroa.0190.0.extract.trunc195, %bb.ak ], [ %.sroa.0190.0.extract.trunc194, %bb.an ], [ %.sroa.0190.0.extract.trunc193, %bb.ap ], [ %.sroa.0190.0.extract.trunc, %bb.ar ], [ %.sroa.0190.1243, %bb.aq ], [ %.sroa.0190.1243, %bb.ai ], [ %.sroa.0190.1243, %bb.al ] ; 2 uses
  %.2134 = phi i1 [ true, %bb.ak ], [ true, %bb.an ], [ true, %bb.ap ], [ true, %bb.ar ], [ true, %bb.aq ], [ %.1133244, %bb.ai ], [ true, %bb.al ] ; 3 uses
  %.2131 = phi i32 [ %i.fz, %bb.ak ], [ %i.fz, %bb.an ], [ %i.fz, %bb.ap ], [ %i.fz, %bb.ar ], [ %.1130245, %bb.aq ], [ %.1130245, %bb.ai ], [ %.1130245, %bb.al ] ; 3 uses
  %.2 = phi i32 [ %.0125247, %bb.ak ], [ %.0125247, %bb.an ], [ %.0125247, %bb.ap ], [ %.0125247, %bb.ar ], [ %.1128246, %bb.aq ], [ %.1128246, %bb.ai ], [ %.1128246, %bb.al ] ; 3 uses
  %i.gt = add i32 %.0125247, 1                    ; 2 uses
  %i.gu = load ptr, ptr %i.ax, align 8, !tbaa !79 ; 3 uses
  %i.gv = getelementptr inbounds nuw [56 x i8], ptr %i.gu, i64 %indvars.iv314 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !99
  %.not176 = icmp ugt i32 %i.gt, %i.gx
  br i1 %.not176, label %bb.ah, label %bb.ai, !llvm.loop !147

bb.at:                                            ; preds = %._crit_edge254
  %i.gy = zext i32 %.2131 to i64
  %i.gz = getelementptr inbounds nuw [56 x i8], ptr %i.gu, i64 %i.gy
  call void @_ZN4ojph5local9tile_comp18write_one_precinctEjPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.gz, i32 noundef %.2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  store i32 0, ptr %3, align 8, !tbaa !103
  store i32 0, ptr %i.aw, align 4, !tbaa !104
  %i.ha = load i32, ptr %i.f, align 8, !tbaa !76
  %.not294 = icmp eq i32 %i.ha, 0
  br i1 %.not294, label %.thread212, label %.preheader229.preheader

bb.au:                                            ; preds = %.lr.ph241, %bb.bj
  %indvars.iv311 = phi i64 [ 0, %.lr.ph241 ], [ %indvars.iv.next312, %bb.bj ] ; 5 uses
  %i.hb = phi i32 [ %i.as, %.lr.ph241 ], [ %i.ii, %bb.bj ]
  %i.hc = load i32, ptr %i.n, align 8, !tbaa !96
  %i.hd = icmp eq i32 %i.hc, 2
  br i1 %i.hd, label %bb.av, label %.preheader376

bb.av:                                            ; preds = %bb.au
  %i.he = load ptr, ptr %i.at, align 8, !tbaa !79
  %i.hf = getelementptr inbounds nuw [56 x i8], ptr %i.he, i64 %indvars.iv311
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !102
  %i.hi = trunc i64 %indvars.iv311 to i8
  %i.hj = trunc i32 %i.hb to i8
  %i.hk = call noundef zeroext i1 @_ZN4ojph5local9param_sot5writeEPNS_12outfile_baseEjhh(ptr noundef nonnull align 4 dereferenceable(10) %i.au, ptr noundef %1, i32 noundef %i.hh, i8 noundef zeroext %i.hi, i8 noundef zeroext %i.hj)
  br i1 %i.hk, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !53
  %i.hn = load ptr, ptr %i.hm, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, i32 noundef 196746, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 717, ptr noundef nonnull @.str.8)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i16 -27649, ptr %i.e, align 2, !tbaa !150
  %i.ho = load ptr, ptr %1, align 8, !tbaa !53
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = call noundef i64 %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 2)
  %.not174 = icmp eq i64 %i.hr, 0
  br i1 %.not174, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hs = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !53
  %i.hu = load ptr, ptr %i.ht, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, i32 noundef 196747, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 722, ptr noundef nonnull @.str.8)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %.preheader376

.preheader376:                                    ; preds = %bb.az, %bb.au
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader376, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store i32 0, ptr %4, align 8, !tbaa !103
  store i32 0, ptr %i.av, align 4, !tbaa !104
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bh
  br i1 %.1123, label %bb.bi, label %bb.bj

bb.bc:                                            ; preds = %bb.ba, %bb.bh
  %.0239 = phi i32 [ 0, %bb.ba ], [ %i.if, %bb.bh ] ; 4 uses
  %.0121238 = phi i32 [ 0, %bb.ba ], [ %.1, %bb.bh ] ; 2 uses
  %.0122237 = phi i1 [ false, %bb.ba ], [ %.1123, %bb.bh ]
  %.sroa.0.0236 = phi i32 [ 2147483647, %bb.ba ], [ %.sroa.0.1, %bb.bh ] ; 3 uses
  %.sroa.6.0235 = phi i32 [ 2147483647, %bb.ba ], [ %.sroa.6.1, %bb.bh ] ; 4 uses
  %i.hv = load ptr, ptr %i.at, align 8, !tbaa !79
  %i.hw = getelementptr inbounds nuw [56 x i8], ptr %i.hv, i64 %indvars.iv311
  %i.hx = call noundef zeroext i1 @_ZN4ojph5local9tile_comp21get_top_left_precinctEjRNS_5pointE(ptr noundef nonnull align 8 dereferenceable(52) %i.hw, i32 noundef %.0239, ptr noundef nonnull align 4 dereferenceable(8) %4)
  br i1 %i.hx, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.hy = load i32, ptr %i.av, align 4, !tbaa !104 ; 2 uses
  %i.hz = icmp ult i32 %i.hy, %.sroa.6.0235
  br i1 %i.hz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ia = load i64, ptr %4, align 8, !tbaa !47    ; 2 uses
  %.sroa.0.0.extract.trunc187 = trunc i64 %i.ia to i32
  %.sroa.6.0.extract.shift188 = lshr i64 %i.ia, 32
  %.sroa.6.0.extract.trunc189 = trunc nuw i64 %.sroa.6.0.extract.shift188 to i32
  br label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  %i.ib = icmp eq i32 %i.hy, %.sroa.6.0235
  %i.ic = load i32, ptr %4, align 8
  %i.id = icmp ult i32 %i.ic, %.sroa.0.0236
  %or.cond219 = select i1 %i.ib, i1 %i.id, i1 false
  br i1 %or.cond219, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ie = load i64, ptr %4, align 8, !tbaa !47    ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ie to i32
  %.sroa.6.0.extract.shift = lshr i64 %i.ie, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bg, %bb.bf, %bb.bc
  %.sroa.6.1 = phi i32 [ %.sroa.6.0.extract.trunc189, %bb.be ], [ %.sroa.6.0.extract.trunc, %bb.bg ], [ %.sroa.6.0235, %bb.bc ], [ %.sroa.6.0235, %bb.bf ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.extract.trunc187, %bb.be ], [ %.sroa.0.0.extract.trunc, %bb.bg ], [ %.sroa.0.0236, %bb.bc ], [ %.sroa.0.0236, %bb.bf ]
  %.1123 = phi i1 [ true, %bb.be ], [ true, %bb.bg ], [ %.0122237, %bb.bc ], [ true, %bb.bf ] ; 2 uses
  %.1 = phi i32 [ %.0239, %bb.be ], [ %.0239, %bb.bg ], [ %.0121238, %bb.bc ], [ %.0121238, %bb.bf ] ; 2 uses
  %i.if = add i32 %.0239, 1                       ; 2 uses
  %.not175 = icmp ugt i32 %i.if, %.0155.lcssa
  br i1 %.not175, label %bb.bb, label %bb.bc, !llvm.loop !148

bb.bi:                                            ; preds = %bb.bb
  %i.ig = load ptr, ptr %i.at, align 8, !tbaa !79
  %i.ih = getelementptr inbounds nuw [56 x i8], ptr %i.ig, i64 %indvars.iv311
  call void @_ZN4ojph5local9tile_comp18write_one_precinctEjPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.ih, i32 noundef %.1, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.ba

bb.bj:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.ii = load i32, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.ij = zext i32 %i.ii to i64
  %i.ik = icmp samesign ult i64 %indvars.iv.next312, %i.ij
  br i1 %i.ik, label %bb.au, label %.loopexit, !llvm.loop !149

.loopexit:                                        ; preds = %bb.bj, %.critedge, %._crit_edge282, %._crit_edge286, %._crit_edge290, %bb.o, %.preheader221, %.preheader231, %.thread212, %bb.i
  ret void
}

declare noundef zeroext i1 @_ZN4ojph5local9param_sot5writeEPNS_12outfile_baseEj(ptr noundef nonnull align 4 dereferenceable(10), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4ojph5local9tile_comp15write_precinctsEjPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4ojph5local9param_sot5writeEPNS_12outfile_baseEjhh(ptr noundef nonnull align 4 dereferenceable(10), ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4ojph5local9tile_comp21get_top_left_precinctEjRNS_5pointE(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4ojph5local9tile_comp18write_one_precinctEjPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local4tile17parse_tile_headerERKNS0_9param_sotEPNS_11infile_baseERKm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(164) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(10) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 13 uses
  %4 = alloca %"struct.ojph::point", align 8      ; 12 uses
  %5 = alloca %"struct.ojph::point", align 8      ; 14 uses
  %6 = alloca %"struct.ojph::point", align 8      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4, !tbaa !68
  %i.d = zext i8 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !95
  %.not = icmp eq i32 %i.f, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.h = load i8, ptr %i.g, align 1, !tbaa !90, !range !88, !noundef !89
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN4ojph8get_infoEv() ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.l = load ptr, ptr %i.k, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 196753, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 761, ptr noundef nonnull @.str.9)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.o = load ptr, ptr %i.n, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef 196753, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 763, ptr noundef nonnull @.str.9)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.p = load i32, ptr %i.e, align 8, !tbaa !95
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !95
  %i.r = load i64, ptr %3, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !66   ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  %i.u = add i32 %i.t, -12
  %spec.select.i = select i1 %.not.i, i32 0, i32 %i.u ; 2 uses
  %i.v = zext i32 %spec.select.i to i64
  %i.w = add i64 %i.r, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.x = load ptr, ptr %2, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ab = load i64, ptr %3, align 8, !tbaa !45
  %.neg = sub i64 %i.ab, %i.aa
  %.neg135 = trunc i64 %.neg to i32
  %i.ac = add i32 %spec.select.i, %.neg135        ; 2 uses
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !47
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.bb, label %.preheader204

.preheader204:                                    ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !76 ; 7 uses
  %.not257 = icmp eq i32 %i.af, 0                 ; 3 uses
  br i1 %.not257, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader204
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79 ; 5 uses
  %wide.trip.count = zext i32 %i.af to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ai = icmp ult i32 %i.af, 4
  br i1 %i.ai, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0120217.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod331 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod331)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 2 uses
  %.0120217.epil = phi i32 [ %.0120217.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.ah, i64 %indvars.iv.epil
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !99
  %spec.select.epil = tail call i32 @llvm.umax.i32(i32 %.0120217.epil, i32 %i.al) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !151

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %.preheader204
  %.0120.lcssa = phi i32 [ 0, %.preheader204 ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.f ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.an = load i32, ptr %i.am, align 8, !tbaa !74
  switch i32 %i.an, label %.loopexit [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.l
    i32 3, label %.preheader195
    i32 4, label %.preheader202
  ]

.preheader202:                                    ; preds = %._crit_edge
  br i1 %.not257, label %.loopexit, label %.preheader201.lr.ph

.preheader201.lr.ph:                              ; preds = %.preheader202
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.preheader201

.preheader195:                                    ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store i32 0, ptr %5, align 8, !tbaa !103
  store i32 0, ptr %i.aq, align 4, !tbaa !104
  %.not259320 = icmp eq i32 %i.af, 0
  br i1 %.not259320, label %.thread178, label %.preheader189.preheader

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 5 uses
  %.0120217 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.3, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.ah, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !99
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.0120217, i32 %i.au)
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !99
  %spec.select.1 = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 %i.ax)
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.ah, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !99
  %spec.select.2 = tail call i32 @llvm.umax.i32(i32 %spec.select.1, i32 %i.ba)
  %i.bb = getelementptr inbounds nuw [56 x i8], ptr %i.ah, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !99
  %spec.select.3 = tail call i32 @llvm.umax.i32(i32 %spec.select.2, i32 %i.bd) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !152

bb.h:                                             ; preds = %._crit_edge, %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !77
  %i.bg = sub i32 %.0120.lcssa, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not257, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.h, %._crit_edge254
  %i.bi = phi i32 [ %i.bm, %._crit_edge254 ], [ %i.af, %bb.h ] ; 3 uses
  %i.bj = phi i32 [ %i.bn, %._crit_edge254 ], [ %i.af, %bb.h ] ; 2 uses
  %.0118255 = phi i32 [ %i.bo, %._crit_edge254 ], [ 0, %bb.h ] ; 2 uses
  %.not262 = icmp eq i32 %i.bj, 0
  br i1 %.not262, label %._crit_edge254, label %.lr.ph253

.lr.ph253:                                        ; preds = %.preheader
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !47
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %._crit_edge254, label %.lr.ph253.split

._crit_edge254:                                   ; preds = %bb.k, %.lr.ph253, %.preheader
  %i.bm = phi i32 [ %i.bi, %.lr.ph253 ], [ %i.bi, %.preheader ], [ %i.bu, %bb.k ]
  %i.bn = phi i32 [ %i.bj, %.lr.ph253 ], [ 0, %.preheader ], [ %i.bu, %bb.k ]
  %i.bo = add i32 %.0118255, 1                    ; 2 uses
  %.not144 = icmp ugt i32 %i.bo, %i.bg
  br i1 %.not144, label %.loopexit, label %.preheader, !llvm.loop !153

.lr.ph253.splitthread-pre-split:                  ; preds = %bb.k
  %.pr = load i32, ptr %i.a, align 4, !tbaa !47
  br label %.lr.ph253.split

.lr.ph253.split:                                  ; preds = %.lr.ph253, %.lr.ph253.splitthread-pre-split
  %i.bp = phi i32 [ %.pr, %.lr.ph253.splitthread-pre-split ], [ 1, %.lr.ph253 ]
  %i.bq = phi i32 [ %i.bu, %.lr.ph253.splitthread-pre-split ], [ %i.bi, %.lr.ph253 ]
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %.lr.ph253.splitthread-pre-split ], [ 0, %.lr.ph253 ] ; 2 uses
  %.not145 = icmp eq i32 %i.bp, 0
  br i1 %.not145, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph253.split
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !79
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.br, i64 %indvars.iv281
  invoke void @_ZN4ojph5local9tile_comp15parse_precinctsEjRjPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.bs, i32 noundef %.0118255, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %2)
          to label %._crit_edge286 unwind label %bb.j

._crit_edge286:                                   ; preds = %bb.i
  %.pre287 = load i32, ptr %i.ae, align 8, !tbaa !76
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  br label %bb.au

bb.k:                                             ; preds = %._crit_edge286, %.lr.ph253.split
  %i.bu = phi i32 [ %.pre287, %._crit_edge286 ], [ %i.bq, %.lr.ph253.split ] ; 4 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.next282, %i.bv
  br i1 %i.bw, label %.lr.ph253.splitthread-pre-split, label %._crit_edge254, !llvm.loop !154

bb.l:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !77
  %i.bz = sub i32 %.0120.lcssa, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.preheader187

.preheader187:                                    ; preds = %bb.l, %._crit_edge248.thread
  %i.cc = phi i32 [ %i.af, %bb.l ], [ %i.cw, %._crit_edge248.thread ]
  %.0108251 = phi i32 [ 0, %bb.l ], [ %i.cx, %._crit_edge248.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store i32 0, ptr %4, align 8, !tbaa !103
  store i32 0, ptr %i.ca, align 4, !tbaa !104
  %.not260321 = icmp eq i32 %i.cc, 0
  br i1 %.not260321, label %._crit_edge248.thread, label %.lr.ph247

._crit_edge248:                                   ; preds = %bb.r
  %i.cd = load i32, ptr %i.a, align 4
  %i.ce = icmp ne i32 %i.cd, 0
  %or.cond = select i1 %.1107, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.s, label %._crit_edge248.thread

.lr.ph247:                                        ; preds = %.preheader187, %.lr.ph247.backedge
  %indvars.iv279 = phi i64 [ %indvars.iv279.be, %.lr.ph247.backedge ], [ 0, %.preheader187 ] ; 3 uses
  %.0104244 = phi i32 [ %.0104244.be, %.lr.ph247.backedge ], [ 0, %.preheader187 ] ; 2 uses
  %.0106243 = phi i1 [ %.0106243.be, %.lr.ph247.backedge ], [ false, %.preheader187 ]
  %.sroa.0170.0242 = phi i32 [ %.sroa.0170.0242.be, %.lr.ph247.backedge ], [ 2147483647, %.preheader187 ] ; 3 uses
  %.sroa.7172.0241 = phi i32 [ %.sroa.7172.0241.be, %.lr.ph247.backedge ], [ 2147483647, %.preheader187 ] ; 4 uses
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !79
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.cf, i64 %indvars.iv279
  %i.ch = invoke noundef zeroext i1 @_ZN4ojph5local9tile_comp21get_top_left_precinctEjRNS_5pointE(ptr noundef nonnull align 8 dereferenceable(52) %i.cg, i32 noundef %.0108251, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph247
  br i1 %i.ch, label %bb.n, label %bb.r

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph247, %bb.s
  %lpad.loopexit.split-lp310 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.au

bb.n:                                             ; preds = %bb.m
  %i.ci = load i32, ptr %i.ca, align 4, !tbaa !104 ; 2 uses
  %i.cj = icmp ult i32 %i.ci, %.sroa.7172.0241
  %i.ck = trunc nuw i64 %indvars.iv279 to i32     ; 2 uses
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = load i64, ptr %4, align 8, !tbaa !47    ; 2 uses
  %.sroa.0170.0.extract.trunc171 = trunc i64 %i.cl to i32
  %.sroa.7172.0.extract.shift173 = lshr i64 %i.cl, 32
  %.sroa.7172.0.extract.trunc174 = trunc nuw i64 %.sroa.7172.0.extract.shift173 to i32
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cm = icmp eq i32 %i.ci, %.sroa.7172.0241
  %i.cn = load i32, ptr %4, align 8
  %i.co = icmp ult i32 %i.cn, %.sroa.0170.0242
  %or.cond183 = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond183, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cp = load i64, ptr %4, align 8, !tbaa !47    ; 2 uses
  %.sroa.0170.0.extract.trunc = trunc i64 %i.cp to i32
  %.sroa.7172.0.extract.shift = lshr i64 %i.cp, 32
  %.sroa.7172.0.extract.trunc = trunc nuw i64 %.sroa.7172.0.extract.shift to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.m
  %.sroa.7172.1 = phi i32 [ %.sroa.7172.0.extract.trunc174, %bb.o ], [ %.sroa.7172.0.extract.trunc, %bb.q ], [ %.sroa.7172.0241, %bb.m ], [ %.sroa.7172.0241, %bb.p ]
  %.sroa.0170.1 = phi i32 [ %.sroa.0170.0.extract.trunc171, %bb.o ], [ %.sroa.0170.0.extract.trunc, %bb.q ], [ %.sroa.0170.0242, %bb.m ], [ %.sroa.0170.0242, %bb.p ]
  %.1107 = phi i1 [ true, %bb.o ], [ true, %bb.q ], [ %.0106243, %bb.m ], [ true, %bb.p ] ; 2 uses
  %.1105 = phi i32 [ %i.ck, %bb.o ], [ %i.ck, %bb.q ], [ %.0104244, %bb.m ], [ %.0104244, %bb.p ] ; 2 uses
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.cq = load i32, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = icmp samesign ult i64 %indvars.iv.next280, %i.cr
  br i1 %i.cs, label %.lr.ph247.backedge, label %._crit_edge248

.lr.ph247.backedge:                               ; preds = %bb.r, %bb.t
  %indvars.iv279.be = phi i64 [ %indvars.iv.next280, %bb.r ], [ 0, %bb.t ]
  %.0104244.be = phi i32 [ %.1105, %bb.r ], [ 0, %bb.t ]
  %.0106243.be = phi i1 [ %.1107, %bb.r ], [ false, %bb.t ]
  %.sroa.0170.0242.be = phi i32 [ %.sroa.0170.1, %bb.r ], [ 2147483647, %bb.t ]
  %.sroa.7172.0241.be = phi i32 [ %.sroa.7172.1, %bb.r ], [ 2147483647, %bb.t ]
  br label %.lr.ph247, !llvm.loop !155

bb.s:                                             ; preds = %._crit_edge248
  %i.ct = zext i32 %.1105 to i64
  %i.cu = load ptr, ptr %i.cb, align 8, !tbaa !79
  %i.cv = getelementptr inbounds nuw [56 x i8], ptr %i.cu, i64 %i.ct
  invoke void @_ZN4ojph5local9tile_comp18parse_one_precinctEjRjPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.cv, i32 noundef %.0108251, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %2)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %.pre285 = load i32, ptr %i.ae, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store i32 0, ptr %4, align 8, !tbaa !103
  store i32 0, ptr %i.ca, align 4, !tbaa !104
  %.not260 = icmp eq i32 %.pre285, 0
  br i1 %.not260, label %._crit_edge248.thread, label %.lr.ph247.backedge

._crit_edge248.thread:                            ; preds = %._crit_edge248, %bb.t, %.preheader187
  %i.cw = phi i32 [ 0, %.preheader187 ], [ %i.cq, %._crit_edge248 ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.cx = add i32 %.0108251, 1                    ; 2 uses
  %.not141 = icmp ugt i32 %i.cx, %i.bz
  br i1 %.not141, label %.loopexit, label %.preheader187, !llvm.loop !156

.preheader189.preheader:                          ; preds = %.preheader195, %bb.ai
  %.pre284 = load ptr, ptr %i.ar, align 8, !tbaa !79
  br label %.preheader189

.preheader189:                                    ; preds = %.preheader189.preheader, %bb.u
  %i.cy = phi ptr [ %.pre284, %.preheader189.preheader ], [ %i.dx, %bb.u ]
  %indvars.iv277 = phi i64 [ 0, %.preheader189.preheader ], [ %indvars.iv.next278, %bb.u ] ; 6 uses
  %.095235 = phi i32 [ 0, %.preheader189.preheader ], [ %.2, %bb.u ]
  %.097234 = phi i32 [ 0, %.preheader189.preheader ], [ %.299, %bb.u ]
  %.0100233 = phi i1 [ false, %.preheader189.preheader ], [ %.2102, %bb.u ]
  %.sroa.0156.0232 = phi i32 [ 2147483647, %.preheader189.preheader ], [ %.sroa.0156.2, %bb.u ]
  %.sroa.11.0231 = phi i32 [ 2147483647, %.preheader189.preheader ], [ %.sroa.11.2, %bb.u ]
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %i.cy, i64 %indvars.iv277
  %i.da = trunc nuw i64 %indvars.iv277 to i32     ; 4 uses
  br label %bb.v

._crit_edge237:                                   ; preds = %bb.u
  %i.db = load i32, ptr %i.a, align 4
  %i.dc = icmp ne i32 %i.db, 0
  %or.cond3 = select i1 %.2102, i1 %i.dc, i1 false
  br i1 %or.cond3, label %bb.ah, label %.thread178

.thread178:                                       ; preds = %._crit_edge237, %bb.ai, %.preheader195
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %.loopexit

bb.u:                                             ; preds = %bb.ag
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.dd = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next278, %i.de
  br i1 %i.df, label %.preheader189, label %._crit_edge237, !llvm.loop !157

.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.ah
  %lpad.loopexit.split-lp324 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.au

bb.v:                                             ; preds = %.preheader189, %bb.ag
  %i.dg = phi ptr [ %i.cz, %.preheader189 ], [ %i.dy, %bb.ag ]
  %.093230 = phi i32 [ 0, %.preheader189 ], [ %i.dw, %bb.ag ] ; 7 uses
  %.196229 = phi i32 [ %.095235, %.preheader189 ], [ %.2, %bb.ag ] ; 4 uses
  %.198228 = phi i32 [ %.097234, %.preheader189 ], [ %.299, %bb.ag ] ; 4 uses
  %.1101227 = phi i1 [ %.0100233, %.preheader189 ], [ %.2102, %bb.ag ]
  %.sroa.0156.1226 = phi i32 [ %.sroa.0156.0232, %.preheader189 ], [ %.sroa.0156.2, %bb.ag ] ; 5 uses
  %.sroa.11.1225 = phi i32 [ %.sroa.11.0231, %.preheader189 ], [ %.sroa.11.2, %bb.ag ] ; 5 uses
  %i.dh = invoke noundef zeroext i1 @_ZN4ojph5local9tile_comp21get_top_left_precinctEjRNS_5pointE(ptr noundef nonnull align 8 dereferenceable(52) %i.dg, i32 noundef %.093230, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.w unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  br i1 %i.dh, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.di = load i32, ptr %i.aq, align 4, !tbaa !104 ; 2 uses
  %i.dj = icmp ult i32 %i.di, %.sroa.11.1225
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dk = load i64, ptr %5, align 8, !tbaa !47    ; 2 uses
  %.sroa.0156.0.extract.trunc161 = trunc i64 %i.dk to i32
  %.sroa.11.0.extract.shift166 = lshr i64 %i.dk, 32
  %.sroa.11.0.extract.trunc167 = trunc nuw i64 %.sroa.11.0.extract.shift166 to i32
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.dl = icmp eq i32 %i.di, %.sroa.11.1225
  br i1 %i.dl, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.dm = load i32, ptr %5, align 8, !tbaa !103   ; 2 uses
  %i.dn = icmp ult i32 %i.dm, %.sroa.0156.1226
  br i1 %i.dn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.do = load i64, ptr %5, align 8, !tbaa !47    ; 2 uses
  %.sroa.0156.0.extract.trunc160 = trunc i64 %i.do to i32
  %.sroa.11.0.extract.shift164 = lshr i64 %i.do, 32
  %.sroa.11.0.extract.trunc165 = trunc nuw i64 %.sroa.11.0.extract.shift164 to i32
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.dp = icmp eq i32 %i.dm, %.sroa.0156.1226     ; 2 uses
  %i.dq = zext i32 %.198228 to i64                ; 2 uses
  %i.dr = icmp samesign ult i64 %indvars.iv277, %i.dq
  %or.cond148 = select i1 %i.dp, i1 %i.dr, i1 false
  br i1 %or.cond148, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ds = load i64, ptr %5, align 8, !tbaa !47    ; 2 uses
  %.sroa.0156.0.extract.trunc159 = trunc i64 %i.ds to i32
  %.sroa.11.0.extract.shift162 = lshr i64 %i.ds, 32
  %.sroa.11.0.extract.trunc163 = trunc nuw i64 %.sroa.11.0.extract.shift162 to i32
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.dt = icmp eq i64 %indvars.iv277, %i.dq
  %or.cond149 = select i1 %i.dp, i1 %i.dt, i1 false
  %i.du = icmp ult i32 %.093230, %.196229
  %or.cond150 = select i1 %or.cond149, i1 %i.du, i1 false
  br i1 %or.cond150, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dv = load i64, ptr %5, align 8, !tbaa !47    ; 2 uses
  %.sroa.0156.0.extract.trunc = trunc i64 %i.dv to i32
  %.sroa.11.0.extract.shift = lshr i64 %i.dv, 32
  %.sroa.11.0.extract.trunc = trunc nuw i64 %.sroa.11.0.extract.shift to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.z, %bb.y, %bb.ad, %bb.af, %bb.ae, %bb.ab, %bb.w
  %.sroa.11.2 = phi i32 [ %.sroa.11.0.extract.trunc167, %bb.y ], [ %.sroa.11.0.extract.trunc165, %bb.ab ], [ %.sroa.11.0.extract.trunc163, %bb.ad ], [ %.sroa.11.0.extract.trunc, %bb.af ], [ %.sroa.11.1225, %bb.ae ], [ %.sroa.11.1225, %bb.w ], [ %.sroa.11.1225, %bb.z ] ; 2 uses
  %.sroa.0156.2 = phi i32 [ %.sroa.0156.0.extract.trunc161, %bb.y ], [ %.sroa.0156.0.extract.trunc160, %bb.ab ], [ %.sroa.0156.0.extract.trunc159, %bb.ad ], [ %.sroa.0156.0.extract.trunc, %bb.af ], [ %.sroa.0156.1226, %bb.ae ], [ %.sroa.0156.1226, %bb.w ], [ %.sroa.0156.1226, %bb.z ] ; 2 uses
  %.2102 = phi i1 [ true, %bb.y ], [ true, %bb.ab ], [ true, %bb.ad ], [ true, %bb.af ], [ true, %bb.ae ], [ %.1101227, %bb.w ], [ true, %bb.z ] ; 3 uses
  %.299 = phi i32 [ %i.da, %bb.y ], [ %i.da, %bb.ab ], [ %i.da, %bb.ad ], [ %i.da, %bb.af ], [ %.198228, %bb.ae ], [ %.198228, %bb.w ], [ %.198228, %bb.z ] ; 3 uses
  %.2 = phi i32 [ %.093230, %bb.y ], [ %.093230, %bb.ab ], [ %.093230, %bb.ad ], [ %.093230, %bb.af ], [ %.196229, %bb.ae ], [ %.196229, %bb.w ], [ %.196229, %bb.z ] ; 3 uses
  %i.dw = add i32 %.093230, 1                     ; 2 uses
  %i.dx = load ptr, ptr %i.ar, align 8, !tbaa !79 ; 2 uses
  %i.dy = getelementptr inbounds nuw [56 x i8], ptr %i.dx, i64 %indvars.iv277 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !99
  %.not138 = icmp ugt i32 %i.dw, %i.ea
  br i1 %.not138, label %bb.u, label %bb.v, !llvm.loop !158

bb.ah:                                            ; preds = %._crit_edge237
  %i.eb = zext i32 %.299 to i64
  %i.ec = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.ed = getelementptr inbounds nuw [56 x i8], ptr %i.ec, i64 %i.eb
  invoke void @_ZN4ojph5local9tile_comp18parse_one_precinctEjRjPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.ed, i32 noundef %.2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %2)
          to label %bb.ai unwind label %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store i32 0, ptr %5, align 8, !tbaa !103
  store i32 0, ptr %i.aq, align 4, !tbaa !104
  %.not259 = icmp eq i32 %.pre, 0
  br i1 %.not259, label %.thread178, label %.preheader189.preheader

.preheader201:                                    ; preds = %.preheader201.lr.ph, %bb.ax
  %indvars.iv274 = phi i64 [ 0, %.preheader201.lr.ph ], [ %indvars.iv.next275, %bb.ax ] ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader201, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  store i32 0, ptr %6, align 8, !tbaa !103
  store i32 0, ptr %i.ao, align 4, !tbaa !104
  br label %bb.al

bb.ak:                                            ; preds = %bb.ar
  %i.ee = load i32, ptr %i.a, align 4
  %i.ef = icmp ne i32 %i.ee, 0
  %or.cond5 = select i1 %.191, i1 %i.ef, i1 false
  br i1 %or.cond5, label %bb.as, label %bb.ax

bb.al:                                            ; preds = %bb.aj, %bb.ar
  %.0223 = phi i32 [ 0, %bb.aj ], [ %i.eq, %bb.ar ] ; 4 uses
  %.089222 = phi i32 [ 0, %bb.aj ], [ %.1, %bb.ar ] ; 2 uses
  %.090221 = phi i1 [ false, %bb.aj ], [ %.191, %bb.ar ]
  %.sroa.0.0220 = phi i32 [ 2147483647, %bb.aj ], [ %.sroa.0.1, %bb.ar ] ; 3 uses
  %.sroa.7.0219 = phi i32 [ 2147483647, %bb.aj ], [ %.sroa.7.1, %bb.ar ] ; 4 uses
  %i.eg = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.eh = getelementptr inbounds nuw [56 x i8], ptr %i.eg, i64 %indvars.iv274
  %i.ei = invoke noundef zeroext i1 @_ZN4ojph5local9tile_comp21get_top_left_precinctEjRNS_5pointE(ptr noundef nonnull align 8 dereferenceable(52) %i.eh, i32 noundef %.0223, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.am unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al
  br i1 %i.ei, label %bb.an, label %bb.ar

.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.al, %bb.as
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIPKc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.ej = load i32, ptr %i.ao, align 4, !tbaa !104 ; 2 uses
  %i.ek = icmp ult i32 %i.ej, %.sroa.7.0219
  br i1 %i.ek, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.el = load i64, ptr %6, align 8, !tbaa !47    ; 2 uses
  %.sroa.0.0.extract.trunc153 = trunc i64 %i.el to i32
  %.sroa.7.0.extract.shift154 = lshr i64 %i.el, 32
  %.sroa.7.0.extract.trunc155 = trunc nuw i64 %.sroa.7.0.extract.shift154 to i32
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.em = icmp eq i32 %i.ej, %.sroa.7.0219
  %i.en = load i32, ptr %6, align 8
  %i.eo = icmp ult i32 %i.en, %.sroa.0.0220
  %or.cond185 = select i1 %i.em, i1 %i.eo, i1 false
  br i1 %or.cond185, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ep = load i64, ptr %6, align 8, !tbaa !47    ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ep to i32
  %.sroa.7.0.extract.shift = lshr i64 %i.ep, 32
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.aq, %bb.ap, %bb.am
  %.sroa.7.1 = phi i32 [ %.sroa.7.0.extract.trunc155, %bb.ao ], [ %.sroa.7.0.extract.trunc, %bb.aq ], [ %.sroa.7.0219, %bb.am ], [ %.sroa.7.0219, %bb.ap ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.extract.trunc153, %bb.ao ], [ %.sroa.0.0.extract.trunc, %bb.aq ], [ %.sroa.0.0220, %bb.am ], [ %.sroa.0.0220, %bb.ap ]
  %.191 = phi i1 [ true, %bb.ao ], [ true, %bb.aq ], [ %.090221, %bb.am ], [ true, %bb.ap ] ; 2 uses
  %.1 = phi i32 [ %.0223, %bb.ao ], [ %.0223, %bb.aq ], [ %.089222, %bb.am ], [ %.089222, %bb.ap ] ; 2 uses
  %i.eq = add i32 %.0223, 1                       ; 2 uses
  %.not136 = icmp ugt i32 %i.eq, %.0120.lcssa
  br i1 %.not136, label %bb.ak, label %bb.al, !llvm.loop !159

bb.as:                                            ; preds = %bb.ak
  %i.er = load ptr, ptr %i.ap, align 8, !tbaa !79
  %i.es = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %indvars.iv274
  invoke void @_ZN4ojph5local9tile_comp18parse_one_precinctEjRjPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(52) %i.es, i32 noundef %.1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %2)
          to label %bb.at unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.aj

bb.au:                                            ; preds = %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %.pn146 = phi { ptr, i32 } [ %i.bt, %bb.j ], [ %lpad.loopexit.split-lp310, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp324, %.loopexit.split-lp191.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn146, 1
  %i.et = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIPKc) #6
  %i.eu = icmp eq i32 %.3, %i.et
  br i1 %i.eu, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %.3115 = extractvalue { ptr, i32 } %.pn146, 0
  %i.ev = call ptr @__cxa_begin_catch(ptr %.3115) #6
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !90, !range !88, !noundef !89
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ez = invoke noundef ptr @_ZN4ojph8get_infoEv()
          to label %.invoke unwind label %bb.ay

bb.ax:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.fa = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv.next275, %i.fb
  br i1 %i.fc, label %.preheader201, label %.loopexit, !llvm.loop !160

bb.ay:                                            ; preds = %.invoke, %bb.az, %bb.aw
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_end_catch() #6
  br label %bb.bc

bb.az:                                            ; preds = %bb.av
  %i.fe = invoke noundef ptr @_ZN4ojph9get_errorEv()
          to label %.invoke unwind label %bb.ay

.invoke:                                          ; preds = %bb.az, %bb.aw
  %.sink309 = phi ptr [ %i.ez, %bb.aw ], [ %i.fe, %bb.az ] ; 2 uses
  %i.ff = phi i32 [ 891, %bb.aw ], [ 893, %bb.az ]
  %i.fg = load ptr, ptr %.sink309, align 8, !tbaa !53
  %i.fh = load ptr, ptr %i.fg, align 8
  invoke void (ptr, i32, ptr, i32, ptr, ...) %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %.sink309, i32 noundef 196754, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef %i.ff, ptr noundef nonnull @.str.10, ptr noundef %i.ev)
          to label %bb.ba unwind label %bb.ay

bb.ba:                                            ; preds = %.invoke
  call void @__cxa_end_catch() #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ax, %._crit_edge248.thread, %._crit_edge254, %bb.h, %.preheader202, %.thread178, %._crit_edge, %bb.ba
  %i.fi = load ptr, ptr %2, align 8, !tbaa !53
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = call noundef i32 %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.w, i32 noundef 0) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.e, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void

bb.bc:                                            ; preds = %bb.ay, %bb.au
  %.merged = phi { ptr, i32 } [ %i.fd, %bb.ay ], [ %.pn146, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  resume { ptr, i32 } %.merged
}

declare noundef ptr @_ZN4ojph8get_infoEv() local_unnamed_addr #2

declare void @_ZN4ojph5local9tile_comp15parse_precinctsEjRjPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4ojph5local9tile_comp18parse_one_precinctEjRjPNS_11infile_baseE(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef ptr @_ZN4ojph5local9param_cod7get_cocEj(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"bool", !4, i64 0}
!11 = !{!"_ZTSN4ojph4sizeE", !5, i64 0, !5, i64 4}
!12 = !{!"p1 _ZTSN4ojph5local4tileE", !8, i64 0}
!13 = !{!"p1 _ZTSN4ojph8line_bufE", !8, i64 0}
!14 = !{!"p1 _ZTSN4ojph4sizeE", !8, i64 0}
!15 = !{!"short", !4, i64 0}
!16 = !{!"p1 _ZTSN4ojph5local13siz_comp_infoE", !8, i64 0}
!17 = !{!"p1 _ZTSN4ojph5local9param_codE", !8, i64 0}
!18 = !{!"p1 _ZTSN4ojph5local9param_dfsE", !8, i64 0}
!19 = !{!"_ZTSN4ojph5local9param_sizE", !15, i64 0, !15, i64 2, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !15, i64 36, !16, i64 40, !5, i64 48, !5, i64 52, !4, i64 56, !10, i64 68, !10, i64 69, !17, i64 72, !18, i64 80}
!20 = !{!"_ZTSN4ojph5local9param_cod8cod_typeE", !4, i64 0}
!21 = !{!"_ZTSN4ojph5local9cod_SGcodE", !4, i64 0, !15, i64 2, !4, i64 4}
!22 = !{!"_ZTSN4ojph5local9cod_SPcodE", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3, !4, i64 4, !4, i64 5}
!23 = !{!"p1 _ZTSN4ojph5local9param_atkE", !8, i64 0}
!24 = !{!"_ZTSN4ojph5local9param_codE", !20, i64 0, !15, i64 2, !4, i64 4, !21, i64 6, !22, i64 12, !17, i64 56, !23, i64 64, !17, i64 72, !15, i64 80, !17, i64 88}
!25 = !{!"_ZTSN4ojph5local9param_capE", !15, i64 0, !5, i64 4, !4, i64 8}
!26 = !{!"_ZTSN4ojph5local9param_qcd8qcd_typeE", !4, i64 0}
!27 = !{!"float", !4, i64 0}
!28 = !{!"p1 _ZTSN4ojph5local9param_qcdE", !8, i64 0}
!29 = !{!"_ZTSN4ojph5local9param_qcdE", !26, i64 0, !15, i64 2, !4, i64 4, !4, i64 6, !5, i64 200, !27, i64 204, !10, i64 208, !28, i64 216, !28, i64 224, !15, i64 232, !28, i64 240}
!30 = !{!"p1 _ZTSN4ojph5local9param_tlm14Ttlm_Ptlm_pairE", !8, i64 0}
!31 = !{!"_ZTSN4ojph5local9param_tlmE", !15, i64 0, !4, i64 2, !4, i64 3, !30, i64 8, !5, i64 16, !5, i64 20}
!32 = !{!"p1 _ZTSN4ojph5local9param_nltE", !8, i64 0}
!33 = !{!"_ZTSN4ojph5local9param_nltE", !15, i64 0, !15, i64 2, !4, i64 4, !4, i64 5, !10, i64 6, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSN4ojph5local9param_dfsE", !15, i64 0, !15, i64 2, !4, i64 4, !4, i64 5, !18, i64 16, !18, i64 24}
!35 = !{!"p1 _ZTSN4ojph5local12lifting_stepE", !8, i64 0}
!36 = !{!"_ZTSN4ojph5local9param_atkE", !15, i64 0, !15, i64 2, !27, i64 4, !4, i64 8, !35, i64 16, !5, i64 24, !4, i64 28, !23, i64 80, !23, i64 88, !23, i64 96}
!37 = !{!"p1 _ZTSN4ojph19mem_fixed_allocatorE", !8, i64 0}
!38 = !{!"p1 _ZTSN4ojph21mem_elastic_allocatorE", !8, i64 0}
!39 = !{!"p1 _ZTSN4ojph12outfile_baseE", !8, i64 0}
!40 = !{!"p1 _ZTSN4ojph11infile_baseE", !8, i64 0}
!41 = !{!"_ZTSN4ojph5local10codestreamE", !5, i64 0, !9, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !10, i64 28, !5, i64 32, !5, i64 36, !11, i64 40, !12, i64 48, !13, i64 56, !5, i64 64, !14, i64 72, !14, i64 80, !10, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !10, i64 104, !19, i64 112, !24, i64 200, !25, i64 296, !29, i64 368, !31, i64 616, !33, i64 640, !34, i64 664, !36, i64 696, !37, i64 800, !38, i64 808, !39, i64 816, !40, i64 824}
!42 = !{!41, !37, i64 800}
!43 = !{!19, !15, i64 36}
!44 = !{!"long", !4, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!41, !5, i64 100}
!47 = !{!5, !5, i64 0}
!48 = !{!24, !20, i64 0}
!49 = !{!24, !4, i64 12}
!50 = !{!24, !17, i64 72}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"vtable pointer", !3, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTSN4ojph5pointE", !5, i64 0, !5, i64 4}
!55 = !{!"_ZTSN4ojph4rectE", !54, i64 0, !11, i64 8}
!56 = !{!55, !5, i64 12}
!57 = !{!55, !5, i64 8}
!58 = !{!55, !5, i64 4}
!59 = !{!55, !5, i64 0}
!60 = !{!24, !4, i64 10}
!61 = !{!19, !16, i64 40}
!62 = !{!"_ZTSN4ojph5local13siz_comp_infoE", !4, i64 0, !4, i64 1, !4, i64 2}
!63 = !{!62, !4, i64 1}
!64 = !{!62, !4, i64 2}
!65 = !{!"_ZTSN4ojph5local9param_sotE", !15, i64 0, !15, i64 2, !5, i64 4, !4, i64 8, !4, i64 9}
!66 = !{!65, !5, i64 4}
!67 = !{!65, !15, i64 2}
!68 = !{!65, !4, i64 8}
!69 = !{!"p1 _ZTSN4ojph5local9tile_compE", !8, i64 0}
!70 = !{!"p1 bool", !8, i64 0}
!71 = !{!"p1 _ZTSN4ojph4rectE", !8, i64 0}
!72 = !{!"p1 int", !8, i64 0}
!73 = !{!"_ZTSN4ojph5local4tileE", !55, i64 0, !5, i64 16, !69, i64 24, !5, i64 32, !13, i64 40, !10, i64 48, !10, i64 49, !70, i64 56, !71, i64 64, !71, i64 72, !72, i64 80, !5, i64 88, !72, i64 96, !70, i64 104, !72, i64 112, !9, i64 120, !5, i64 128, !65, i64 132, !5, i64 144, !5, i64 148, !5, i64 152, !10, i64 156, !5, i64 160}
!74 = !{!73, !5, i64 128}
!75 = !{!73, !5, i64 160}
!76 = !{!73, !5, i64 16}
!77 = !{!73, !5, i64 88}
!78 = !{!8, !8, i64 0}
!79 = !{!73, !69, i64 24}
!80 = !{!73, !71, i64 64}
!81 = !{!73, !71, i64 72}
!82 = !{!73, !72, i64 80}
!83 = !{!73, !72, i64 96}
!84 = !{!73, !70, i64 104}
!85 = !{!73, !70, i64 56}
!86 = !{!73, !9, i64 120}
!87 = !{!73, !72, i64 112}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!73, !10, i64 49}
!91 = !{!73, !10, i64 48}
!92 = !{!10, !10, i64 0}
!93 = !{!4, !4, i64 0}
!94 = !{!73, !13, i64 40}
!95 = !{!73, !5, i64 144}
!96 = !{!73, !5, i64 152}
!97 = !{!"p1 _ZTSN4ojph5local10resolutionE", !8, i64 0}
!98 = !{!"_ZTSN4ojph5local9tile_compE", !12, i64 0, !97, i64 8, !55, i64 16, !54, i64 32, !5, i64 40, !5, i64 44, !5, i64 48}
!99 = !{!98, !5, i64 40}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!"llvm.loop.unswitch.partial.disable"}
!102 = !{!98, !5, i64 48}
!103 = !{!54, !5, i64 0}
!104 = !{!54, !5, i64 4}
!105 = distinct !{!105, !51}
!106 = distinct !{!106, !51}
!107 = distinct !{!107, !51}
!108 = distinct !{!108, !51}
!109 = distinct !{!109, !51}
!110 = distinct !{!110, !51}
!111 = !{!65, !15, i64 0}
!112 = !{!65, !4, i64 9}
!113 = !{!41, !5, i64 32}
!114 = !{!41, !10, i64 104}
!115 = !{!73, !10, i64 156}
!116 = !{!41, !10, i64 28}
!117 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 12, i64 4, !47}
!118 = !{!62, !4, i64 0}
!119 = !{!73, !5, i64 32}
!120 = distinct !{!120, !51}
!121 = distinct !{!121, !100}
!122 = distinct !{!122, !51}
!123 = distinct !{!123, !51}
!124 = distinct !{!124, !51}
!125 = distinct !{!125, !100}
!126 = distinct !{!126, !51}
!127 = distinct !{!127, !51, !101}
!128 = distinct !{!128, !51}
!129 = distinct !{!129, !51}
!130 = distinct !{!130, !100}
!131 = distinct !{!131, !51}
!132 = distinct !{!132, !51, !101}
!133 = distinct !{!133, !51}
!134 = distinct !{!134, !100}
!135 = distinct !{!135, !51}
!136 = distinct !{!136, !51, !101}
!137 = distinct !{!137, !51}
!138 = distinct !{!138, !51}
!139 = distinct !{!139, !51}
!140 = distinct !{!140, !51}
!141 = distinct !{!141, !51, !101}
!142 = distinct !{!142, !51}
!143 = distinct !{!143, !51}
!144 = distinct !{!144, !51}
!145 = distinct !{!145, !51}
!146 = distinct !{!146, !51}
!147 = distinct !{!147, !51}
!148 = distinct !{!148, !51}
!149 = distinct !{!149, !51}
!150 = !{!15, !15, i64 0}
!151 = distinct !{!151, !100}
!152 = distinct !{!152, !51}
!153 = distinct !{!153, !51, !101}
!154 = distinct !{!154, !51, !101}
!155 = distinct !{!155, !51}
!156 = distinct !{!156, !51}
!157 = distinct !{!157, !51}
!158 = distinct !{!158, !51}
!159 = distinct !{!159, !51}
!160 = distinct !{!160, !51}
end_hunk_0
