Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vvc_mp4toannexb?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@vvc_mp4toannexb_filter:bb.a
  %i.ad = zext i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.x, %i.ad
  br label %bytestream2_get_byte.exit79.us

bytestream2_get_byte.exit79.us:                   ; preds = %bb.f, %.preheader141.us
  %.sroa.0.7.us = phi ptr [ %i.ab, %bb.f ], [ %i.p, %.preheader141.us ] ; 3 uses
  %.0.i78.us = phi i32 [ %i.ae, %bb.f ], [ %i.x, %.preheader141.us ]
  %i.af = shl i32 %.0.i78.us, 8                   ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.0.7.us to i64
  %i.ah = sub i64 %i.q, %i.ag
  %i.ai = icmp slt i64 %i.ah, 1
  br i1 %i.ai, label %bytestream2_get_byte.exit79.us.1, label %bb.g

bb.g:                                             ; preds = %bytestream2_get_byte.exit79.us
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.7.us, i64 1
  %i.ak = load i8, ptr %.sroa.0.7.us, align 1, !tbaa !23
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.af, %i.al
  br label %bytestream2_get_byte.exit79.us.1

bytestream2_get_byte.exit79.us.1:                 ; preds = %bb.g, %bytestream2_get_byte.exit79.us
  %.sroa.0.7.us.1 = phi ptr [ %i.aj, %bb.g ], [ %i.p, %bytestream2_get_byte.exit79.us ] ; 3 uses
  %.0.i78.us.1 = phi i32 [ %i.am, %bb.g ], [ %i.af, %bytestream2_get_byte.exit79.us ] ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader141.us, !llvm.loop !37

bb.h:                                             ; preds = %._crit_edge.us
  %i.an = ptrtoint ptr %.sroa.0.7.us.lcssa to i64 ; 2 uses
  %i.ao = sub i64 %i.q, %i.an                     ; 2 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = icmp ugt i32 %.0.i78.us.lcssa, %i.ap
  br i1 %i.aq, label %.thread137, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp slt i64 %i.ao, 2
  br i1 %i.ar, label %bytestream2_peek_be16.exit82.thread.us, label %bytestream2_peek_be16.exit82.us

bytestream2_peek_be16.exit82.us:                  ; preds = %bb.i
  %i.as = load i16, ptr %.sroa.0.7.us.lcssa, align 1, !tbaa !23
  %i.at = lshr i16 %i.as, 11
  %i.au = add nsw i16 %i.at, -7
  %i.av = icmp ult i16 %i.au, 5
  br i1 %i.av, label %.lr.ph167, label %bytestream2_peek_be16.exit82.thread.us

bytestream2_peek_be16.exit82.thread.us:           ; preds = %bytestream2_peek_be16.exit82.us, %bb.i
  %.neg.i.us = sub i64 %i.t, %i.an
  %i.aw = trunc i64 %.neg.i.us to i32             ; 2 uses
  %i.ax = icmp slt i32 %.0.i78.us.lcssa, %i.aw
  %..i.us = call i32 @llvm.smin.i32(i32 %.0.i78.us.lcssa, i32 %i.ap)
  %.0.i83.us = select i1 %i.ax, i32 %i.aw, i32 %..i.us
  %i.ay = sext i32 %.0.i83.us to i64
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.7.us.lcssa, i64 %i.ay ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.q, %i.ba
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %.not73.us.not = icmp eq i32 %i.bc, 0
  br i1 %.not73.us.not, label %.lr.ph167, label %.lr.ph152.split.us

._crit_edge.us.unr-lcssa:                         ; preds = %bytestream2_get_byte.exit79.us.1
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.preheader141.us.epil.preheader

.preheader141.us.epil.preheader:                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader141.us.preheader
  %.057147.us.epil.init = phi i32 [ 0, %.preheader141.us.preheader ], [ %.0.i78.us.1, %._crit_edge.us.unr-lcssa ]
  %.sroa.0.1145.us.epil.init = phi ptr [ %.sroa.0.0150.us, %.preheader141.us.preheader ], [ %.sroa.0.7.us.1, %._crit_edge.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod196)
  %i.bd = shl i32 %.057147.us.epil.init, 8        ; 2 uses
  %i.be = ptrtoint ptr %.sroa.0.1145.us.epil.init to i64
  %i.bf = sub i64 %i.q, %i.be
  %i.bg = icmp slt i64 %i.bf, 1
  br i1 %i.bg, label %._crit_edge.us, label %bb.j

bb.j:                                             ; preds = %.preheader141.us.epil.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1145.us.epil.init, i64 1
  %i.bi = load i8, ptr %.sroa.0.1145.us.epil.init, align 1, !tbaa !23
  %i.bj = zext i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bd, %i.bj
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.preheader141.us.epil.preheader, %bb.j, %._crit_edge.us.unr-lcssa
  %.sroa.0.7.us.lcssa = phi ptr [ %.sroa.0.7.us.1, %._crit_edge.us.unr-lcssa ], [ %i.bh, %bb.j ], [ %i.p, %.preheader141.us.epil.preheader ] ; 3 uses
  %.0.i78.us.lcssa = phi i32 [ %.0.i78.us.1, %._crit_edge.us.unr-lcssa ], [ %i.bk, %bb.j ], [ %i.bd, %.preheader141.us.epil.preheader ] ; 4 uses
  %i.bl = icmp ult i32 %.0.i78.us.lcssa, 2
  br i1 %i.bl, label %.thread137, label %bb.h

.lr.ph167:                                        ; preds = %bytestream2_peek_be16.exit82.us, %bytestream2_peek_be16.exit82.thread.us
  %.not73.lcssa = phi i1 [ true, %bytestream2_peek_be16.exit82.us ], [ false, %bytestream2_peek_be16.exit82.thread.us ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph167, %bb.u
  %i.bp = phi i32 [ %i.l, %.lr.ph167 ], [ %i.eh, %bb.u ]
  %.063166 = phi i32 [ 0, %.lr.ph167 ], [ %i.de, %bb.u ] ; 2 uses
  %.sroa.0.3165 = phi ptr [ %i.j, %.lr.ph167 ], [ %i.ee, %bb.u ] ; 2 uses
  %i.bq = load i8, ptr %i.c, align 4, !tbaa !27   ; 4 uses
  %i.br = zext i8 %i.bq to i32                    ; 3 uses
  %i.bs = icmp slt i32 %i.bp, %i.br
  %.not171 = icmp eq i8 %i.bq, 0
  %or.cond191 = or i1 %i.bs, %.not171
  br i1 %or.cond191, label %.thread137, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %xtraiter197 = and i32 %i.br, 1
  %i.bt = icmp eq i8 %i.bq, 1
  br i1 %i.bt, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter202 = and i32 %i.br, 254
  br label %.lr.ph

.lr.ph:                                           ; preds = %bytestream2_get_byte.exit.1, %.lr.ph.preheader.new
  %.0162 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.0.i.1, %bytestream2_get_byte.exit.1 ]
  %.sroa.0.4160 = phi ptr [ %.sroa.0.3165, %.lr.ph.preheader.new ], [ %.sroa.0.6.1, %bytestream2_get_byte.exit.1 ] ; 3 uses
  %niter203 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter203.next.1, %bytestream2_get_byte.exit.1 ]
  %i.bu = shl i32 %.0162, 8                       ; 2 uses
  %i.bv = ptrtoint ptr %.sroa.0.4160 to i64
  %i.bw = sub i64 %i.q, %i.bv
  %i.bx = icmp slt i64 %i.bw, 1
  br i1 %i.bx, label %bytestream2_get_byte.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.4160, i64 1
  %i.bz = load i8, ptr %.sroa.0.4160, align 1, !tbaa !23
  %i.ca = zext i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.bu, %i.ca
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %.lr.ph, %bb.l
  %.sroa.0.6 = phi ptr [ %i.by, %bb.l ], [ %i.p, %.lr.ph ] ; 3 uses
  %.0.i = phi i32 [ %i.cb, %bb.l ], [ %i.bu, %.lr.ph ]
  %i.cc = shl i32 %.0.i, 8                        ; 2 uses
  %i.cd = ptrtoint ptr %.sroa.0.6 to i64
  %i.ce = sub i64 %i.q, %i.cd
  %i.cf = icmp slt i64 %i.ce, 1
  br i1 %i.cf, label %bytestream2_get_byte.exit.1, label %bb.m

bb.m:                                             ; preds = %bytestream2_get_byte.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 1
  %i.ch = load i8, ptr %.sroa.0.6, align 1, !tbaa !23
  %i.ci = zext i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cc, %i.ci
  br label %bytestream2_get_byte.exit.1

bytestream2_get_byte.exit.1:                      ; preds = %bb.m, %bytestream2_get_byte.exit
  %.sroa.0.6.1 = phi ptr [ %i.cg, %bb.m ], [ %i.p, %bytestream2_get_byte.exit ] ; 3 uses
  %.0.i.1 = phi i32 [ %i.cj, %bb.m ], [ %i.cc, %bytestream2_get_byte.exit ] ; 3 uses
  %niter203.next.1 = add i32 %niter203, 2         ; 2 uses
  %niter203.ncmp.1 = icmp eq i32 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !38

._crit_edge.unr-lcssa:                            ; preds = %bytestream2_get_byte.exit.1
  %lcmp.mod198.not = icmp eq i32 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.0162.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.0.i.1, %._crit_edge.unr-lcssa ]
  %.sroa.0.4160.epil.init = phi ptr [ %.sroa.0.3165, %.lr.ph.preheader ], [ %.sroa.0.6.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod201 = trunc i8 %i.bq to i1
  call void @llvm.assume(i1 %lcmp.mod201)
  %i.ck = shl i32 %.0162.epil.init, 8             ; 2 uses
  %i.cl = ptrtoint ptr %.sroa.0.4160.epil.init to i64
  %i.cm = sub i64 %i.q, %i.cl
  %i.cn = icmp slt i64 %i.cm, 1
  br i1 %i.cn, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %.lr.ph.epil.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.4160.epil.init, i64 1
  %i.cp = load i8, ptr %.sroa.0.4160.epil.init, align 1, !tbaa !23
  %i.cq = zext i8 %i.cp to i32
  %i.cr = or disjoint i32 %i.ck, %i.cq
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.n, %._crit_edge.unr-lcssa
  %.sroa.0.6.lcssa = phi ptr [ %.sroa.0.6.1, %._crit_edge.unr-lcssa ], [ %i.co, %bb.n ], [ %i.p, %.lr.ph.epil.preheader ] ; 4 uses
  %.0.i.lcssa = phi i32 [ %.0.i.1, %._crit_edge.unr-lcssa ], [ %i.cr, %bb.n ], [ %i.ck, %.lr.ph.epil.preheader ] ; 4 uses
  %i.cs = icmp ult i32 %.0.i.lcssa, 2
  br i1 %i.cs, label %.thread137, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ct = ptrtoint ptr %.sroa.0.6.lcssa to i64
  %i.cu = sub i64 %i.q, %i.ct                     ; 3 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = icmp ugt i32 %.0.i.lcssa, %i.cv
  br i1 %i.cw, label %.thread137, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp slt i64 %i.cu, 2
  br i1 %i.cx, label %bytestream2_peek_be16.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = load i16, ptr %.sroa.0.6.lcssa, align 1, !tbaa !23
  %i.cz = and i16 %i.cy, -2048
  %i.da = icmp ne i16 %i.cz, -24576
  br label %bytestream2_peek_be16.exit

bytestream2_peek_be16.exit:                       ; preds = %bb.p, %bb.q
  %.0.i80 = phi i1 [ %i.da, %bb.q ], [ true, %bb.p ]
  %or.cond = select i1 %.not73.lcssa, i1 %.0.i80, i1 false
  %.not75 = icmp eq i32 %.063166, 0
  %narrow = select i1 %or.cond, i1 %.not75, i1 false ; 2 uses
  %2 = zext i1 %narrow to i32
  %i.db = load ptr, ptr %i.bm, align 8, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !21
  %3 = select i1 %narrow, i32 %i.dd, i32 0        ; 3 uses
  %i.de = or i32 %.063166, %2
  %i.df = zext i32 %.0.i.lcssa to i64             ; 2 uses
  %i.dg = add nuw nsw i64 %i.df, 4
  %i.dh = sext i32 %3 to i64                      ; 4 uses
  %i.di = add nsw i64 %i.dg, %i.dh
  %i.dj = icmp ugt i64 %i.di, 2147483647
  br i1 %i.dj, label %.thread137, label %bb.r

bb.r:                                             ; preds = %bytestream2_peek_be16.exit
  %i.dk = load i32, ptr %i.bn, align 8, !tbaa !44 ; 2 uses
  %i.dl = add i32 %.0.i.lcssa, 4
  %i.dm = add i32 %i.dl, %3
  %i.dn = call i32 @av_grow_packet(ptr noundef %1, i32 noundef %i.dm) #7 ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %.thread137, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not76 = icmp eq i32 %3, 0
  br i1 %.not76, label %._crit_edge174, label %bb.t

._crit_edge174:                                   ; preds = %bb.s
  %.pre175 = sext i32 %i.dk to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.dq = sext i32 %i.dk to i64                   ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %i.ds = load ptr, ptr %i.bm, align 8, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.du, i64 %i.dh, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge174, %bb.t
  %.pre-phi = phi i64 [ %.pre175, %._crit_edge174 ], [ %i.dq, %bb.t ] ; 2 uses
  %i.dv = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %.pre-phi
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.dh
  store i32 16777216, ptr %i.dx, align 1, !tbaa !23
  %i.dy = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %.pre-phi
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dh
  %i.ec = call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.df)
  %i.ed = and i64 %i.ec, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr align 1 %.sroa.0.6.lcssa, i64 %i.ed, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.6.lcssa, i64 %i.ed ; 2 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = sub i64 %i.q, %i.ef
  %i.eh = trunc i64 %i.eg to i32                  ; 2 uses
  %.not74 = icmp eq i32 %i.eh, 0
  br i1 %.not74, label %._crit_edge168.loopexit, label %bb.k

._crit_edge168.loopexit:                          ; preds = %bb.u
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %bytestream2_init.exit, %._crit_edge168.loopexit
  %i.ei = phi ptr [ %.pre, %._crit_edge168.loopexit ], [ %i.h, %bytestream2_init.exit ]
  %i.ej = call i32 @av_packet_copy_props(ptr noundef %1, ptr noundef %i.ei) #7 ; 3 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %.thread137, label %.sink.split

.thread137:                                       ; preds = %bb.h, %._crit_edge.us, %.lr.ph152.split.us, %bb.r, %bb.o, %bytestream2_peek_be16.exit, %._crit_edge, %bb.k, %.lr.ph152, %._crit_edge168
  %.3140 = phi i32 [ %i.ej, %._crit_edge168 ], [ -1094995529, %bytestream2_peek_be16.exit ], [ -1094995529, %.lr.ph152 ], [ -1094995529, %bb.o ], [ %i.dn, %bb.r ], [ -1094995529, %bb.k ], [ -1094995529, %._crit_edge ], [ -1094995529, %.lr.ph152.split.us ], [ -1094995529, %._crit_edge.us ], [ -1094995529, %bb.h ]
  call void @av_packet_unref(ptr noundef %1) #7
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge168, %.thread137, %bb.c
  %.068.ph = phi i32 [ 0, %bb.c ], [ %.3140, %.thread137 ], [ %i.ej, %._crit_edge168 ]
  call void @av_packet_free(ptr noundef nonnull %i.a) #7
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.a
  %.068 = phi i32 [ %i.d, %bb.a ], [ %.068.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @av_reallocp(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @ff_bsf_get_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_move_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_free(ptr noundef) local_unnamed_addr #2

declare i32 @av_grow_packet(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_packet_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS17AVBitStreamFilter", !9, i64 0}
!12 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!13 = !{!"AVRational", !6, i64 0, !6, i64 4}
!14 = !{!"AVBSFContext", !10, i64 0, !11, i64 8, !9, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !13, i64 48}
!15 = !{!14, !9, i64 16}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!20 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !16, i64 16, !6, i64 24, !17, i64 32, !6, i64 40, !6, i64 44, !18, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !13, i64 80, !13, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !19, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!21 = !{!20, !6, i64 24}
!22 = !{!20, !16, i64 16}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!14, !12, i64 32}
!26 = !{!"VVCBSFContext", !5, i64 0, !6, i64 4}
!27 = !{!26, !5, i64 0}
!28 = !{!26, !6, i64 4}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !36}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = !{!14, !12, i64 24}
!35 = !{!16, !16, i64 0}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!42 = !{!"AVPacket", !41, i64 0, !18, i64 8, !18, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !17, i64 48, !6, i64 56, !18, i64 64, !18, i64 72, !9, i64 80, !41, i64 88, !13, i64 96}
!43 = !{!42, !16, i64 24}
!44 = !{!42, !6, i64 32}
end_hunk_0
