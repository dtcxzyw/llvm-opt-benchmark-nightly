Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/text_import?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@write_current_packet:bb.a
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.pre334 = load i32, ptr @curr_offset, align 4
  br label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hx = load ptr, ptr @info_p, align 8          ; 4 uses
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = getelementptr i8, ptr %i.hx, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = load i32, ptr %i.a, align 4
  %i.ic = load ptr, ptr %i.b, align 8
  %i.id = getelementptr i8, ptr %i.hx, i64 180
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr i8, ptr %i.hx, i64 96
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = call i32 @wtap_dump_file_type_subtype(ptr noundef %i.ih)
  call void @report_cfile_write_failure(ptr noundef %i.hy, ptr noundef %i.ia, i32 noundef %i.ib, ptr noundef %i.ic, i64 noundef %i.if, i32 noundef %i.ii)
  call void @wtap_rec_cleanup(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ax

bb.aw:                                            ; preds = %.thread323, %bb.a
  %i.ij = phi i32 [ %.pre334, %.thread323 ], [ 0, %bb.a ]
  %i.ik = load i32, ptr @packet_start, align 4
  %i.il = add i32 %i.ik, %i.ij
  store i32 %i.il, ptr @packet_start, align 4
  store i32 0, ptr @curr_offset, align 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.1 = phi i32 [ 0, %bb.aw ], [ 1, %bb.av ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @parse_dir(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %2, align 1                 ; 2 uses
  %.not1.i = icmp eq i8 %i.a, 0
  br i1 %.not1.i, label %.critedge.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %.02.i, i64 1      ; 2 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %.critedge.preheader.i, label %bb.c, !llvm.loop !23

.critedge.preheader.i:                            ; preds = %bb.b, %bb.a
  %i.f = load i8, ptr %3, align 1                 ; 2 uses
  %.not233.i = icmp eq i8 %i.f, 0
  br i1 %.not233.i, label %.critedge._crit_edge.i, label %.lr.ph5.i

.lr.ph5.i:                                        ; preds = %.critedge.preheader.i
  %i.g = load i8, ptr %0, align 1
  %i.h = zext i8 %i.g to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.i = phi i8 [ %i.a, %.lr.ph.i ], [ %i.e, %bb.b ]
  %.02.i = phi ptr [ %2, %.lr.ph.i ], [ %i.d, %bb.b ]
  %i.j = sext i8 %i.i to i32
  %.not21.i = icmp eq i32 %i.c, %i.j
  br i1 %.not21.i, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr @direction, align 4
  %i.l = and i32 %i.k, -4
  %i.m = or disjoint i32 %i.l, 1
  br label %_parse_dir.exit

.critedge.i:                                      ; preds = %bb.e
  %i.n = getelementptr i8, ptr %.0184.i, i64 1    ; 2 uses
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %.not23.i = icmp eq i8 %i.o, 0
  br i1 %.not23.i, label %.critedge._crit_edge.i, label %bb.e, !llvm.loop !24

bb.e:                                             ; preds = %.critedge.i, %.lr.ph5.i
  %i.p = phi i8 [ %i.f, %.lr.ph5.i ], [ %i.o, %.critedge.i ]
  %.0184.i = phi ptr [ %3, %.lr.ph5.i ], [ %i.n, %.critedge.i ]
  %i.q = sext i8 %i.p to i32
  %.not24.i = icmp eq i32 %i.h, %i.q
  br i1 %.not24.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %bb.e
  %i.r = load i32, ptr @direction, align 4
  %i.s = and i32 %i.r, -4
  %i.t = or disjoint i32 %i.s, 2
  br label %_parse_dir.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i, %.critedge.preheader.i
  %i.u = load i32, ptr @direction, align 4
  %i.v = and i32 %i.u, -4
  br label %_parse_dir.exit

_parse_dir.exit:                                  ; preds = %bb.d, %.critedge2.i, %.critedge._crit_edge.i
  %.sink.i = phi i32 [ %i.v, %.critedge._crit_edge.i ], [ %i.t, %.critedge2.i ], [ %i.m, %bb.d ]
  store i32 %.sink.i, ptr @direction, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @parse_time(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc zeroext i1 @_parse_time(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr @ts_nsec, align 4
  %i.d = add i32 %i.c, 1000
  store i32 %i.d, ptr @ts_nsec, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @_parse_time(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tm, align 8                 ; 7 uses
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.nstime_t, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %reass.sub = sub i64 %i.d, %i.e
  %i.f = add i64 %reass.sub, 1
  %i.g = tail call i64 @llvm.smin.i64(i64 %i.f, i64 64)
  %i.h = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %i.g) ; 0 uses
  %.b = load i1, ptr @ts_fmt_iso, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.i = call ptr @iso8601_to_nstime(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 2)
  %.not49.not = icmp eq ptr %i.i, null
  br i1 %.not49.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %4, align 8
  store i64 %i.j, ptr @ts_sec, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i32, ptr %i.k, align 8
  store i32 %i.l, ptr @ts_nsec, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.m = call i64 @g_strlcpy(ptr noundef nonnull %i.b, ptr noundef nonnull %2, i64 noundef 64) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @timecode_default, i64 56, i1 false)
  %i.n = call ptr @g_strrstr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.32) ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = call ptr @ws_strptime_p(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %3)
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %.thread2

.thread:                                          ; preds = %bb.d
  store i8 0, ptr %i.n, align 1
  %i.q = call ptr @ws_strptime_p(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %3) ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.s = call i64 @strtol(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c, i32 noundef 10) #16
  %i.t = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = trunc i64 %i.s to i32                    ; 6 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32                    ; 7 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 2
  %i.ab = call ptr @ws_strptime_p(ptr noundef %i.t, ptr noundef %i.aa, ptr noundef nonnull %3)
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp sgt i32 %i.z, 0
  br i1 %i.ad, label %bb.i, label %.thread2

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp samesign ugt i32 %i.z, 9
  br i1 %i.ae, label %.lr.ph12.preheader, label %bb.j

.lr.ph12.preheader:                               ; preds = %bb.i
  %i.af = add nsw i32 %i.z, -9                    ; 2 uses
  %xtraiter = and i32 %i.af, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph12.prol.loopexit, label %.lr.ph12.prol

.lr.ph12.prol:                                    ; preds = %.lr.ph12.preheader
  %i.ag = sdiv i32 %i.v, 10                       ; 2 uses
  %i.ah = add nsw i32 %i.z, -10
  br label %.lr.ph12.prol.loopexit

.lr.ph12.prol.loopexit:                           ; preds = %.lr.ph12.prol, %.lr.ph12.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph12.preheader ], [ %i.ag, %.lr.ph12.prol ]
  %.03511.unr = phi i32 [ %i.af, %.lr.ph12.preheader ], [ %i.ah, %.lr.ph12.prol ]
  %.13810.unr = phi i32 [ %i.v, %.lr.ph12.preheader ], [ %i.ag, %.lr.ph12.prol ]
  %i.ai = icmp eq i32 %i.z, 10
  br i1 %i.ai, label %.thread2, label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12.prol.loopexit, %.lr.ph12
  %.03511 = phi i32 [ %i.ak, %.lr.ph12 ], [ %.03511.unr, %.lr.ph12.prol.loopexit ]
  %.13810 = phi i32 [ %i.aj, %.lr.ph12 ], [ %.13810.unr, %.lr.ph12.prol.loopexit ]
  %i.aj = sdiv i32 %.13810, 100                   ; 2 uses
  %i.ak = add nsw i32 %.03511, -2                 ; 2 uses
  %.not48.1 = icmp eq i32 %i.ak, 0
  br i1 %.not48.1, label %.thread2, label %.lr.ph12, !llvm.loop !25

bb.j:                                             ; preds = %bb.i
  %.not476 = icmp eq i32 %i.z, 9
  br i1 %.not476, label %.thread2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.al = sub nsw i32 9, %i.z                     ; 5 uses
  %min.iters.check = icmp ult i32 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %i.al, -8                      ; 2 uses
  %i.am = and i32 %i.al, 7
  %i.an = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.v, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.an, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi25 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.ap, %vector.body ]
  %i.ao = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.ap = mul <4 x i32> %vec.phi25, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.aq = icmp eq i32 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.ap, %i.ao
  %i.ar = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.al, %n.vec
  br i1 %cmp.n, label %.thread2, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %.18.ph = phi i32 [ %i.al, %.lr.ph.preheader ], [ %i.am, %middle.block ]
  %.27.ph = phi i32 [ %i.v, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %.lr.ph
  %.18 = phi i32 [ %i.at, %.lr.ph ], [ %.18.ph, %.lr.ph.preheader26 ]
  %.27 = phi i32 [ %i.as, %.lr.ph ], [ %.27.ph, %.lr.ph.preheader26 ]
  %i.as = mul i32 %.27, 10                        ; 2 uses
  %i.at = add nsw i32 %.18, -1                    ; 2 uses
  %.not47 = icmp eq i32 %i.at, 0
  br i1 %.not47, label %.thread2, label %.lr.ph, !llvm.loop !27

.thread2:                                         ; preds = %.lr.ph, %.lr.ph12.prol.loopexit, %.lr.ph12, %middle.block, %bb.e, %bb.j, %bb.h
  %.3 = phi i32 [ 0, %bb.e ], [ %i.aj, %.lr.ph12 ], [ %i.v, %bb.j ], [ %i.v, %bb.h ], [ %i.ar, %middle.block ], [ %.lcssa.unr, %.lr.ph12.prol.loopexit ], [ %i.as, %.lr.ph ]
  %i.au = call i64 @mktime(ptr noundef nonnull %3) #16 ; 2 uses
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread2
  store i64 %i.au, ptr @ts_sec, align 8
  store i32 %.3, ptr @ts_nsec, align 4
  br label %bb.l

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.c, %.thread2, %bb.g, %bb.f, %bb.e, %.critedge
  %.140 = phi i1 [ false, %bb.g ], [ false, %.thread2 ], [ false, %.critedge ], [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.c ], [ true, %bb.k ], [ false, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i1 %.140
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @parse_seqno(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = tail call zeroext i1 @ws_buftou64(ptr noundef %0, i64 noundef %i.c, ptr noundef null, ptr noundef nonnull @seqno)
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__errno_location() #18
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call ptr @g_strerror(i32 noundef %i.f) #18 ; 2 uses
  tail call void (ptr, ...) @report_warning(ptr noundef nonnull @.str.3, ptr noundef %i.g)
  %i.h = load ptr, ptr @info_p, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 180
  %i.j = load i32, ptr %i.i, align 4
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 1212, ptr noundef nonnull @__func__.parse_seqno, ptr noundef nonnull @.str.4, i32 noundef %i.j, ptr noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_buftou64(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @g_strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @report_warning(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @flush_packet() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @write_current_packet(i1 noundef zeroext false) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 2) i32 @parse_token(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = tail call i32 @ws_log_get_level()
  %.not = icmp eq i32 %i.d, 0
  %.not37 = icmp eq ptr %1, null
  %or.cond = or i1 %.not37, %.not
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 13) #15 ; 2 uses
  %.not3868 = icmp eq ptr %i.e, null
  br i1 %.not3868, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.f = phi ptr [ %i.g, %.lr.ph ], [ %i.e, %.preheader ]
  store i8 32, ptr %i.f, align 1
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 13) #15 ; 2 uses
  %.not38 = icmp eq ptr %i.g, null
  br i1 %.not38, label %.loopexit, label %.lr.ph, !llvm.loop !30

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %i.h = load i32, ptr @state, align 4
  switch i32 %i.h, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.t
    i32 2, label %bb.as
    i32 3, label %bb.ba
    i32 4, label %bb.bk
  ]

bb.b:                                             ; preds = %.loopexit
  switch i32 %0, label %bb.bn [
    i32 5, label %bb.c
    i32 4, label %bb.d
    i32 3, label %bb.e
    i32 2, label %bb.e
    i32 1, label %bb.n
    i32 7, label %bb.s
  ]

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @append_to_preamble(ptr noundef %1)
  br label %bb.bn

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 10
  %i.j = tail call ptr @g_strsplit_set(ptr noundef %i.i, ptr noundef nonnull @.str.34, i32 noundef 2) ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 4, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef %i.k)
  tail call void @g_strfreev(ptr noundef %i.j)
  br label %bb.bn

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.l = load i32, ptr @offset_base, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @append_to_preamble(ptr noundef %1)
  %i.n = tail call ptr @g_strsplit_set(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 2) ; 3 uses
  %.b36 = load i1, ptr @offset_warned, align 1
  br i1 %.b36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8
  tail call void (ptr, ...) @report_warning(ptr noundef nonnull @.str.6, ptr noundef %i.o)
  store i1 true, ptr @offset_warned, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = load ptr, ptr %i.n, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 1470, ptr noundef nonnull @__func__.parse_token, ptr noundef nonnull @.str.6, ptr noundef %i.p)
  tail call void @g_strfreev(ptr noundef %i.n)
  br label %bb.bn
end_hunk_0
