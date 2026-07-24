inline.NumInlined: 11
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@prepf:bb.a
  store <8 x i8> <i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 81), align 1, !tbaa !8
  store i8 121, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 89), align 1, !tbaa !8
  store i8 122, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 90), align 2, !tbaa !8
  br label %.loopexit91

.loopexit91:                                      ; preds = %.preheader90.preheader, %.preheader93.preheader
  %i.ad = load i32, ptr @WORDBOUND, align 4, !tbaa !4
  %.not76 = icmp eq i32 %i.ad, 0
  br i1 %.not76, label %vector.body179, label %.preheader89

.preheader89:                                     ; preds = %.loopexit91
  %i.ae = tail call ptr @__ctype_b_loc() #19      ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.preheader89
  %indvars.iv134 = phi i64 [ 0, %.preheader89 ], [ %indvars.iv.next135.1, %bb.t ] ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %indvars.iv134
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !41
  %i.ai = and i16 %i.ah, 8
  %.not80 = icmp eq i16 %i.ai, 0
  br i1 %.not80, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr @tr, i64 %indvars.iv134
  store i8 -128, ptr %i.aj, align 2, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv.next135 = or disjoint i64 %indvars.iv134, 1 ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next135
  %i.am = load i16, ptr %i.al, align 2, !tbaa !41
  %i.an = and i16 %i.am, 8
  %.not80.1 = icmp eq i16 %i.an, 0
  br i1 %.not80.1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr @tr, i64 %indvars.iv.next135
  store i8 -128, ptr %i.ao, align 1, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next135.1 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %exitcond137.not.1 = icmp eq i64 %indvars.iv.next135.1, 128
  br i1 %exitcond137.not.1, label %vector.body179, label %bb.p, !llvm.loop !43

vector.body179:                                   ; preds = %.loopexit91, %bb.t
  %wide.load = load <16 x i8>, ptr @tr, align 16, !tbaa !8
  %wide.load181 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 16), align 16, !tbaa !8
  %i.ap = and <16 x i8> %wide.load, splat (i8 15)
  %i.aq = and <16 x i8> %wide.load181, splat (i8 15)
  store <16 x i8> %i.ap, ptr @tr1, align 16, !tbaa !8
  store <16 x i8> %i.aq, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 16), align 16, !tbaa !8
  %wide.load.1 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 32), align 16, !tbaa !8
  %wide.load181.1 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 48), align 16, !tbaa !8
  %i.ar = and <16 x i8> %wide.load.1, splat (i8 15)
  %i.as = and <16 x i8> %wide.load181.1, splat (i8 15)
  store <16 x i8> %i.ar, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 32), align 16, !tbaa !8
  store <16 x i8> %i.as, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 48), align 16, !tbaa !8
  %wide.load.2 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 64), align 16, !tbaa !8
  %wide.load181.2 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 80), align 16, !tbaa !8
  %i.at = and <16 x i8> %wide.load.2, splat (i8 15)
  %i.au = and <16 x i8> %wide.load181.2, splat (i8 15)
  store <16 x i8> %i.at, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 64), align 16, !tbaa !8
  store <16 x i8> %i.au, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 80), align 16, !tbaa !8
  %wide.load.3 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 96), align 16, !tbaa !8
  %wide.load181.3 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 112), align 16, !tbaa !8
  %i.av = and <16 x i8> %wide.load.3, splat (i8 15)
  %i.aw = and <16 x i8> %wide.load181.3, splat (i8 15)
  store <16 x i8> %i.av, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 96), align 16, !tbaa !8
  store <16 x i8> %i.aw, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 112), align 16, !tbaa !8
  %wide.load.4 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 128), align 16, !tbaa !8
  %wide.load181.4 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 144), align 16, !tbaa !8
  %i.ax = and <16 x i8> %wide.load.4, splat (i8 15)
  %i.ay = and <16 x i8> %wide.load181.4, splat (i8 15)
  store <16 x i8> %i.ax, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 128), align 16, !tbaa !8
  store <16 x i8> %i.ay, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 144), align 16, !tbaa !8
  %wide.load.5 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 160), align 16, !tbaa !8
  %wide.load181.5 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 176), align 16, !tbaa !8
  %i.az = and <16 x i8> %wide.load.5, splat (i8 15)
  %i.ba = and <16 x i8> %wide.load181.5, splat (i8 15)
  store <16 x i8> %i.az, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 160), align 16, !tbaa !8
  store <16 x i8> %i.ba, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 176), align 16, !tbaa !8
  %wide.load.6 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 192), align 16, !tbaa !8
  %wide.load181.6 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 208), align 16, !tbaa !8
  %i.bb = and <16 x i8> %wide.load.6, splat (i8 15)
  %i.bc = and <16 x i8> %wide.load181.6, splat (i8 15)
  store <16 x i8> %i.bb, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 192), align 16, !tbaa !8
  store <16 x i8> %i.bc, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 208), align 16, !tbaa !8
  %wide.load.7 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 224), align 16, !tbaa !8
  %wide.load181.7 = load <16 x i8>, ptr getelementptr inbounds nuw (i8, ptr @tr, i64 240), align 16, !tbaa !8
  %i.bd = and <16 x i8> %wide.load.7, splat (i8 15)
  %i.be = and <16 x i8> %wide.load181.7, splat (i8 15)
  store <16 x i8> %i.bd, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 224), align 16, !tbaa !8
  store <16 x i8> %i.be, ptr getelementptr inbounds nuw (i8, ptr @tr1, i64 240), align 16, !tbaa !8
  store i32 256, ptr @p_size, align 4, !tbaa !4
  %.not77.not106 = icmp samesign ugt i32 %.070.lcssa164, 1 ; 2 uses
  br i1 %.not77.not106, label %.lr.ph109.preheader, label %._crit_edge110.thread

.lr.ph109.preheader:                              ; preds = %vector.body179
  %wide.trip.count = zext nneg i32 %.070.lcssa164 to i64
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.v
  %indvars.iv142 = phi i64 [ 1, %.lr.ph109.preheader ], [ %indvars.iv.next143, %bb.v ] ; 3 uses
  %i.bf = phi i32 [ 256, %.lr.ph109.preheader ], [ %i.bn, %bb.v ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @patt, i64 %indvars.iv142
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !17
  %i.bi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #20 ; 2 uses
  %i.bj = trunc i64 %i.bi to i32                  ; 4 uses
  %i.bk = trunc i64 %i.bi to i8
  %i.bl = getelementptr inbounds nuw i8, ptr @pat_len, i64 %indvars.iv142
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !8
  %.not79 = icmp ne i32 %i.bj, 0
  %i.bm = icmp sgt i32 %i.bf, %i.bj
  %or.cond87 = select i1 %.not79, i1 %i.bm, i1 false
  br i1 %or.cond87, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph109
  store i32 %i.bj, ptr @p_size, align 4, !tbaa !4
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph109, %bb.u
  %i.bn = phi i32 [ %i.bf, %.lr.ph109 ], [ %i.bj, %bb.u ] ; 5 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count
  br i1 %exitcond145.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !44

._crit_edge110:                                   ; preds = %bb.v
  %i.bo = icmp sgt i32 %.0, 400
  %i.bp = icmp sgt i32 %i.bn, 2
  %or.cond = and i1 %i.bo, %i.bp
  br i1 %or.cond, label %.preheader88.preheader.sink.split, label %bb.w

._crit_edge110.thread:                            ; preds = %vector.body179
  %i.bq = icmp sgt i32 %.0, 400
  br i1 %i.bq, label %.preheader88.preheader.sink.split, label %.preheader88.preheader.thread

.preheader88.preheader.thread:                    ; preds = %._crit_edge110.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 -2, i64 4096, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !11
  br label %._crit_edge116

bb.w:                                             ; preds = %._crit_edge110
  %i.br = icmp eq i32 %i.bn, 1
  br i1 %i.br, label %.preheader88.preheader.sink.split, label %.preheader88.preheader

.preheader88.preheader.sink.split:                ; preds = %bb.w, %._crit_edge110, %._crit_edge110.thread
  %LONG.sink = phi ptr [ @LONG, %._crit_edge110 ], [ @LONG, %._crit_edge110.thread ], [ @SHORT, %bb.w ]
  %.ph = phi i32 [ %i.bn, %._crit_edge110 ], [ 256, %._crit_edge110.thread ], [ 1, %bb.w ]
  store i32 1, ptr %LONG.sink, align 4, !tbaa !4
  br label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.preheader.sink.split, %bb.w
  %i.bs = phi i32 [ %i.bn, %bb.w ], [ %.ph, %.preheader88.preheader.sink.split ]
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = add i8 %i.bt, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 %i.bu, i64 4096, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !11
  br i1 %.not77.not106, label %.lr.ph115.preheader, label %._crit_edge116

.lr.ph115.preheader:                              ; preds = %.preheader88.preheader
  %wide.trip.count155 = zext nneg i32 %.070.lcssa164 to i64
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %.lr.ph115
  %indvars.iv152 = phi i64 [ 1, %.lr.ph115.preheader ], [ %indvars.iv.next153, %.lr.ph115 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @patt, i64 %indvars.iv152
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !17
  %i.bx = trunc nuw nsw i64 %indvars.iv152 to i32
  tail call void @f_prep(i32 noundef %i.bx, ptr noundef %i.bw)
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !45

._crit_edge116:                                   ; preds = %.lr.ph115, %.preheader88.preheader.thread, %.preheader88.preheader
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local void @monkey1(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @p_size, align 4, !tbaa !4 ; 4 uses
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = add nsw i32 %i.a, -1                     ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = sext i32 %i.d to i64                     ; 3 uses
  %i.i = add nsw i64 %i.e, %i.h
  %.not157 = icmp sgt i64 %i.i, %i.b
  br i1 %.not157, label %._crit_edge162, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.k = load i32, ptr @LONG, align 4, !tbaa !4
  %.not101 = icmp eq i32 %i.k, 0
  %i.l = sub nsw i64 0, %i.h
  %i.m = trunc i32 %i.d to i8                     ; 3 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.a, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.n = icmp ult i32 %i.a, 4
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod205 = icmp ne i64 %xtraiter, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %.loopexit134
  %.067159 = phi ptr [ %i.g, %.lr.ph161 ], [ %.572, %.loopexit134 ] ; 9 uses
  %.081158 = phi ptr [ %i.j, %.lr.ph161 ], [ %i.fc, %.loopexit134 ] ; 17 uses
  %.081158178 = ptrtoint ptr %.081158 to i64
  %.067159179 = ptrtoint ptr %.067159 to i64
  %i.o = load i8, ptr %.081158, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 4
  %i.u = getelementptr inbounds i8, ptr %.081158, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %i.t, %i.z              ; 2 uses
  br i1 %.not101, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = shl nuw nsw i32 %i.aa, 4
  %i.ac = getelementptr inbounds i8, ptr %.081158, i64 -2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nuw nsw i32 %i.ab, %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.088 = phi i32 [ %i.ai, %bb.c ], [ %i.aa, %bb.b ]
  %i.aj = zext nneg i32 %.088 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @SHIFT1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8   ; 2 uses
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %.preheader137.preheader, label %.loopexit134

.preheader137.preheader:                          ; preds = %bb.d
  br i1 %i.n, label %.preheader137.epil.preheader, label %.preheader137

.preheader137:                                    ; preds = %.preheader137.preheader, %.preheader137
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader137 ], [ 0, %.preheader137.preheader ] ; 5 uses
  %.189145 = phi i32 [ %i.bw, %.preheader137 ], [ 0, %.preheader137.preheader ]
  %niter = phi i64 [ %niter.next.3, %.preheader137 ], [ 0, %.preheader137.preheader ]
  %i.an = sub nsw i64 0, %indvars.iv
  %i.ao = getelementptr inbounds i8, ptr %.081158, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = zext i8 %i.as to i32
  %i.au = shl i32 %.189145, 8
  %i.av = shl nuw nsw i32 %i.at, 4
  %i.aw = add i32 %i.au, %i.av
  %i.ax = xor i64 %indvars.iv, -1
  %i.ay = getelementptr inbounds i8, ptr %.081158, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i32
  %i.be = add i32 %i.aw, %i.bd
  %i.bf = sub nuw nsw i64 -2, %indvars.iv
  %i.bg = getelementptr inbounds i8, ptr %.081158, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !8
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl i32 %i.be, 8
  %i.bn = shl nuw nsw i32 %i.bl, 4
  %i.bo = add i32 %i.bm, %i.bn
  %i.bp = sub nuw nsw i64 -3, %indvars.iv
  %i.bq = getelementptr inbounds i8, ptr %.081158, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !8
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !8
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add i32 %i.bo, %i.bv                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader137, !llvm.loop !46

.unr-lcssa:                                       ; preds = %.preheader137
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader137.epil.preheader

.preheader137.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader137.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader137.preheader ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.189145.epil.init = phi i32 [ 0, %.preheader137.preheader ], [ %i.bw, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod205)
  br label %.preheader137.epil

.preheader137.epil:                               ; preds = %.preheader137.epil, %.preheader137.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.preheader137.epil ], [ %indvars.iv.epil.init, %.preheader137.epil.preheader ] ; 2 uses
  %.189145.epil = phi i32 [ %i.cf, %.preheader137.epil ], [ %.189145.epil.init, %.preheader137.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader137.epil ], [ 0, %.preheader137.epil.preheader ]
  %i.bx = shl i32 %.189145.epil, 4
  %i.by = sub nsw i64 0, %indvars.iv.epil
  %i.bz = getelementptr inbounds i8, ptr %.081158, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @tr1, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !8
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add i32 %i.bx, %i.ce                    ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader137.epil, !llvm.loop !47

.epilog-lcssa:                                    ; preds = %.preheader137.epil, %.unr-lcssa
  %.lcssa = phi i32 [ %i.bw, %.unr-lcssa ], [ %i.cf, %.preheader137.epil ]
  %i.cg = and i32 %.lcssa, 8191
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @HASH, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !11 ; 2 uses
  %.old4.not = icmp eq ptr %i.cj, null
  br i1 %.old4.not, label %.loopexit134, label %.preheader135

.preheader135:                                    ; preds = %.epilog-lcssa
  %i.ck = getelementptr inbounds i8, ptr %.081158, i64 %i.l ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @tr, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %.preheader135, %bb.t
  %.074 = phi ptr [ %i.cr, %bb.t ], [ %i.cj, %.preheader135 ] ; 2 uses
  %i.cp = load i32, ptr %.074, align 8, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %.074, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !16 ; 2 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr @patt, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !17 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !8
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @tr, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8
  %i.cz = icmp eq i8 %i.cy, %i.co
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.lr.ph ], [ 0, %bb.e ]
  %.075147 = phi ptr [ %i.da, %.lr.ph ], [ %i.ck, %bb.e ]
  %i.da = getelementptr inbounds nuw i8, ptr %.075147, i64 1 ; 2 uses
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv.next176
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @tr, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !8
  %i.dg = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @tr, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !8
  %i.dk = icmp eq i8 %i.df, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !48

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.dl = trunc nuw nsw i64 %indvars.iv.next176 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.091.lcssa = phi i32 [ 0, %bb.e ], [ %i.dl, %._crit_edge.loopexit ] ; 2 uses
  %.not103 = icmp slt i32 %.091.lcssa, %i.a
  br i1 %.not103, label %bb.t, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds i8, ptr @pat_len, i64 %i.cs
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8
  %i.do = zext i8 %i.dn to i32
  %.not104 = icmp samesign ult i32 %.091.lcssa, %i.do
  br i1 %.not104, label %bb.t, label %3

3:                                                ; preds = %bb.f
  %4 = icmp ugt ptr %.081158, %i.c
  br i1 %4, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %3
  %i.dp = load i32, ptr @num_of_matched, align 4, !tbaa !4
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr @num_of_matched, align 4, !tbaa !4
  %i.dr = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = load i32, ptr @SILENT, align 4
  %i.du = icmp ne i32 %i.dt, 0
  %or.cond = select i1 %i.ds, i1 true, i1 %i.du
  br i1 %or.cond, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dv = load i32, ptr @COUNT, align 4, !tbaa !4
  %.not105 = icmp eq i32 %i.dv, 0
  br i1 %.not105, label %bb.i, label %.preheader133

.preheader133:                                    ; preds = %bb.h, %.preheader133
  %.283 = phi ptr [ %i.dx, %.preheader133 ], [ %.081158, %bb.h ] ; 3 uses
  %i.dw = load i8, ptr %.283, align 1, !tbaa !8
  %.not115 = icmp eq i8 %i.dw, 10
  %i.dx = getelementptr inbounds nuw i8, ptr %.283, i64 1
  br i1 %.not115, label %.loopexit134, label %.preheader133, !llvm.loop !49

bb.i:                                             ; preds = %bb.h
  %i.dy = load i32, ptr @INVERSE, align 4, !tbaa !4
  %.not106 = icmp eq i32 %i.dy, 0
  %i.dz = load i32, ptr @FNAME, align 4, !tbaa !4
  %.not107 = icmp eq i32 %i.dz, 0                 ; 2 uses
  br i1 %.not106, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not107, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.l
  %.384 = phi ptr [ %i.eb, %bb.l ], [ %.081158, %.preheader ] ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %.384, i64 -1 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !8
  %.not108 = icmp eq i8 %i.ec, 10
  br i1 %.not108, label %.preheader132, label %bb.l, !llvm.loop !50

.preheader132:                                    ; preds = %bb.l
  %i.ed = load i8, ptr %.384, align 1, !tbaa !8   ; 2 uses
  %.not109153 = icmp eq i8 %i.ed, 10
  br i1 %.not109153, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %.preheader132, %.lr.ph154
  %i.ee = phi i8 [ %i.ek, %.lr.ph154 ], [ %i.ed, %.preheader132 ]
  %i.ef = phi ptr [ %i.ej, %.lr.ph154 ], [ %.384, %.preheader132 ]
  %i.eg = zext i8 %i.ee to i32
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ei = tail call noundef i32 @putc(i32 noundef %i.eg, ptr noundef %i.eh), !inline_history !24 ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 3 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !8   ; 2 uses
  %.not109 = icmp eq i8 %i.ek, 10
  br i1 %.not109, label %._crit_edge155, label %.lr.ph154, !llvm.loop !51

._crit_edge155:                                   ; preds = %.lr.ph154, %.preheader132
  %.lcssa142 = phi ptr [ %.384, %.preheader132 ], [ %i.ej, %.lr.ph154 ]
  %i.el = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.em = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.el), !inline_history !24 ; 0 uses
  br label %.loopexit134

bb.m:                                             ; preds = %bb.i
  br i1 %.not107, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @CurrentFileName) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %scevgep = getelementptr i8, ptr %.067159, i64 -1
  %i.eo = sub i64 %.081158178, %.067159179
  %scevgep180 = getelementptr i8, ptr %scevgep, i64 %i.eo
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv181 = phi ptr [ %scevgep182, %bb.p ], [ %scevgep180, %bb.o ] ; 2 uses
  %.586 = phi ptr [ %i.ep, %bb.p ], [ %.081158, %bb.o ]
  %i.ep = getelementptr inbounds i8, ptr %.586, i64 -1 ; 4 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !8
  %.not111 = icmp eq i8 %i.eq, 10
  %scevgep182 = getelementptr i8, ptr %indvars.iv181, i64 -1
  br i1 %.not111, label %bb.q, label %bb.p, !llvm.loop !52

bb.q:                                             ; preds = %bb.p
  %.not113 = icmp ult ptr %.067159, %i.ep
  br i1 %.not113, label %.lr.ph151, label %._crit_edge152.preheader

.lr.ph151:                                        ; preds = %bb.q, %.lr.ph151
  %.269149 = phi ptr [ %i.er, %.lr.ph151 ], [ %.067159, %bb.q ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.269149, i64 1 ; 2 uses
  %i.es = load i8, ptr %.269149, align 1, !tbaa !8
  %i.et = zext i8 %i.es to i32
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ev = tail call noundef i32 @putc(i32 noundef %i.et, ptr noundef %i.eu), !inline_history !24 ; 0 uses
  %exitcond183.not = icmp eq ptr %i.er, %indvars.iv181
  br i1 %exitcond183.not, label %bb.r, label %.lr.ph151, !llvm.loop !53

bb.r:                                             ; preds = %.lr.ph151
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.ex = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ew), !inline_history !24 ; 0 uses
  br label %._crit_edge152.preheader

._crit_edge152.preheader:                         ; preds = %bb.q, %bb.r
  br label %._crit_edge152

._crit_edge152:                                   ; preds = %._crit_edge152.preheader, %._crit_edge152
  %.687 = phi ptr [ %i.ey, %._crit_edge152 ], [ %i.ep, %._crit_edge152.preheader ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.687, i64 1 ; 3 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !8
  %.not114 = icmp eq i8 %i.ez, 10
  br i1 %.not114, label %bb.s, label %._crit_edge152, !llvm.loop !54

bb.s:                                             ; preds = %._crit_edge152
  %i.fa = getelementptr inbounds nuw i8, ptr %.687, i64 2
  br label %.loopexit134

bb.t:                                             ; preds = %bb.f, %._crit_edge
  %.not131 = icmp eq ptr %i.cr, null
  br i1 %.not131, label %.loopexit134, label %bb.e, !llvm.loop !55

.loopexit134:                                     ; preds = %bb.t, %.preheader133, %._crit_edge155, %bb.s, %.epilog-lcssa, %bb.d
  %.092 = phi i8 [ %i.al, %bb.d ], [ %i.m, %._crit_edge155 ], [ 1, %.epilog-lcssa ], [ %i.m, %.preheader133 ], [ %i.m, %bb.s ], [ 1, %bb.t ]
  %.9 = phi ptr [ %.081158, %bb.d ], [ %.lcssa142, %._crit_edge155 ], [ %.081158, %.epilog-lcssa ], [ %.283, %.preheader133 ], [ %i.ey, %bb.s ], [ %.081158, %bb.t ]
  %.572 = phi ptr [ %.067159, %bb.d ], [ %.067159, %._crit_edge155 ], [ %.067159, %.epilog-lcssa ], [ %.067159, %.preheader133 ], [ %i.fa, %bb.s ], [ %.067159, %bb.t ] ; 2 uses
  %i.fb = zext i8 %.092 to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %.9, i64 %i.fb ; 2 uses
  %.not = icmp ugt ptr %i.fc, %i.c
  br i1 %.not, label %._crit_edge162, label %bb.b, !llvm.loop !56

._crit_edge162:                                   ; preds = %.loopexit134, %bb.a
  %.067.lcssa = phi ptr [ %i.g, %bb.a ], [ %.572, %.loopexit134 ] ; 2 uses
  %i.fd = load i32, ptr @INVERSE, align 4, !tbaa !4
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = load i32, ptr @COUNT, align 4
  %i.fg = icmp ne i32 %i.ff, 0
  %or.cond3 = select i1 %i.fe, i1 true, i1 %i.fg
  %.not100164 = icmp ugt ptr %.067.lcssa, %i.c
  %or.cond167 = select i1 %or.cond3, i1 true, i1 %.not100164
  br i1 %or.cond167, label %.loopexit, label %.lr.ph166

.lr.ph166:                                        ; preds = %._crit_edge162, %.lr.ph166
  %.673165 = phi ptr [ %i.fh, %.lr.ph166 ], [ %.067.lcssa, %._crit_edge162 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.673165, i64 1 ; 2 uses
  %i.fi = load i8, ptr %.673165, align 1, !tbaa !8
  %i.fj = zext i8 %i.fi to i32
  %i.fk = load ptr, ptr @stdout, align 8, !tbaa !22
  %i.fl = tail call noundef i32 @putc(i32 noundef %i.fj, ptr noundef %i.fk), !inline_history !24 ; 0 uses
  %.not100 = icmp ugt ptr %i.fh, %i.c
  br i1 %.not100, label %.loopexit, label %.lr.ph166, !llvm.loop !57

.loopexit:                                        ; preds = %bb.g, %3, %.lr.ph166, %._crit_edge162
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @mgrep(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [17408 x i8], align 16            ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1023
  store i8 10, ptr %i.b, align 1, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 6 uses
  %i.d = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.c, i64 noundef 8192) #16 ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %i.g = phi i32 [ %i.bd, %bb.l ], [ %i.e, %bb.a ]
  %i.h = phi i64 [ %i.bc, %bb.l ], [ %i.d, %bb.a ] ; 4 uses
  %.03039 = phi i32 [ %spec.store.select, %bb.l ], [ 1023, %bb.a ] ; 3 uses
  %i.i = load i32, ptr @INVERSE, align 4, !tbaa !4
  %i.j = icmp ne i32 %i.i, 0
  %i.k = load i32, ptr @COUNT, align 4
  %i.l = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph.preheader.i, label %countline.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %total_line.promoted.i = load i32, ptr @total_line, align 4 ; 2 uses
  %wide.trip.count.i = and i64 %i.h, 2147483647
  %xtraiter = and i64 %i.h, 1
  %i.m = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.h, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 3 uses
  %i.n = phi i32 [ %total_line.promoted.i, %.lr.ph.preheader.i.new ], [ %i.y, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.p = load i8, ptr %i.o, align 2, !tbaa !8
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.b, label %.lr.ph.i.1

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.r, ptr @total_line, align 4, !tbaa !4
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.b, %.lr.ph.i
  %i.s = phi i32 [ %i.n, %.lr.ph.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 10
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.x = add nsw i32 %i.s, 1                      ; 2 uses
  store i32 %i.x, ptr @total_line, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.1
  %i.y = phi i32 [ %i.s, %.lr.ph.i.1 ], [ %i.x, %bb.c ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %countline.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

countline.exit.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %countline.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %countline.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %countline.exit.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ %total_line.promoted.i, %.lr.ph.preheader.i ], [ %i.y, %countline.exit.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %i.h to i1
  call void @llvm.assume(i1 %lcmp.mod60)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.epil.init
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = icmp eq i8 %i.aa, 10
  br i1 %i.ab, label %bb.e, label %countline.exit

bb.e:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ac = add nsw i32 %.epil.init, 1
  store i32 %i.ac, ptr @total_line, align 4, !tbaa !4
  br label %countline.exit

countline.exit:                                   ; preds = %countline.exit.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.epil.preheader, %.lr.ph
  %i.ad = add nuw nsw i32 %i.g, 1023              ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %countline.exit
  %.1 = phi i32 [ %i.ad, %countline.exit ], [ %i.ak, %bb.f ] ; 8 uses
  %i.ae = zext nneg i32 %.1 to i64                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = icmp ne i8 %i.ag, 10
  %i.ai = icmp sgt i32 %.1, 1024
  %i.aj = and i1 %i.ai, %i.ah
  %i.ak = add nsw i32 %.1, -1
  br i1 %i.aj, label %bb.f, label %bb.g, !llvm.loop !58

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %i.am = sub nsw i32 %i.ad, %.1                  ; 4 uses
  %i.an = add nsw i32 %i.am, 1
  %i.ao = sext i32 %.03039 to i64
  %i.ap = getelementptr i8, ptr %i.a, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  store i8 10, ptr %i.aq, align 1, !tbaa !8
  %i.ar = load i32, ptr @SHORT, align 4, !tbaa !4
  %.not32 = icmp eq i32 %i.ar, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @m_short(ptr noundef nonnull %i.a, i32 noundef %.03039, i32 noundef %.1)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @monkey1(ptr noundef nonnull %i.a, i32 noundef %.03039, i32 noundef %.1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = load i32, ptr @FILENAMEONLY, align 4, !tbaa !4
  %i.at = icmp ne i32 %i.as, 0
  %i.au = load i32, ptr @num_of_matched, align 4
  %i.av = icmp ne i32 %i.au, 0
  %or.cond3 = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName) ; 0 uses
  br label %._crit_edge.thread

bb.l:                                             ; preds = %bb.j
  %i.aw = sub nsw i32 1023, %i.am
  %i.ax = icmp sgt i32 %i.am, 1023
  %spec.store.select = select i1 %i.ax, i32 1, i32 %i.aw ; 5 uses
  %i.ay = sext i32 %spec.store.select to i64
  %i.az = getelementptr inbounds i8, ptr %i.a, i64 %i.ay
  %i.ba = sext i32 %i.an to i64
  %i.bb = call ptr @strncpy(ptr noundef nonnull %i.az, ptr noundef nonnull %i.al, i64 noundef %i.ba) #16 ; 0 uses
  %i.bc = call i64 @read(i32 noundef %0, ptr noundef nonnull %i.c, i64 noundef 8192) #16 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.l
  %i.bf = icmp sgt i32 %i.am, 0
  store i8 10, ptr %i.c, align 16, !tbaa !8
  %i.bg = sext i32 %spec.store.select to i64
  %i.bh = getelementptr i8, ptr %i.a, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  store i8 10, ptr %i.bi, align 1, !tbaa !8
  br i1 %i.bf, label %bb.m, label %._crit_edge.thread

bb.m:                                             ; preds = %._crit_edge
  %i.bj = load i32, ptr @SHORT, align 4, !tbaa !4
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @m_short(ptr noundef nonnull %i.a, i32 noundef %spec.store.select, i32 noundef %.1)
  br label %._crit_edge.thread

bb.o:                                             ; preds = %bb.m
  call void @monkey1(ptr noundef nonnull %i.a, i32 noundef %spec.store.select, i32 noundef %.1)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.o, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
