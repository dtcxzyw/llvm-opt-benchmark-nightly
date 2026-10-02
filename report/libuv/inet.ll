Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/inet?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@inet_pton6:bb.a
    i8 58, label %bb.e
    i8 46, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %.not104 = icmp eq i32 %.068172, 0
  br i1 %.not104, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not105 = icmp eq ptr %.074170, null
  br i1 %.not105, label %select.unfold119, label %.critedge, !llvm.loop !6

bb.g:                                             ; preds = %bb.e
  %i.r = load i8, ptr %i.g, align 1
  %i.s = icmp eq i8 %i.r, 0
  %i.t = icmp ugt i64 %.077.idx169, 14
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = lshr i32 %.065173, 8
  %i.v = trunc i32 %i.u to i8
  %.ptr101 = getelementptr inbounds nuw i8, ptr %.077.ptr.ptr174, i64 1
  store i8 %i.v, ptr %.077.ptr.ptr174, align 1
  %i.w = trunc i32 %.065173 to i8
  %.add = add nuw nsw i64 %.077.idx169, 2
  store i8 %i.w, ptr %.ptr101, align 1
  br label %select.unfold119, !llvm.loop !6

bb.i:                                             ; preds = %bb.d
  %.077.add = add nuw nsw i64 %.077.idx169, 4
  %.not99 = icmp sgt i64 %.077.idx169, 12
  br i1 %.not99, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.a, align 4
  %i.x = load i8, ptr %.071171, align 1           ; 2 uses
  %.not53.i = icmp eq i8 %i.x, 0
  br i1 %.not53.i, label %inet_pton4.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.o
  %i.y = phi i8 [ %i.ar, %bb.o ], [ 0, %bb.j ]    ; 2 uses
  %i.z = phi i8 [ %i.as, %bb.o ], [ %i.x, %bb.j ] ; 2 uses
  %.pn.i = phi ptr [ %i.aa, %bb.o ], [ %.071171, %bb.j ]
  %.02156.i = phi ptr [ %.2.i, %bb.o ], [ %i.a, %bb.j ] ; 3 uses
  %.02355.i = phi i32 [ %.4.i, %bb.o ], [ 0, %bb.j ] ; 4 uses
  %.02654.i = phi i32 [ %.430.i, %bb.o ], [ 0, %bb.j ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %i.ab = sext i8 %i.z to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @inet_pton4.digits, i32 %i.ab, i64 11) ; 2 uses
  %.not42.i = icmp eq ptr %memchr.i, null
  br i1 %.not42.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ac = zext i8 %i.y to i32
  %i.ad = mul nuw nsw i32 %i.ac, 10
  %i.ae = ptrtoint ptr %memchr.i to i64
  %i.af = trunc i64 %i.ae to i32
  %i.ag = sub i32 %i.af, ptrtoint (ptr @inet_pton4.digits to i32)
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %.not43.i = icmp ne i32 %.02654.i, 0            ; 3 uses
  %i.ai = icmp eq i8 %i.y, 0
  %or.cond44.i = select i1 %.not43.i, i1 %i.ai, i1 false
  %i.aj = icmp ugt i32 %i.ah, 255
  %or.cond48.i = select i1 %or.cond44.i, i1 true, i1 %i.aj
  br i1 %or.cond48.i, label %inet_pton4.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = trunc nuw i32 %i.ah to i8               ; 2 uses
  store i8 %i.ak, ptr %.02156.i, align 1
  %i.al = icmp slt i32 %.02355.i, 4
  %narrow.i = select i1 %.not43.i, i1 true, i1 %i.al
  %not..not43.i = xor i1 %.not43.i, true
  %i.am = zext i1 %not..not43.i to i32
  %.225.i = add nsw i32 %.02355.i, %i.am
  br i1 %narrow.i, label %bb.o, label %inet_pton4.exit.thread

bb.m:                                             ; preds = %.lr.ph.i
  %i.an = icmp ne i8 %i.z, 46
  %i.ao = icmp eq i32 %.02654.i, 0
  %or.cond.not51.i = or i1 %i.an, %i.ao
  %i.ap = icmp eq i32 %.02355.i, 4
  %or.cond47.i = select i1 %or.cond.not51.i, i1 true, i1 %i.ap
  br i1 %or.cond47.i, label %inet_pton4.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.02156.i, i64 1 ; 2 uses
  store i8 0, ptr %i.aq, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ar = phi i8 [ 0, %bb.n ], [ %i.ak, %bb.l ]
  %.430.i = phi i32 [ 0, %bb.n ], [ 1, %bb.l ]
  %.4.i = phi i32 [ %.02355.i, %bb.n ], [ %.225.i, %bb.l ] ; 2 uses
  %.2.i = phi ptr [ %i.aq, %bb.n ], [ %.02156.i, %bb.l ]
  %i.as = load i8, ptr %i.aa, align 1             ; 2 uses
  %.not.i = icmp eq i8 %i.as, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.o
  %i.at = icmp slt i32 %.4.i, 4
  br i1 %i.at, label %inet_pton4.exit.thread, label %.thread150

inet_pton4.exit.thread:                           ; preds = %bb.l, %bb.m, %bb.k, %._crit_edge.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.critedge

select.unfold119:                                 ; preds = %bb.f, %.thread, %bb.h
  %.380.idx = phi i64 [ %.077.idx169, %.thread ], [ %.add, %bb.h ], [ %.077.idx169, %bb.f ] ; 6 uses
  %.175 = phi ptr [ %.074170, %.thread ], [ %.074170, %bb.h ], [ %.077.ptr.ptr174, %bb.f ] ; 3 uses
  %.172 = phi ptr [ %.071171, %.thread ], [ %i.g, %bb.h ], [ %i.g, %bb.f ]
  %.3 = phi i32 [ %i.p, %.thread ], [ 0, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.166 = phi i32 [ %i.o, %.thread ], [ 0, %bb.h ], [ %.065173, %bb.f ] ; 3 uses
  %.077.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.380.idx
  %i.au = load i8, ptr %i.g, align 1              ; 2 uses
  %.not96 = icmp eq i8 %i.au, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.thread150:                                       ; preds = %._crit_edge.i
  %i.av = load i32, ptr %i.a, align 4
  store i32 %i.av, ptr %.077.ptr.ptr174, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.r

._crit_edge:                                      ; preds = %select.unfold119
  %i.aw = icmp eq i32 %.3, 0
  %.481.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.380.idx ; 2 uses
  br i1 %i.aw, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ax = icmp sgt i64 %.380.idx, 14
  br i1 %i.ax, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = lshr i32 %.166, 8
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.481.ptr.ptr, i64 1
  store i8 %i.az, ptr %.481.ptr.ptr, align 1
  %i.bb = trunc i32 %.166 to i8
  %.481.ptr.add = add nuw nsw i64 %.380.idx, 2
  store i8 %i.bb, ptr %i.ba, align 1
  br label %bb.r

bb.r:                                             ; preds = %.thread150, %bb.q, %._crit_edge
  %.074165 = phi ptr [ %.175, %bb.q ], [ %.175, %._crit_edge ], [ %.074170, %.thread150 ] ; 9 uses
  %.5.idx = phi i64 [ %.481.ptr.add, %bb.q ], [ %.380.idx, %._crit_edge ], [ %.077.add, %.thread150 ] ; 3 uses
  %.not107 = icmp eq ptr %.074165, null
  br i1 %.not107, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.5.ptr.ptr = getelementptr i8, ptr %i.b, i64 %.5.idx
  %i.bc = ptrtoint ptr %.5.ptr.ptr to i64
  %i.bd = ptrtoint ptr %.074165 to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 4 uses
  %.not109 = icmp eq i64 %.5.idx, 16
  br i1 %.not109, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.bf = trunc i64 %i.be to i32
  %.not108178 = icmp slt i32 %i.bf, 1
  br i1 %.not108178, label %.thread127, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.bg = and i64 %i.be, 2147483647               ; 7 uses
  %i.bh = add nuw nsw i64 %i.be, 1
  %wide.trip.count = and i64 %i.bh, 4294967295    ; 5 uses
  %i.bi = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check = icmp ult i64 %i.bi, 8
  br i1 %min.iters.check, label %.lr.ph180.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bj = sub nsw i64 17, %wide.trip.count
  %i.bk = getelementptr i8, ptr %i.b, i64 %i.bj
  %i.bl = add nuw nsw i64 %i.bg, 1
  %i.bm = sub nsw i64 %i.bl, %wide.trip.count
  %i.bn = getelementptr i8, ptr %.074165, i64 %i.bm
  %i.bo = getelementptr i8, ptr %.074165, i64 %i.bg
  %bound0 = icmp ult ptr %i.bk, %i.bo
  %bound1 = icmp ult ptr %i.bn, %.ptr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph180.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check231 = icmp ult i64 %i.bi, 32
  br i1 %min.iters.check231, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bp = and i64 %i.bi, 24
  %n.vec = and i64 %i.bi, -32                     ; 4 uses
  %i.bq = or disjoint i64 %n.vec, 1
  %i.br = getelementptr i8, ptr %.074165, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.neg = xor i64 %index, -1
  %i.bs = getelementptr i8, ptr %i.br, i64 %.neg  ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -15 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 -31 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.bt, align 1, !alias.scope !20
  %wide.load232 = load <16 x i8>, ptr %i.bu, align 1, !alias.scope !20
  %i.bv = xor i64 %index, -1
  %i.bw = getelementptr inbounds i8, ptr %.ptr, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -15
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -31
  store <16 x i8> %wide.load, ptr %i.bx, align 16, !alias.scope !22, !noalias !20
  store <16 x i8> %wide.load232, ptr %i.by, align 16, !alias.scope !22, !noalias !20
  store <16 x i8> zeroinitializer, ptr %i.bt, align 1, !alias.scope !20
  store <16 x i8> zeroinitializer, ptr %i.bu, align 1, !alias.scope !20
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.thread127, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph180.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec233 = and i64 %i.bi, -8                   ; 3 uses
  %i.ca = or disjoint i64 %n.vec233, 1
  %i.cb = getelementptr i8, ptr %.074165, i64 %i.bg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index234 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 3 uses
  %.neg239 = xor i64 %index234, -1
  %i.cc = getelementptr i8, ptr %i.cb, i64 %.neg239
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -7 ; 2 uses
  %wide.load235 = load <8 x i8>, ptr %i.cd, align 1, !alias.scope !20
  %i.ce = xor i64 %index234, -1
  %i.cf = getelementptr inbounds i8, ptr %.ptr, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -7
  store <8 x i8> %wide.load235, ptr %i.cg, align 8, !alias.scope !22, !noalias !20
  store <8 x i8> zeroinitializer, ptr %i.cd, align 1, !alias.scope !20
  %index.next236 = add nuw i64 %index234, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next236, %n.vec233
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n237 = icmp eq i64 %i.bi, %n.vec233
  br i1 %cmp.n237, label %.thread127, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.bq, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ] ; 5 uses
  %.neg248 = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.be, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph180.prol.loopexit, label %.lr.ph180.prol

.lr.ph180.prol:                                   ; preds = %.lr.ph180.preheader
  %i.ci = sub nuw nsw i64 %i.bg, %indvars.iv.ph
  %i.cj = getelementptr inbounds nuw i8, ptr %.074165, i64 %i.ci ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = sub nsw i64 0, %indvars.iv.ph
  %i.cm = getelementptr inbounds i8, ptr %.ptr, i64 %i.cl
  store i8 %i.ck, ptr %i.cm, align 1
  store i8 0, ptr %i.cj, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph180.prol.loopexit

.lr.ph180.prol.loopexit:                          ; preds = %.lr.ph180.prol, %.lr.ph180.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph180.preheader ], [ %indvars.iv.next.prol, %.lr.ph180.prol ]
  %i.cn = icmp eq i64 %wide.trip.count, %.neg248
  br i1 %i.cn, label %.thread127, label %.lr.ph180.preheader.new

.lr.ph180.preheader.new:                          ; preds = %.lr.ph180.prol.loopexit
  %i.co = getelementptr i8, ptr %.074165, i64 %i.bg
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180, %.lr.ph180.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph180.preheader.new ], [ %indvars.iv.next.1, %.lr.ph180 ] ; 5 uses
  %i.cp = sub nuw nsw i64 %i.bg, %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %.074165, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = sub nsw i64 0, %indvars.iv
  %i.ct = getelementptr inbounds i8, ptr %.ptr, i64 %i.cs
  store i8 %i.cr, ptr %i.ct, align 1
  store i8 0, ptr %i.cq, align 1
  %indvars.iv.next.neg = xor i64 %indvars.iv, -1
  %i.cu = getelementptr i8, ptr %i.co, i64 %indvars.iv.next.neg ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = xor i64 %indvars.iv, -1
  %i.cx = getelementptr inbounds i8, ptr %.ptr, i64 %i.cw
  store i8 %i.cv, ptr %i.cx, align 1
  store i8 0, ptr %i.cu, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.thread127, label %.lr.ph180, !llvm.loop !12

bb.t:                                             ; preds = %bb.r
  %.not110 = icmp eq i64 %.5.idx, 16
  br i1 %.not110, label %.thread127, label %.critedge

.thread127:                                       ; preds = %.lr.ph180.prol.loopexit, %.lr.ph180, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.d, %bb.f, %bb.g, %bb.a, %inet_pton4.exit.thread, %bb.i, %bb.s, %bb.t, %bb.p, %bb.b, %.thread127
  %.486 = phi i32 [ -22, %inet_pton4.exit.thread ], [ -22, %bb.i ], [ -22, %bb.b ], [ -22, %bb.t ], [ 0, %.thread127 ], [ -22, %bb.p ], [ -22, %bb.s ], [ -22, %bb.a ], [ -22, %bb.g ], [ -22, %bb.f ], [ -22, %bb.d ], [ -22, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.486
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i64 @uv__strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!10 = distinct !{!10, !5, !15, !16}
!11 = distinct !{!11, !5, !15, !16}
!12 = distinct !{!12, !5, !15}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", i32 8, i32 24}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = !{!19}
!21 = distinct !{!21, !18}
!22 = !{!21}
end_hunk_0
