Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hevc_mp4toannexb?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@hevc_mp4toannexb_filter:bb.a
  br label %bytestream2_get_byte.exit103.1

bytestream2_get_byte.exit103.1:                   ; preds = %bb.i, %bytestream2_get_byte.exit103
  %.sroa.0.7.1 = phi ptr [ %i.ak, %bb.i ], [ %i.p, %bytestream2_get_byte.exit103 ] ; 3 uses
  %.0.i102.1 = phi i32 [ %i.an, %bb.i ], [ %i.ag, %bytestream2_get_byte.exit103 ] ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !33

._crit_edge.unr-lcssa:                            ; preds = %bytestream2_get_byte.exit103.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.075159.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.0.i102.1, %._crit_edge.unr-lcssa ]
  %.sroa.0.1157.epil.init = phi ptr [ %.sroa.0.0161, %.lr.ph.preheader ], [ %.sroa.0.7.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod208 = trunc i8 %i.u to i1
  call void @llvm.assume(i1 %lcmp.mod208)
  %i.ao = shl i32 %.075159.epil.init, 8           ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.0.1157.epil.init to i64
  %i.aq = sub i64 %i.q, %i.ap
  %i.ar = icmp slt i64 %i.aq, 1
  br i1 %i.ar, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph.epil.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.1157.epil.init, i64 1
  %i.at = load i8, ptr %.sroa.0.1157.epil.init, align 1, !tbaa !23
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.ao, %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.j, %._crit_edge.unr-lcssa
  %.sroa.0.7.lcssa = phi ptr [ %.sroa.0.7.1, %._crit_edge.unr-lcssa ], [ %i.as, %bb.j ], [ %i.p, %.lr.ph.epil.preheader ] ; 3 uses
  %.0.i102.lcssa = phi i32 [ %.0.i102.1, %._crit_edge.unr-lcssa ], [ %i.av, %bb.j ], [ %i.ao, %.lr.ph.epil.preheader ] ; 3 uses
  %i.aw = icmp ult i32 %.0.i102.lcssa, 2
  br i1 %i.aw, label %.thread149, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ax = ptrtoint ptr %.sroa.0.7.lcssa to i64
  %i.ay = sub i64 %i.q, %i.ax                     ; 3 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp ugt i32 %.0.i102.lcssa, %i.az
  br i1 %i.ba, label %.thread149, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp slt i64 %i.ay, 1
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load i8, ptr %.sroa.0.7.lcssa, align 1, !tbaa !23
  %i.bd = zext i8 %i.bc to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i105 = phi i32 [ %i.bd, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.be = lshr i32 %.0.i105, 1
  %i.bf = and i32 %i.be, 63
  %i.bg = zext i32 %.0.i102.lcssa to i64
  %..i = call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.bg)
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.7.lcssa, i64 %..i
  %i.bi = and i32 %.0.i105, 112
  %i.bj = icmp eq i32 %i.bi, 32
  %i.bk = add nsw i32 %i.bf, -32
  %i.bl = icmp ult i32 %i.bk, 3
  %i.bm = zext i1 %i.bl to i32
  %i.bn = or i32 %.081163, %i.bm                  ; 2 uses
  br i1 %i.bj, label %bytestream2_init.exit, label %bb.f

bytestream2_init.exit:                            ; preds = %bb.f, %bb.n
  %.081.lcssa = phi i32 [ %.081163, %bb.f ], [ %i.bn, %bb.n ]
  %i.bo = icmp ne i32 %.081.lcssa, 0
  %.not95171 = icmp eq i32 %i.l, 0
  br i1 %.not95171, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %bytestream2_init.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph175, %bb.y
  %i.bs = phi i32 [ %i.l, %.lr.ph175 ], [ %i.eu, %bb.y ]
  %.283174 = phi i32 [ 0, %.lr.ph175 ], [ %i.dr, %bb.y ] ; 2 uses
  %.287173 = phi i32 [ 0, %.lr.ph175 ], [ %i.dq, %bb.y ] ; 2 uses
  %.sroa.0.3172 = phi ptr [ %i.j, %.lr.ph175 ], [ %i.er, %bb.y ] ; 2 uses
  %i.bt = load i8, ptr %i.c, align 4, !tbaa !27   ; 4 uses
  %i.bu = zext i8 %i.bt to i32                    ; 3 uses
  %i.bv = icmp slt i32 %i.bs, %i.bu
  %.not178 = icmp eq i8 %i.bt, 0
  %or.cond201 = or i1 %i.bv, %.not178
  br i1 %or.cond201, label %.thread149, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %bb.o
  %xtraiter209 = and i32 %i.bu, 1
  %i.bw = icmp eq i8 %i.bt, 1
  br i1 %i.bw, label %.lr.ph167.epil.preheader, label %.lr.ph167.preheader.new

.lr.ph167.preheader.new:                          ; preds = %.lr.ph167.preheader
  %unroll_iter214 = and i32 %i.bu, 254
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %bytestream2_get_byte.exit.1, %.lr.ph167.preheader.new
  %.0166 = phi i32 [ 0, %.lr.ph167.preheader.new ], [ %.0.i.1, %bytestream2_get_byte.exit.1 ]
  %.sroa.0.4164 = phi ptr [ %.sroa.0.3172, %.lr.ph167.preheader.new ], [ %.sroa.0.6.1, %bytestream2_get_byte.exit.1 ] ; 3 uses
  %niter215 = phi i32 [ 0, %.lr.ph167.preheader.new ], [ %niter215.next.1, %bytestream2_get_byte.exit.1 ]
  %i.bx = shl i32 %.0166, 8                       ; 2 uses
  %i.by = ptrtoint ptr %.sroa.0.4164 to i64
  %i.bz = sub i64 %i.q, %i.by
  %i.ca = icmp slt i64 %i.bz, 1
  br i1 %i.ca, label %bytestream2_get_byte.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph167
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.4164, i64 1
  %i.cc = load i8, ptr %.sroa.0.4164, align 1, !tbaa !23
  %i.cd = zext i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.bx, %i.cd
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %.lr.ph167, %bb.p
  %.sroa.0.6 = phi ptr [ %i.cb, %bb.p ], [ %i.p, %.lr.ph167 ] ; 3 uses
  %.0.i = phi i32 [ %i.ce, %bb.p ], [ %i.bx, %.lr.ph167 ]
  %i.cf = shl i32 %.0.i, 8                        ; 2 uses
  %i.cg = ptrtoint ptr %.sroa.0.6 to i64
  %i.ch = sub i64 %i.q, %i.cg
  %i.ci = icmp slt i64 %i.ch, 1
  br i1 %i.ci, label %bytestream2_get_byte.exit.1, label %bb.q

bb.q:                                             ; preds = %bytestream2_get_byte.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.6, i64 1
  %i.ck = load i8, ptr %.sroa.0.6, align 1, !tbaa !23
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cf, %i.cl
  br label %bytestream2_get_byte.exit.1

bytestream2_get_byte.exit.1:                      ; preds = %bb.q, %bytestream2_get_byte.exit
  %.sroa.0.6.1 = phi ptr [ %i.cj, %bb.q ], [ %i.p, %bytestream2_get_byte.exit ] ; 3 uses
  %.0.i.1 = phi i32 [ %i.cm, %bb.q ], [ %i.cf, %bytestream2_get_byte.exit ] ; 3 uses
  %niter215.next.1 = add i32 %niter215, 2         ; 2 uses
  %niter215.ncmp.1 = icmp eq i32 %niter215.next.1, %unroll_iter214
  br i1 %niter215.ncmp.1, label %._crit_edge168.unr-lcssa, label %.lr.ph167, !llvm.loop !34

._crit_edge168.unr-lcssa:                         ; preds = %bytestream2_get_byte.exit.1
  %lcmp.mod210.not = icmp eq i32 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %._crit_edge168, label %.lr.ph167.epil.preheader

.lr.ph167.epil.preheader:                         ; preds = %._crit_edge168.unr-lcssa, %.lr.ph167.preheader
  %.0166.epil.init = phi i32 [ 0, %.lr.ph167.preheader ], [ %.0.i.1, %._crit_edge168.unr-lcssa ]
  %.sroa.0.4164.epil.init = phi ptr [ %.sroa.0.3172, %.lr.ph167.preheader ], [ %.sroa.0.6.1, %._crit_edge168.unr-lcssa ] ; 3 uses
  %lcmp.mod213 = trunc i8 %i.bt to i1
  call void @llvm.assume(i1 %lcmp.mod213)
  %i.cn = shl i32 %.0166.epil.init, 8             ; 2 uses
  %i.co = ptrtoint ptr %.sroa.0.4164.epil.init to i64
  %i.cp = sub i64 %i.q, %i.co
  %i.cq = icmp slt i64 %i.cp, 1
  br i1 %i.cq, label %._crit_edge168, label %bb.r

bb.r:                                             ; preds = %.lr.ph167.epil.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.4164.epil.init, i64 1
  %i.cs = load i8, ptr %.sroa.0.4164.epil.init, align 1, !tbaa !23
  %i.ct = zext i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cn, %i.ct
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %.lr.ph167.epil.preheader, %bb.r, %._crit_edge168.unr-lcssa
  %.sroa.0.6.lcssa = phi ptr [ %.sroa.0.6.1, %._crit_edge168.unr-lcssa ], [ %i.cr, %bb.r ], [ %i.p, %.lr.ph167.epil.preheader ] ; 4 uses
  %.0.i.lcssa = phi i32 [ %.0.i.1, %._crit_edge168.unr-lcssa ], [ %i.cu, %bb.r ], [ %i.cn, %.lr.ph167.epil.preheader ] ; 4 uses
  %i.cv = icmp ult i32 %.0.i.lcssa, 2
  br i1 %i.cv, label %.thread149, label %bb.s

bb.s:                                             ; preds = %._crit_edge168
  %i.cw = ptrtoint ptr %.sroa.0.6.lcssa to i64
  %i.cx = sub i64 %i.q, %i.cw                     ; 3 uses
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = icmp ugt i32 %.0.i.lcssa, %i.cy
  br i1 %i.cz, label %.thread149, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = icmp slt i64 %i.cx, 1
  br i1 %i.da, label %bytestream2_peek_byte.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = load i8, ptr %.sroa.0.6.lcssa, align 1, !tbaa !23
  %i.dc = zext i8 %i.db to i32
  br label %bytestream2_peek_byte.exit

bytestream2_peek_byte.exit:                       ; preds = %bb.t, %bb.u
  %.0.i104 = phi i32 [ %i.dc, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.dd = lshr i32 %.0.i104, 1
  %i.de = and i32 %i.dd, 63
  %i.df = and i32 %.0.i104, 112
  %i.dg = icmp eq i32 %i.df, 32                   ; 2 uses
  %i.dh = zext i1 %i.dg to i32
  %i.di = add nsw i32 %i.de, -32
  %or.cond = icmp ult i32 %i.di, 3
  %i.dj = and i1 %.not94.not.not.not.not, %or.cond
  %i.dk = select i1 %i.dj, i1 %i.bo, i1 false     ; 2 uses
  %i.dl = zext i1 %i.dk to i32
  %or.cond3 = or i1 %i.dg, %i.dk
  %i.dm = icmp eq i32 %.283174, 0
  %or.cond5.not = select i1 %or.cond3, i1 %i.dm, i1 false
  %2 = xor i32 %.287173, 1
  %3 = select i1 %or.cond5.not, i32 %2, i32 0
  %i.dn = load ptr, ptr %i.bp, align 8, !tbaa !25
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !21
  %4 = mul nuw nsw i32 %3, %i.dp                  ; 3 uses
  %i.dq = or i32 %.287173, %i.dh
  %i.dr = or i32 %.283174, %i.dl
  %i.ds = zext i32 %.0.i.lcssa to i64             ; 2 uses
  %i.dt = add nuw nsw i64 %i.ds, 4
  %i.du = sext i32 %4 to i64                      ; 4 uses
  %i.dv = add nsw i64 %i.dt, %i.du
  %i.dw = icmp ugt i64 %i.dv, 2147483647
  br i1 %i.dw, label %.thread149, label %bb.v

bb.v:                                             ; preds = %bytestream2_peek_byte.exit
  %i.dx = load i32, ptr %i.bq, align 8, !tbaa !40 ; 2 uses
  %i.dy = add i32 %.0.i.lcssa, 4
  %i.dz = add i32 %i.dy, %4
  %i.ea = call i32 @av_grow_packet(ptr noundef %1, i32 noundef %i.dz) #7 ; 2 uses
  %i.eb = icmp slt i32 %i.ea, 0
  br i1 %i.eb, label %.thread149, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not98 = icmp eq i32 %4, 0
  br i1 %.not98, label %._crit_edge182, label %bb.x

._crit_edge182:                                   ; preds = %bb.w
  %.pre183 = sext i32 %i.dx to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.ed = sext i32 %i.dx to i64                   ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 %i.ed
  %i.ef = load ptr, ptr %i.bp, align 8, !tbaa !25
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.eh, i64 %i.du, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge182, %bb.x
  %.pre-phi = phi i64 [ %.pre183, %._crit_edge182 ], [ %i.ed, %bb.x ] ; 2 uses
  %i.ei = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %.pre-phi
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.du
  store i32 16777216, ptr %i.ek, align 1, !tbaa !23
  %i.el = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %.pre-phi
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.du
  %i.ep = call i64 @llvm.smin.i64(i64 %i.cx, i64 %i.ds)
  %i.eq = and i64 %i.ep, 4294967295               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr align 1 %.sroa.0.6.lcssa, i64 %i.eq, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0.6.lcssa, i64 %i.eq ; 2 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = sub i64 %i.q, %i.es
  %i.eu = trunc i64 %i.et to i32                  ; 2 uses
  %.not95 = icmp eq i32 %i.eu, 0
  br i1 %.not95, label %._crit_edge176.loopexit, label %bb.o

._crit_edge176.loopexit:                          ; preds = %bb.y
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %._crit_edge176.loopexit, %bytestream2_init.exit
  %i.ev = phi ptr [ %.pre, %._crit_edge176.loopexit ], [ %i.h, %bytestream2_init.exit ]
  %i.ew = call i32 @av_packet_copy_props(ptr noundef %1, ptr noundef %i.ev) #7 ; 3 uses
  %i.ex = icmp slt i32 %i.ew, 0
  br i1 %i.ex, label %.thread149, label %.sink.split

.thread149:                                       ; preds = %._crit_edge, %bb.k, %bb.g, %bb.v, %bb.s, %bytestream2_peek_byte.exit, %._crit_edge168, %bb.o, %._crit_edge176
  %.3152 = phi i32 [ %i.ew, %._crit_edge176 ], [ -1094995529, %bytestream2_peek_byte.exit ], [ -1094995529, %bb.s ], [ %i.ea, %bb.v ], [ -1094995529, %bb.o ], [ -1094995529, %._crit_edge168 ], [ -1094995529, %bb.g ], [ -1094995529, %bb.k ], [ -1094995529, %._crit_edge ]
  call void @av_packet_unref(ptr noundef %1) #7
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge176, %.thread149, %bb.c
  %.089.ph = phi i32 [ 0, %bb.c ], [ %.3152, %.thread149 ], [ %i.ew, %._crit_edge176 ]
  call void @av_packet_free(ptr noundef nonnull %i.a) #7
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.a
  %.089 = phi i32 [ %i.d, %bb.a ], [ %.089.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.089
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @av_reallocp(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

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
!26 = !{!"HEVCBSFContext", !5, i64 0, !6, i64 4}
!27 = !{!26, !5, i64 0}
!28 = !{!26, !6, i64 4}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = !{!14, !12, i64 24}
!32 = !{!16, !16, i64 0}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!38 = !{!"AVPacket", !37, i64 0, !18, i64 8, !18, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !17, i64 48, !6, i64 56, !18, i64 64, !18, i64 72, !9, i64 80, !37, i64 88, !13, i64 96}
!39 = !{!38, !16, i64 24}
!40 = !{!38, !6, i64 32}
end_hunk_0
