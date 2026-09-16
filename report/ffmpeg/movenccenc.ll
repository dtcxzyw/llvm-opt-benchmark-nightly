Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/movenccenc?download=true
inline.NumInlined: 28
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ff_mov_cenc_avc_parse_nal_units:bb.a
  br label %bb.c

bb.c:                                             ; preds = %auxiliary_info_add_subsample.exit, %bb.b
  %.036 = phi i32 [ 0, %bb.b ], [ %i.ay, %auxiliary_info_add_subsample.exit ] ; 3 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.p, %auxiliary_info_add_subsample.exit ] ; 3 uses
  %i.k = icmp ult ptr %.0, %i.c
  br i1 %i.k, label %.lr.ph, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.l = icmp ult ptr %i.m, %i.c
  br i1 %i.l, label %.lr.ph, label %.critedge, !llvm.loop !38

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.155 = phi ptr [ %i.m, %bb.d ], [ %.0, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.155, i64 1 ; 4 uses
  %i.n = load i8, ptr %.155, align 1, !tbaa !25
  %.not41 = icmp eq i8 %i.n, 0
  br i1 %.not41, label %bb.d, label %..critedge_crit_edge56, !llvm.loop !38

..critedge_crit_edge56:                           ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !38

.critedge:                                        ; preds = %bb.d, %..critedge_crit_edge56, %bb.c
  %.2 = phi ptr [ %i.m, %..critedge_crit_edge56 ], [ %.0, %bb.c ], [ %i.m, %bb.d ] ; 5 uses
  %i.o = icmp eq ptr %.2, %i.c
  br i1 %i.o, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.p = call ptr @ff_nal_find_startcode(ptr noundef %.2, ptr noundef %i.c) #7 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %.2 to i64                  ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  call void @avio_wb32(ptr noundef %1, i32 noundef %i.t) #7
  %i.u = load i8, ptr %.2, align 1, !tbaa !25
  %i.v = zext i8 %i.u to i32
  call void @avio_w8(ptr noundef %1, i32 noundef %i.v) #7
  %i.w = add i32 %i.t, -1                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.preheader, label %mov_cenc_write_encrypted.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.w, %.lr.ph.i.preheader ] ; 2 uses
  %.01314.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.y, %.lr.ph.i.preheader ] ; 2 uses
  %i.z = call i32 @llvm.umin.i32(i32 %.015.i, i32 4096) ; 4 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !27
  call void @av_aes_ctr_crypt(ptr noundef %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %.01314.i, i32 noundef %i.z) #7
  call void @avio_write(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.z) #7
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.01314.i, i64 %i.ab
  %i.ad = sub nuw nsw i32 %.015.i, %i.z           ; 2 uses
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %mov_cenc_write_encrypted.exit, label %.lr.ph.i, !llvm.loop !0

mov_cenc_write_encrypted.exit:                    ; preds = %.lr.ph.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !21
  %.not.i43 = icmp eq i32 %i.ae, 0
  br i1 %.not.i43, label %auxiliary_info_add_subsample.exit, label %bb.f

bb.f:                                             ; preds = %mov_cenc_write_encrypted.exit
  %i.af = load i64, ptr %i.g, align 8, !tbaa !22  ; 2 uses
  %i.ag = add i64 %i.af, 6                        ; 2 uses
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aj = shl i64 %i.ah, 1
  %..i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.aj) ; 2 uses
  %i.ak = call i32 @av_reallocp(ptr noundef nonnull %i.i, i64 noundef %..i.i) #7
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.h, label %auxiliary_info_add_subsample.exit

bb.h:                                             ; preds = %bb.g
  store i64 %..i.i, ptr %i.h, align 8, !tbaa !23
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.al = phi i64 [ %.pre.i, %bb.h ], [ %i.af, %bb.f ]
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 2 uses
  store i16 1280, ptr %i.an, align 1, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.w)
  store i32 %i.ap, ptr %i.ao, align 1, !tbaa !25
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !22
  %i.ar = add i64 %i.aq, 6
  store i64 %i.ar, ptr %i.g, align 8, !tbaa !22
  %i.as = load i16, ptr %i.j, align 8, !tbaa !26
  %i.at = add i16 %i.as, 1
  store i16 %i.at, ptr %i.j, align 8, !tbaa !26
  br label %auxiliary_info_add_subsample.exit

auxiliary_info_add_subsample.exit:                ; preds = %mov_cenc_write_encrypted.exit, %bb.g, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.r
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %.036, %i.ax
  br label %bb.c

bb.j:                                             ; preds = %.critedge
  %i.az = load ptr, ptr %0, align 8, !tbaa !27
  call void @av_aes_ctr_increment_iv(ptr noundef %i.az) #7
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !21
  %.not.i44 = icmp eq i32 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !29 ; 3 uses
  br i1 %.not.i44, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !29
  br label %mov_cenc_end_packet.exit

bb.l:                                             ; preds = %bb.j
  %i.be = zext i32 %i.bc to i64                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !30
  %.not18.i = icmp ugt i64 %i.bg, %i.be
  br i1 %.not18.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = shl i32 %i.bc, 1
  %i.bi = or disjoint i32 %i.bh, 1
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bl = call i32 @av_reallocp(ptr noundef nonnull %i.bk, i64 noundef %i.bj) #7
  %.not19.i = icmp eq i32 %i.bl, 0
  br i1 %.not19.i, label %bb.n, label %mov_cenc_end_packet.exit

bb.n:                                             ; preds = %bb.m
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !30
  %.pre.i46 = load i32, ptr %i.bb, align 8, !tbaa !29
  %.pre20.i = zext i32 %.pre.i46 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.pre-phi.i = phi i64 [ %.pre20.i, %bb.n ], [ %i.be, %bb.l ]
  %i.bm = load i64, ptr %i.g, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !31
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = trunc i64 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.pre-phi.i
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !25
  %i.bv = load i32, ptr %i.bb, align 8, !tbaa !29
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bb, align 8, !tbaa !29
  %i.bx = load i16, ptr %i.j, align 8, !tbaa !26
  %i.by = call i16 @llvm.bswap.i16(i16 %i.bx)
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.ca = load i64, ptr %i.bo, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i16 %i.by, ptr %i.cb, align 1, !tbaa !25
  br label %mov_cenc_end_packet.exit

mov_cenc_end_packet.exit:                         ; preds = %bb.m, %bb.k, %bb.o, %bb.a
  %.037 = phi i32 [ %i.d, %bb.a ], [ -12, %bb.m ], [ %.036, %bb.k ], [ %.036, %bb.o ]
  ret i32 %.037
}

declare ptr @ff_nal_find_startcode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avio_wb32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_w8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_mov_cenc_avc_write_nal_units(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %i.b = tail call fastcc i32 @mov_cenc_start_packet(ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.preheader, label %mov_cenc_end_packet.exit

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %.preheader
  %i.d = add nsw i32 %2, 1                        ; 3 uses
  %i.e = icmp sgt i32 %2, 0
  %i.f = trunc i32 %i.d to i16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = tail call i16 @llvm.bswap.i16(i16 %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %6 = add i32 %2, -1
  %7 = zext nneg i32 %6 to i64
  %xtraiter = and i32 %2, 3                       ; 3 uses
  %i.m = icmp ult i32 %2, 4
  %unroll_iter = and i32 %2, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod105 = icmp ne i32 %xtraiter, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %auxiliary_info_add_subsample.exit
  %.04065 = phi i32 [ %5, %.lr.ph66 ], [ %i.ay, %auxiliary_info_add_subsample.exit ] ; 4 uses
  %.04164 = phi ptr [ %4, %.lr.ph66 ], [ %i.ax, %auxiliary_info_add_subsample.exit ] ; 4 uses
  %.not50 = icmp sgt i32 %.04065, %2
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %.04065, i32 noundef %i.d) #7
  br label %mov_cenc_end_packet.exit

bb.d:                                             ; preds = %bb.b
  call void @avio_write(ptr noundef %3, ptr noundef %.04164, i32 noundef %i.d) #7
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.d
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.d
  %i.n = sub nsw i32 %.04065, %2
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.160 = phi ptr [ %i.o, %.lr.ph ], [ %.04164, %.lr.ph.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.160, i64 4 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !39

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.p = load i8, ptr %.160, align 1, !tbaa !25
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %.160, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.r, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.160, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !25
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = shl nuw i32 %i.aa, 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.160, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae            ; 2 uses
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.03961.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.af, %._crit_edge.unr-lcssa ]
  %.160.epil.init = phi ptr [ %.04164, %.lr.ph.preheader ], [ %i.o, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03961.epil = phi i32 [ %i.ak, %.lr.ph.epil ], [ %.03961.epil.init, %.lr.ph.epil.preheader ]
  %.160.epil = phi ptr [ %i.ah, %.lr.ph.epil ], [ %.160.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ag = shl i32 %.03961.epil, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.160.epil, i64 1
  %i.ai = load i8, ptr %.160.epil, align 1, !tbaa !25
  %i.aj = zext i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ag, %i.aj            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i32 [ %i.af, %._crit_edge.unr-lcssa ], [ %i.ak, %.lr.ph.epil ] ; 6 uses
  %8 = getelementptr i8, ptr %.04164, i64 %7      ; 2 uses
  %scevgep = getelementptr i8, ptr %8, i64 1
  %i.al = sub nsw i32 %.04065, %2                 ; 3 uses
  %i.am = icmp slt i32 %.lcssa, 1
  %i.an = icmp sgt i32 %.lcssa, %i.al
  %or.cond = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge.thread
  %i.ao = phi i32 [ %i.n, %._crit_edge.thread ], [ %i.al, %._crit_edge ]
  %.039.lcssa85 = phi i32 [ 0, %._crit_edge.thread ], [ %.lcssa, %._crit_edge ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %.039.lcssa85, i32 noundef %i.ao) #7
  br label %mov_cenc_end_packet.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ap = add nsw i32 %.lcssa, -1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not55 = icmp eq i32 %i.ap, 0
  br i1 %.not55, label %mov_cenc_write_encrypted.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %8, i64 2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.015.i = phi i32 [ %i.av, %.lr.ph.i ], [ %i.ap, %.lr.ph.i.preheader ] ; 2 uses
  %.01314.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.aq, %.lr.ph.i.preheader ] ; 2 uses
  %i.ar = call i32 @llvm.umin.i32(i32 %.015.i, i32 4096) ; 4 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !27
  call void @av_aes_ctr_crypt(ptr noundef %i.as, ptr noundef nonnull %i.a, ptr noundef nonnull %.01314.i, i32 noundef %i.ar) #7
  call void @avio_write(ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %i.ar) #7
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.01314.i, i64 %i.at
  %i.av = sub nuw nsw i32 %.015.i, %i.ar          ; 2 uses
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %mov_cenc_write_encrypted.exit, label %.lr.ph.i, !llvm.loop !0

mov_cenc_write_encrypted.exit:                    ; preds = %.lr.ph.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.aw = zext nneg i32 %.lcssa to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %scevgep, i64 %i.aw
  %i.ay = sub nuw nsw i32 %i.al, %.lcssa          ; 2 uses
  %i.az = load i32, ptr %i.g, align 4, !tbaa !21
  %.not.i51 = icmp eq i32 %i.az, 0
  br i1 %.not.i51, label %auxiliary_info_add_subsample.exit, label %bb.f

bb.f:                                             ; preds = %mov_cenc_write_encrypted.exit
  %i.ba = load i64, ptr %i.h, align 8, !tbaa !22  ; 2 uses
  %i.bb = add i64 %i.ba, 6                        ; 2 uses
  %i.bc = load i64, ptr %i.i, align 8, !tbaa !23  ; 2 uses
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = shl i64 %i.bc, 1
  %..i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.be) ; 2 uses
  %i.bf = call i32 @av_reallocp(ptr noundef nonnull %i.j, i64 noundef %..i.i) #7
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %bb.h, label %auxiliary_info_add_subsample.exit

bb.h:                                             ; preds = %bb.g
  store i64 %..i.i, ptr %i.i, align 8, !tbaa !23
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.bg = phi i64 [ %.pre.i, %bb.h ], [ %i.ba, %bb.f ]
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg ; 2 uses
  store i16 %i.k, ptr %i.bi, align 1, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = call i32 @llvm.bswap.i32(i32 %i.ap)
  store i32 %i.bk, ptr %i.bj, align 1, !tbaa !25
  %i.bl = load i64, ptr %i.h, align 8, !tbaa !22
  %i.bm = add i64 %i.bl, 6
  store i64 %i.bm, ptr %i.h, align 8, !tbaa !22
  %i.bn = load i16, ptr %i.l, align 8, !tbaa !26
  %i.bo = add i16 %i.bn, 1
  store i16 %i.bo, ptr %i.l, align 8, !tbaa !26
  br label %auxiliary_info_add_subsample.exit

auxiliary_info_add_subsample.exit:                ; preds = %mov_cenc_write_encrypted.exit, %bb.g, %bb.i
  %i.bp = icmp sgt i32 %i.ay, 0
  br i1 %i.bp, label %bb.b, label %._crit_edge67, !llvm.loop !41

._crit_edge67:                                    ; preds = %auxiliary_info_add_subsample.exit, %.preheader
  %i.bq = load ptr, ptr %1, align 8, !tbaa !27
  call void @av_aes_ctr_increment_iv(ptr noundef %i.bq) #7
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !21
  %.not.i52 = icmp eq i32 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !29 ; 3 uses
  br i1 %.not.i52, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge67
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !29
  br label %mov_cenc_end_packet.exit

bb.k:                                             ; preds = %._crit_edge67
  %i.bw = zext i32 %i.bu to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !30
  %.not18.i = icmp ugt i64 %i.by, %i.bw
  br i1 %.not18.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = shl i32 %i.bu, 1
  %i.ca = or disjoint i32 %i.bz, 1
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cd = call i32 @av_reallocp(ptr noundef nonnull %i.cc, i64 noundef %i.cb) #7
  %.not19.i = icmp eq i32 %i.cd, 0
  br i1 %.not19.i, label %bb.m, label %mov_cenc_end_packet.exit

bb.m:                                             ; preds = %bb.l
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !30
  %.pre.i54 = load i32, ptr %i.bt, align 8, !tbaa !29
  %.pre20.i = zext i32 %.pre.i54 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.pre-phi.i = phi i64 [ %.pre20.i, %bb.m ], [ %i.bw, %bb.k ]
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !22
  %i.cg = add i64 %i.cf, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !31
  %i.cj = sub i64 %i.cg, %i.ci
  %i.ck = trunc i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.pre-phi.i
  store i8 %i.ck, ptr %i.cn, align 1, !tbaa !25
  %i.co = load i32, ptr %i.bt, align 8, !tbaa !29
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.bt, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cr = load i16, ptr %i.cq, align 8, !tbaa !26
  %i.cs = call i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !24
  %i.cv = load i64, ptr %i.ch, align 8, !tbaa !31
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  store i16 %i.cs, ptr %i.cw, align 1, !tbaa !25
  br label %mov_cenc_end_packet.exit

mov_cenc_end_packet.exit:                         ; preds = %bb.n, %bb.l, %bb.j, %bb.a, %.loopexit, %bb.c
  %.042 = phi i32 [ %i.b, %bb.a ], [ -1, %bb.c ], [ -1, %.loopexit ], [ 0, %bb.j ], [ 0, %bb.n ], [ -12, %bb.l ]
  ret i32 %.042
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @avio_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ff_mov_cenc_av1_write_obus(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.g = tail call fastcc i32 @mov_cenc_start_packet(ptr noundef %1) ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.i = tail call i32 @ff_lavf_cbs_read_packet(ptr noundef %i.h, ptr noundef nonnull %i.b, ptr noundef %3) #7 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2) #7
  br label %bb.as

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %.not96 = icmp eq ptr %i.l, null
  br i1 %.not96, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !52
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph180, label %._crit_edge181

.lr.ph180:                                        ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %mov_cenc_end_packet.exit

bb.f:                                             ; preds = %.lr.ph180, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph180 ], [ %indvars.iv.next, %bb.ah ] ; 2 uses
  %.070178 = phi i32 [ 0, %.lr.ph180 ], [ %.373.ph, %bb.ah ] ; 4 uses
  %.075177 = phi i64 [ undef, %.lr.ph180 ], [ %.378.ph, %bb.ah ] ; 3 uses
  %.079176 = phi ptr [ null, %.lr.ph180 ], [ %.382.ph, %bb.ah ] ; 3 uses
  %.083175 = phi ptr [ null, %.lr.ph180 ], [ %.487.ph, %bb.ah ] ; 4 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.y, i64 %indvars.iv ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 3 uses
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !56  ; 2 uses
  switch i32 %i.ac, label %bb.ah [
    i32 3, label %bb.g
    i32 1, label %bb.i
end_hunk_0
