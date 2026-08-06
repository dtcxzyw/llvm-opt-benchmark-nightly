begin_hunk_0_@write_current_packet:bb.a
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
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32                    ; 5 uses
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
  %i.af = add nsw i32 %i.z, -9                    ; 3 uses
  %i.ag = trunc i64 %i.w to i32
  %i.ah = add i32 %i.ag, -10
  %i.ai = trunc i64 %i.x to i32
  %5 = sub i32 %i.ah, %i.ai
  %xtraiter = and i32 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph12.prol.loopexit, label %.lr.ph12.prol

.lr.ph12.prol:                                    ; preds = %.lr.ph12.preheader, %.lr.ph12.prol
  %.03511.prol = phi i32 [ %6, %.lr.ph12.prol ], [ %i.af, %.lr.ph12.preheader ]
  %.14010.prol = phi i32 [ %i.aj, %.lr.ph12.prol ], [ %i.v, %.lr.ph12.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph12.prol ], [ 0, %.lr.ph12.preheader ]
  %i.aj = sdiv i32 %.14010.prol, 10               ; 3 uses
  %6 = add nsw i32 %.03511.prol, -1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph12.prol.loopexit, label %.lr.ph12.prol, !llvm.loop !25

.lr.ph12.prol.loopexit:                           ; preds = %.lr.ph12.prol, %.lr.ph12.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph12.preheader ], [ %i.aj, %.lr.ph12.prol ]
  %.03511.unr = phi i32 [ %i.af, %.lr.ph12.preheader ], [ %6, %.lr.ph12.prol ]
  %.14010.unr = phi i32 [ %i.v, %.lr.ph12.preheader ], [ %i.aj, %.lr.ph12.prol ]
  %7 = icmp ult i32 %5, 3
  br i1 %7, label %.thread2, label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12.prol.loopexit, %.lr.ph12
  %.03511 = phi i32 [ %i.al, %.lr.ph12 ], [ %.03511.unr, %.lr.ph12.prol.loopexit ]
  %.14010 = phi i32 [ %i.ak, %.lr.ph12 ], [ %.14010.unr, %.lr.ph12.prol.loopexit ]
  %i.ak = sdiv i32 %.14010, 10000                 ; 2 uses
  %i.al = add nsw i32 %.03511, -4                 ; 2 uses
  %.not48.3 = icmp eq i32 %i.al, 0
  br i1 %.not48.3, label %.thread2, label %.lr.ph12, !llvm.loop !27

bb.j:                                             ; preds = %bb.i
  %.not476 = icmp eq i32 %i.z, 9
  br i1 %.not476, label %.thread2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.am = sub nsw i32 9, %i.z                     ; 5 uses
  %min.iters.check = icmp ult i32 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %i.am, -8                      ; 2 uses
  %i.an = and i32 %i.am, 7
  %i.ao = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.v, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.ao, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi25 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.aq, %vector.body ]
  %i.ap = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.aq = mul <4 x i32> %vec.phi25, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ar = icmp eq i32 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.aq, %i.ap
  %i.as = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.am, %n.vec
  br i1 %cmp.n, label %.thread2, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %.18.ph = phi i32 [ %i.am, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  %.27.ph = phi i32 [ %i.v, %.lr.ph.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %.lr.ph
  %.18 = phi i32 [ %i.au, %.lr.ph ], [ %.18.ph, %.lr.ph.preheader26 ]
  %.27 = phi i32 [ %i.at, %.lr.ph ], [ %.27.ph, %.lr.ph.preheader26 ]
  %i.at = mul i32 %.27, 10                        ; 2 uses
  %i.au = add nsw i32 %.18, -1                    ; 2 uses
  %.not47 = icmp eq i32 %i.au, 0
  br i1 %.not47, label %.thread2, label %.lr.ph, !llvm.loop !31

.thread2:                                         ; preds = %.lr.ph, %.lr.ph12.prol.loopexit, %.lr.ph12, %middle.block, %bb.e, %bb.j, %bb.h
  %.3 = phi i32 [ 0, %bb.e ], [ %i.ak, %.lr.ph12 ], [ %i.v, %bb.j ], [ %i.v, %bb.h ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph12.prol.loopexit ], [ %i.at, %.lr.ph ]
  %i.av = call i64 @mktime(ptr noundef nonnull %3) #16 ; 2 uses
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread2
  store i64 %i.av, ptr @ts_sec, align 8
  store i32 %.3, ptr @ts_nsec, align 4
  br label %bb.l

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.c, %.thread2, %bb.g, %bb.f, %bb.e, %.critedge
  %.138 = phi i1 [ false, %bb.g ], [ false, %.thread2 ], [ false, %.critedge ], [ false, %bb.e ], [ false, %bb.f ], [ true, %bb.c ], [ true, %bb.k ], [ false, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i1 %.138
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
  br i1 %.not38, label %.loopexit, label %.lr.ph, !llvm.loop !32

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

bb.i:                                             ; preds = %bb.e
  %i.q = call fastcc i32 @parse_num(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %i.c)
  %.not57 = icmp eq i32 %i.q, 0
  br i1 %.not57, label %bb.j, label %bb.bo

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr %i.c, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = tail call fastcc i32 @start_new_packet(i1 noundef zeroext false)
  %.not58 = icmp eq i32 %i.t, 0
  br i1 %.not58, label %bb.l, label %bb.bo

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr @packet_start, align 4
  store i32 2, ptr @state, align 4
  %i.u = load ptr, ptr @packet_buf, align 8
  store ptr %i.u, ptr @pkt_lnstart, align 8
  br label %bb.bn

bb.m:                                             ; preds = %bb.j
  tail call fastcc void @append_to_preamble(ptr noundef %1)
  br label %bb.bn

bb.n:                                             ; preds = %bb.b
  %i.v = load i32, ptr @offset_base, align 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.x = tail call fastcc i32 @start_new_packet(i1 noundef zeroext false)
  %.not55 = icmp eq i32 %i.x, 0
  br i1 %.not55, label %bb.p, label %bb.bo

bb.p:                                             ; preds = %bb.o
  %i.y = tail call fastcc i32 @write_byte(ptr noundef %1)
  %.not56 = icmp eq i32 %i.y, 0
  br i1 %.not56, label %bb.q, label %bb.bo

bb.q:                                             ; preds = %bb.p
  store i32 3, ptr @state, align 4
  %i.z = load ptr, ptr @packet_buf, align 8
  store ptr %i.z, ptr @pkt_lnstart, align 8
  br label %bb.bn

bb.r:                                             ; preds = %bb.n
  tail call fastcc void @append_to_preamble(ptr noundef %1)
  br label %bb.bn

bb.s:                                             ; preds = %bb.b
  %i.aa = tail call fastcc i32 @write_current_packet(i1 noundef zeroext false)
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %bb.bn, label %bb.bo

bb.t:                                             ; preds = %.loopexit
  switch i32 %0, label %bb.bn [
    i32 5, label %bb.u
    i32 4, label %bb.w
    i32 3, label %bb.x
    i32 2, label %bb.x
    i32 1, label %bb.an
    i32 7, label %bb.ar
  ]

bb.u:                                             ; preds = %bb.t
  %i.ab = load i32, ptr @offset_base, align 4
  %.not53 = icmp eq i32 %i.ab, 0
  br i1 %.not53, label %bb.bn, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @append_to_preamble(ptr noundef %1)
  br label %bb.bn

bb.w:                                             ; preds = %bb.t
  %i.ac = getelementptr i8, ptr %1, i64 10
  %i.ad = tail call ptr @g_strsplit_set(ptr noundef %i.ac, ptr noundef nonnull @.str.34, i32 noundef 2) ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 4, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef %i.ae)
  tail call void @g_strfreev(ptr noundef %i.ad)
  br label %bb.bn

bb.x:                                             ; preds = %bb.t, %bb.t
  %i.af = load i32, ptr @offset_base, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ah = tail call ptr @g_strsplit_set(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 2) ; 3 uses
  %.b = load i1, ptr @offset_warned, align 1
  br i1 %.b, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void (ptr, ...) @report_warning(ptr noundef nonnull @.str.7, ptr noundef %i.ai)
  store i1 true, ptr @offset_warned, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.aj = load ptr, ptr %i.ah, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 1549, ptr noundef nonnull @__func__.parse_token, ptr noundef nonnull @.str.8, ptr noundef %i.aj)
  tail call void @g_strfreev(ptr noundef %i.ah)
  br label %bb.bn

bb.ab:                                            ; preds = %bb.x
  %i.ak = call fastcc i32 @parse_num(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %i.c)
  %.not48 = icmp eq i32 %i.ak, 0
  br i1 %.not48, label %bb.ac, label %bb.bo

bb.ac:                                            ; preds = %bb.ab
  %i.al = load i32, ptr %i.c, align 4             ; 7 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.an = tail call fastcc i32 @start_new_packet(i1 noundef zeroext false)
  %.not52 = icmp eq i32 %i.an, 0
  br i1 %.not52, label %bb.ae, label %bb.bo

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr @packet_start, align 4
  br label %bb.am

bb.af:                                            ; preds = %bb.ac
  %i.ao = load i32, ptr @packet_start, align 4
  %i.ap = sub i32 %i.al, %i.ao
  %i.aq = load i32, ptr @curr_offset, align 4     ; 2 uses
  %.not49 = icmp eq i32 %i.ap, %i.aq
  br i1 %.not49, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ar = icmp ult i32 %i.al, %i.aq
  br i1 %i.ar, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.as = load ptr, ptr @pkt_lnstart, align 8
  %i.at = load ptr, ptr @packet_buf, align 8
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %.not50 = icmp ult i32 %i.al, %i.ax
  br i1 %.not50, label %bb.aj, label %bb.ai
end_hunk_0
begin_hunk_1_@parse_token:bb.a

write_byte.exit.thread:                           ; preds = %bb.at, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.bo

write_byte.exit:                                  ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.bn

bb.aw:                                            ; preds = %bb.as
  store i32 3, ptr @state, align 4
  %i.bx = tail call fastcc i32 @write_bytes(ptr noundef %1)
  %.not44 = icmp eq i32 %i.bx, 0
  br i1 %.not44, label %bb.bn, label %bb.bo

bb.ax:                                            ; preds = %bb.as, %bb.as, %bb.as
  store i32 4, ptr @state, align 4
  br label %bb.bn

bb.ay:                                            ; preds = %bb.as
  store i32 1, ptr @state, align 4
  br label %bb.bn

bb.az:                                            ; preds = %bb.as
  %i.by = tail call fastcc i32 @write_current_packet(i1 noundef zeroext false)
  %.not43 = icmp eq i32 %i.by, 0
  br i1 %.not43, label %bb.bn, label %bb.bo

bb.ba:                                            ; preds = %.loopexit
  switch i32 %0, label %bb.bn [
    i32 1, label %bb.bb
    i32 2, label %bb.be
    i32 5, label %bb.bf
    i32 4, label %bb.bf
    i32 3, label %bb.bf
    i32 6, label %bb.bh
    i32 7, label %bb.bj
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bz = call fastcc i32 @parse_num(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %i.a)
  %.not.i59 = icmp eq i32 %i.bz, 0
  br i1 %.not.i59, label %bb.bc, label %write_byte.exit63.thread

bb.bc:                                            ; preds = %bb.bb
  %i.ca = load i32, ptr %i.a, align 4
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = load ptr, ptr @packet_buf, align 8
  %i.cd = load i32, ptr @curr_offset, align 4     ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %i.cc, i64 %i.ce
  store i8 %i.cb, ptr %i.cf, align 1
  %i.cg = add i32 %i.cd, 1                        ; 2 uses
  store i32 %i.cg, ptr @curr_offset, align 4
  %i.ch = load ptr, ptr @info_p, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 176
  %i.cj = load i32, ptr %i.ci, align 8
  %.not1.i61 = icmp ult i32 %i.cg, %i.cj
  br i1 %.not1.i61, label %write_byte.exit63, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ck = tail call fastcc i32 @start_new_packet(i1 noundef zeroext true)
  %.not2.i62 = icmp eq i32 %i.ck, 0
  br i1 %.not2.i62, label %write_byte.exit63, label %write_byte.exit63.thread

write_byte.exit63.thread:                         ; preds = %bb.bb, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.bo

write_byte.exit63:                                ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.bn

bb.be:                                            ; preds = %bb.ba
  %i.cl = tail call fastcc i32 @write_bytes(ptr noundef %1)
  %.not41 = icmp eq i32 %i.cl, 0
  br i1 %.not41, label %bb.bn, label %bb.bo

bb.bf:                                            ; preds = %bb.ba, %bb.ba, %bb.ba
  store i32 4, ptr @state, align 4
  %i.cm = load ptr, ptr @info_p, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 37
  %i.co = load i8, ptr %i.cn, align 1, !range !9, !noundef !10
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  tail call fastcc void @process_rollback(i1 noundef zeroext false)
  br label %bb.bn

bb.bh:                                            ; preds = %bb.ba
  store i32 1, ptr @state, align 4
  %i.cq = load ptr, ptr @info_p, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 37
  %i.cs = load i8, ptr %i.cr, align 1, !range !9, !noundef !10
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  tail call fastcc void @process_rollback(i1 noundef zeroext true)
  br label %bb.bn

bb.bj:                                            ; preds = %bb.ba
  %i.cu = tail call fastcc i32 @write_current_packet(i1 noundef zeroext false)
  %.not40 = icmp eq i32 %i.cu, 0
  br i1 %.not40, label %bb.bn, label %bb.bo

bb.bk:                                            ; preds = %.loopexit
  switch i32 %0, label %bb.bn [
    i32 6, label %bb.bl
    i32 7, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  store i32 1, ptr @state, align 4
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.cv = tail call fastcc i32 @write_current_packet(i1 noundef zeroext false)
  %.not39 = icmp eq i32 %i.cv, 0
  br i1 %.not39, label %bb.bn, label %bb.bo

default.unreachable:                              ; preds = %.loopexit
  unreachable

bb.bn:                                            ; preds = %write_byte.exit63, %write_byte.exit, %bb.b, %bb.s, %bb.l, %bb.m, %bb.r, %bb.q, %bb.h, %bb.d, %bb.c, %bb.t, %bb.ar, %bb.u, %bb.v, %bb.aq, %bb.ap, %bb.am, %bb.aa, %bb.w, %bb.as, %bb.az, %bb.aw, %bb.ay, %bb.ax, %bb.ba, %bb.bj, %bb.bh, %bb.bi, %bb.bf, %bb.bg, %bb.be, %bb.bk, %bb.bm, %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %write_byte.exit63.thread, %write_byte.exit.thread, %bb.bm, %bb.bj, %bb.be, %bb.az, %bb.aw, %bb.ar, %bb.ao, %bb.aj, %bb.ad, %bb.ab, %bb.s, %bb.p, %bb.o, %bb.k, %bb.i, %bb.bn
  %.0 = phi i32 [ 1, %bb.bj ], [ 0, %bb.bn ], [ 1, %bb.be ], [ 1, %bb.i ], [ 1, %bb.k ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.s ], [ 1, %bb.ab ], [ 1, %bb.ad ], [ 1, %bb.aj ], [ 1, %bb.ao ], [ 1, %bb.ar ], [ 1, %write_byte.exit.thread ], [ 1, %bb.aw ], [ 1, %bb.az ], [ 1, %write_byte.exit63.thread ], [ 1, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @ws_log_get_level() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @append_to_preamble(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 5 uses
  %i.b = load i32, ptr @packet_preamble_len, align 4 ; 3 uses
  switch i32 %i.b, label %bb.b [
    i32 0, label %bb.c
    i32 2048, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr @packet_preamble_len, align 4
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr i8, ptr @packet_preamble, i64 %i.d
  store i8 32, ptr %i.e, align 1
  %i.f = sext i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ 0, %bb.a ], [ %i.f, %bb.b ]    ; 2 uses
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.33)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15 ; 3 uses
  %.not11 = icmp eq i64 %i.i, 0
  %i.j = add i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.j, 2048
  %or.cond = or i1 %.not11, %i.k
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr @packet_preamble, i64 %i.g
  %i.m = tail call i64 @g_strlcpy(ptr noundef %i.l, ptr noundef nonnull %0, i64 noundef 2048) ; 0 uses
  %i.n = trunc i64 %i.i to i32
  %i.o = load i32, ptr @packet_preamble_len, align 4
  %i.p = add i32 %i.o, %i.n
  store i32 %i.p, ptr @packet_preamble_len, align 4
  %i.q = tail call i32 @ws_log_get_level()
  %.not12 = icmp eq i32 %i.q, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.r = call i64 @g_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull @packet_preamble, i64 noundef 2048) ; 0 uses
  %i.s = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 13) #15 ; 2 uses
  %.not1314 = icmp eq ptr %i.s, null
  br i1 %.not1314, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %i.t = phi ptr [ %i.u, %.lr.ph ], [ %i.s, %bb.g ]
  store i8 32, ptr %i.t, align 1
  %i.u = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 13) #15 ; 2 uses
  %.not13 = icmp eq ptr %i.u, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %._crit_edge, %bb.f, %bb.a, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_strsplit_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_strfreev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_num(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.33)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #18    ; 2 uses
  store i32 0, ptr %i.c, align 4
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %i.d = load i32, ptr @offset_base, align 4
  %i.e = select i1 %.not, i32 16, i32 %i.d
  %i.f = call i64 @strtoul(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %i.e) #16 ; 2 uses
  %i.g = load i32, ptr %i.c, align 4              ; 2 uses
  %.not15 = icmp eq i32 %i.g, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @offset_base, align 4
  %i.i = select i1 %.not, i32 16, i32 %i.h
  %i.j = tail call ptr @g_strerror(i32 noundef %i.g) #18
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.36, ptr noundef nonnull %0, i32 noundef %i.i, ptr noundef %i.j)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = icmp eq ptr %i.k, %0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr @offset_base, align 4
  %i.n = select i1 %.not, i32 16, i32 %i.m
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.37, ptr noundef nonnull %0, i32 noundef %i.n)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %i.f, 4294967295
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.38, ptr noundef nonnull %0)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = trunc nuw i64 %i.f to i32
  store i32 %i.p, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.i, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.h ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @start_new_packet(i1 noundef zeroext %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @write_current_packet(i1 noundef zeroext %0)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @info_p, align 8           ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 180      ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4
  %i.f = load i32, ptr @packet_preamble_len, align 4 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr @packet_preamble, i64 %i.g
  store i8 0, ptr %i.h, align 1
  %i.i = load i8, ptr @has_direction, align 1, !range !9, !noundef !10
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr @packet_preamble, align 16
  %i.l = load i32, ptr @direction, align 4
  %i.m = and i32 %i.l, -4                         ; 3 uses
  switch i8 %i.k, label %_parse_dir.exit.i [
    i8 105, label %bb.d
    i8 73, label %bb.d
    i8 111, label %.critedge2.i.i
    i8 79, label %.critedge2.i.i
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.n = or disjoint i32 %i.m, 1
  br label %_parse_dir.exit.i

.critedge2.i.i:                                   ; preds = %bb.c, %bb.c
  %i.o = or disjoint i32 %i.m, 2
  br label %_parse_dir.exit.i

_parse_dir.exit.i:                                ; preds = %.critedge2.i.i, %bb.d, %bb.c
  %.sink.i.i = phi i32 [ %i.n, %bb.d ], [ %i.o, %.critedge2.i.i ], [ %i.m, %bb.c ] ; 2 uses
  store i32 %.sink.i.i, ptr @direction, align 4
  %i.p = icmp ne i32 %.sink.i.i, 0
  %i.q = zext i1 %i.p to i32
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i, %_parse_dir.exit.i
  %.0.i = phi i32 [ %i.q, %_parse_dir.exit.i ], [ %i.u, %.critedge.i ] ; 3 uses
  %i.r = sext i32 %.0.i to i64                    ; 2 uses
  %i.s = getelementptr i8, ptr @packet_preamble, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  switch i8 %i.t, label %bb.f [
    i8 32, label %.critedge.i
    i8 13, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.e, %bb.e, %bb.e
  %i.u = add i32 %.0.i, 1
  br label %bb.e, !llvm.loop !34

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr @packet_preamble, i64 %i.r
  %i.w = sub i32 %i.f, %.0.i                      ; 2 uses
  store i32 %i.w, ptr @packet_preamble_len, align 4
  %i.x = add i32 %i.w, 1
  %i.y = sext i32 %i.x to i64
  %i.z = tail call ptr @__memmove_chk(ptr noundef nonnull @packet_preamble, ptr noundef %i.v, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i64 noundef 2049) #16 ; 0 uses
  %.pre = load ptr, ptr @info_p, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.aa = phi ptr [ %.pre, %bb.f ], [ %i.b, %bb.b ]
  %i.ab = getelementptr i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @packet_preamble) #15 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 2
  br i1 %i.ae, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr @packet_preamble, i64 %i.ad
  %i.ag = tail call fastcc zeroext i1 @_parse_time(ptr noundef nonnull @packet_preamble, ptr noundef %i.af, ptr noundef %i.ac)
  br i1 %i.ag, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.b.i = load i1, ptr @timecode_warned, align 1
  br i1 %.b.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr @info_p, align 8          ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.ah, i64 180
  %i.al = load i32, ptr %i.ak, align 4
  tail call void (ptr, ...) @report_warning(ptr noundef nonnull @.str.41, ptr noundef %i.aj, i32 noundef 1000, ptr noundef nonnull @packet_preamble, i32 noundef %i.al)
  store i1 true, ptr @timecode_warned, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = load ptr, ptr @info_p, align 8          ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.am, i64 180
  %i.aq = load i32, ptr %i.ap, align 4
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 1265, ptr noundef nonnull @__func__.parse_preamble, ptr noundef nonnull @.str.42, ptr noundef %i.ao, ptr noundef nonnull @packet_preamble, i32 noundef %i.aq)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.g
  %.08.shrunk.i = phi i1 [ true, %bb.i ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.g ]
  %i.ar = tail call i32 @ws_log_get_level()
  %.not13.i = icmp eq i32 %i.ar, 0
  br i1 %.not13.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.as = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @packet_preamble, i32 noundef 13) #15 ; 2 uses
  %.not1416.i = icmp eq ptr %i.as, null
  br i1 %.not1416.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.at = phi ptr [ %i.au, %.lr.ph.i ], [ %i.as, %.preheader.i ]
  store i8 32, ptr %i.at, align 1
  %i.au = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @packet_preamble, i32 noundef 13) #15 ; 2 uses
  %.not14.i = icmp eq ptr %i.au, null
  br i1 %.not14.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !35

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i, %bb.m
  br i1 %.08.shrunk.i, label %parse_preamble.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  %i.av = load i32, ptr @ts_nsec, align 4
  %i.aw = add i32 %i.av, 1000
  store i32 %i.aw, ptr @ts_nsec, align 4
  br label %parse_preamble.exit

parse_preamble.exit:                              ; preds = %.loopexit.i, %bb.n
  store i32 0, ptr @packet_preamble_len, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %parse_preamble.exit
  %.0 = phi i32 [ 0, %parse_preamble.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @write_byte(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call fastcc i32 @parse_num(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4
  %i.d = trunc i32 %i.c to i8
  %i.e = load ptr, ptr @packet_buf, align 8
  %i.f = load i32, ptr @curr_offset, align 4      ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 %i.g
  store i8 %i.d, ptr %i.h, align 1
  %i.i = add i32 %i.f, 1                          ; 2 uses
  store i32 %i.i, ptr @curr_offset, align 4
  %i.j = load ptr, ptr @info_p, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 176
  %i.l = load i32, ptr %i.k, align 8
  %.not1 = icmp ult i32 %i.i, %i.l
  br i1 %.not1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc i32 @start_new_packet(i1 noundef zeroext true)
  %.not2 = icmp eq i32 %i.m, 0
  br i1 %.not2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @write_bytes(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call fastcc i32 @parse_num(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef %0) #15
  %i.d = trunc i64 %i.c to i32
  %i.e = load ptr, ptr @info_p, align 8           ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 38
  %i.g = load i8, ptr %i.f, align 2, !range !9, !noundef !10
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = shl i32 %i.d, 2                          ; 3 uses
  br i1 %i.h, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %.not2130 = icmp sgt i32 %i.i, 0
  br i1 %.not2130, label %.lr.ph32, label %.critedge

.lr.ph32:                                         ; preds = %.preheader
  %i.j = load i32, ptr %i.a, align 4
  %.pre44 = load ptr, ptr @packet_buf, align 8
  %.pre46 = load i32, ptr @curr_offset, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph32, %bb.e
  %i.k = phi ptr [ %i.e, %.lr.ph32 ], [ %i.v, %bb.e ] ; 2 uses
  %i.l = phi i32 [ %.pre46, %.lr.ph32 ], [ %i.w, %bb.e ] ; 2 uses
  %i.m = phi ptr [ %.pre44, %.lr.ph32 ], [ %i.x, %bb.e ] ; 2 uses
  %.01331 = phi i32 [ 0, %.lr.ph32 ], [ %i.y, %bb.e ] ; 2 uses
  %i.n = lshr i32 %i.j, %.01331
  %i.o = trunc i32 %i.n to i8
  %i.p = zext i32 %i.l to i64
  %i.q = getelementptr i8, ptr %i.m, i64 %i.p
  store i8 %i.o, ptr %i.q, align 1
  %i.r = add i32 %i.l, 1                          ; 3 uses
  store i32 %i.r, ptr @curr_offset, align 4
  %i.s = getelementptr i8, ptr %i.k, i64 176
  %i.t = load i32, ptr %i.s, align 8
  %.not19 = icmp ult i32 %i.r, %i.t
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call fastcc i32 @start_new_packet(i1 noundef zeroext true)
  %.not20 = icmp eq i32 %i.u, 0
  %.pre43 = load ptr, ptr @packet_buf, align 8
  %.pre45 = load i32, ptr @curr_offset, align 4
  %.pre47 = load ptr, ptr @info_p, align 8
  br i1 %.not20, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.k, %bb.c ], [ %.pre47, %bb.d ]
  %i.w = phi i32 [ %i.r, %bb.c ], [ %.pre45, %bb.d ]
  %i.x = phi ptr [ %i.m, %bb.c ], [ %.pre43, %bb.d ]
  %i.y = add i32 %.01331, 8                       ; 2 uses
  %.not21 = icmp slt i32 %i.y, %i.i
  br i1 %.not21, label %bb.c, label %.critedge, !llvm.loop !36

bb.f:                                             ; preds = %bb.b
  %.026 = add i32 %i.i, -8                        ; 2 uses
  %i.z = icmp slt i32 %.026, 0
  br i1 %i.z, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.aa = load i32, ptr %i.a, align 4
  %.pre38 = load ptr, ptr @packet_buf, align 8
  %.pre40 = load i32, ptr @curr_offset, align 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %i.ab = phi ptr [ %i.e, %.lr.ph ], [ %i.am, %bb.i ] ; 2 uses
  %i.ac = phi i32 [ %.pre40, %.lr.ph ], [ %i.an, %bb.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre38, %.lr.ph ], [ %i.ao, %bb.i ] ; 2 uses
  %.027 = phi i32 [ %.026, %.lr.ph ], [ %.0, %bb.i ] ; 3 uses
  %i.ae = lshr i32 %i.aa, %.027
  %i.af = trunc i32 %i.ae to i8
  %i.ag = zext i32 %i.ac to i64
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.ag
  store i8 %i.af, ptr %i.ah, align 1
  %i.ai = add i32 %i.ac, 1                        ; 3 uses
  store i32 %i.ai, ptr @curr_offset, align 4
  %i.aj = getelementptr i8, ptr %i.ab, i64 176
  %i.ak = load i32, ptr %i.aj, align 8
  %.not17 = icmp ult i32 %i.ai, %i.ak
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = tail call fastcc i32 @start_new_packet(i1 noundef zeroext true)
  %.not18 = icmp eq i32 %i.al, 0
  %.pre = load ptr, ptr @packet_buf, align 8
  %.pre39 = load i32, ptr @curr_offset, align 4
  %.pre41 = load ptr, ptr @info_p, align 8
  br i1 %.not18, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.am = phi ptr [ %i.ab, %bb.g ], [ %.pre41, %bb.h ]
  %i.an = phi i32 [ %i.ai, %bb.g ], [ %.pre39, %bb.h ]
  %i.ao = phi ptr [ %i.ad, %bb.g ], [ %.pre, %bb.h ]
  %.0 = add nsw i32 %.027, -8
  %i.ap = icmp slt i32 %.027, 8
  br i1 %i.ap, label %.critedge, label %bb.g, !llvm.loop !37

.critedge:                                        ; preds = %bb.h, %bb.i, %bb.d, %bb.e, %bb.f, %.preheader, %bb.a
  %.3 = phi i32 [ 1, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %.preheader ], [ 1, %bb.d ], [ 0, %bb.i ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.3
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @process_rollback(i1 noundef zeroext %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = load i32, ptr @curr_offset, align 4
  %i.c = load ptr, ptr @pkt_lnstart, align 8
  %i.d = load ptr, ptr @packet_buf, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %.neg = sub i64 %i.f, %i.e
  %.neg36 = trunc i64 %.neg to i32
  %i.g = add i32 %i.b, %.neg36                    ; 7 uses
  %i.h = tail call ptr @g_string_new(ptr noundef null) ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.k = load ptr, ptr @g_ascii_table, align 8    ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  %i.l = getelementptr i8, ptr %i.h, i64 8        ; 3 uses
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = icmp sgt i32 %i.g, 1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.outer
  %i.o = phi i32 [ %i.bi, %.outer ], [ 1, %bb.a ]
  %.0.ph72 = phi i32 [ %.1, %.outer ], [ 0, %bb.a ] ; 10 uses
  %.030.ph71 = phi i32 [ %.131, %.outer ], [ 0, %bb.a ]
  %.032.ph70 = phi i32 [ %.133, %.outer ], [ 0, %bb.a ] ; 2 uses
  %i.p = load ptr, ptr @pkt_lnstart, align 8      ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.q = add i32 %i.t, 1                          ; 2 uses
  %i.r = add i32 %i.q, %.0.ph72
  %i.s = icmp slt i32 %i.r, %i.g
  br i1 %i.s, label %bb.c, label %.loopexit, !llvm.loop !38

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.t = phi i32 [ %i.o, %.lr.ph ], [ %i.q, %bb.b ] ; 3 uses
  %.03068 = phi i32 [ %.030.ph71, %.lr.ph ], [ %i.t, %bb.b ] ; 3 uses
  %i.u = sext i32 %.03068 to i64
  %i.v = getelementptr i8, ptr %i.p, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1               ; 3 uses
  %i.x = icmp eq i8 %i.w, 32
  br i1 %i.x, label %bb.b, label %bb.d, !llvm.loop !38

bb.d:                                             ; preds = %bb.c
  store i8 %i.w, ptr %i.a, align 1
  %i.y = sext i32 %i.t to i64
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  store i8 %i.aa, ptr %i.i, align 1
  store i8 0, ptr %i.j, align 1
  %i.ab = zext i8 %i.w to i64
  %i.ac = getelementptr [2 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = and i16 %i.ad, 1024
  %.not = icmp eq i16 %i.ae, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = zext i8 %i.aa to i64
  %i.ag = getelementptr [2 x i8], ptr %i.k, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = and i16 %i.ah, 1024
  %.not37 = icmp eq i16 %i.ai, 0
  br i1 %.not37, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = call i64 @strtoul(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 16) #16
  %i.ak = trunc i64 %i.aj to i8                   ; 2 uses
  br i1 %.not.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.l, align 8             ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 2 uses
  %i.an = load i64, ptr %i.m, align 8
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %i.ap = tail call ptr @g_string_insert_c(ptr noundef %i.h, i64 noundef -1, i8 noundef signext %i.ak) ; 0 uses
  br label %g_string_append_c_inline.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.h, align 8
  store i64 %i.am, ptr %i.l, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.al
  store i8 %i.ak, ptr %i.ar, align 1
  %i.as = load ptr, ptr %i.h, align 8
  %i.at = load i64, ptr %i.l, align 8
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at
  store i8 0, ptr %i.au, align 1
  br label %g_string_append_c_inline.exit

g_string_append_c_inline.exit:                    ; preds = %.critedge.i, %bb.h
  %i.av = add i32 %.03068, 2                      ; 4 uses
  br i1 %0, label %bb.i, label %bb.j

bb.i:                                             ; preds = %g_string_append_c_inline.exit
  %i.aw = add i32 %.0.ph72, 1
  br label %.outer

bb.j:                                             ; preds = %g_string_append_c_inline.exit
  %i.ax = add i32 %.032.ph70, 1                   ; 3 uses
  %i.ay = add i32 %i.av, %.0.ph72
  %i.az = icmp slt i32 %i.ay, %i.g
  br i1 %i.az, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr @pkt_lnstart, align 8
  %i.bb = sext i32 %i.av to i64
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 32
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = add i32 %.0.ph72, %i.ax
  %i.bg = add i32 %.03068, 3
  br label %.outer

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp sgt i32 %i.ax, 3
  br i1 %i.bh, label %.loopexit, label %.outer

.outer:                                           ; preds = %bb.l, %bb.m, %bb.i
  %.133 = phi i32 [ %.032.ph70, %bb.i ], [ 0, %bb.l ], [ %i.ax, %bb.m ]
  %.131 = phi i32 [ %i.av, %bb.i ], [ %i.bg, %bb.l ], [ %i.av, %bb.m ] ; 2 uses
  %.1 = phi i32 [ %i.aw, %bb.i ], [ %i.bf, %bb.l ], [ %.0.ph72, %bb.m ] ; 3 uses
  %i.bi = add i32 %.131, 1                        ; 2 uses
  %i.bj = add i32 %i.bi, %.1
  %i.bk = icmp slt i32 %i.bj, %i.g
  br i1 %i.bk, label %.lr.ph, label %.loopexit, !llvm.loop !38

.loopexit:                                        ; preds = %bb.m, %bb.j, %bb.d, %bb.e, %.outer, %bb.b, %bb.a
  %.0.ph67 = phi i32 [ 0, %bb.a ], [ %.0.ph72, %bb.b ], [ %.0.ph72, %bb.j ], [ %.0.ph72, %bb.d ], [ %.0.ph72, %bb.e ], [ %.1, %.outer ], [ %.0.ph72, %bb.m ] ; 5 uses
  %i.bl = icmp sgt i32 %.0.ph67, 0
  br i1 %i.bl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.loopexit
  %i.bm = load ptr, ptr @pkt_lnstart, align 8
  %i.bn = sext i32 %i.g to i64
  %i.bo = getelementptr i8, ptr %i.bm, i64 %i.bn
  %i.bp = zext nneg i32 %.0.ph67 to i64           ; 2 uses
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.bq
  %i.bs = load ptr, ptr %i.h, align 8
  %i.bt = tail call i32 @strncmp(ptr noundef %i.br, ptr noundef %i.bs, i64 noundef %i.bp) #15
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @report_warning(ptr noundef nonnull @.str.43)
  %i.bv = icmp eq i32 %.0.ph67, 1
  %i.bw = select i1 %i.bv, ptr @.str.23, ptr @.str.45
  %i.bx = load i32, ptr @curr_offset, align 4
  %i.by = sub i32 %i.bx, %i.g
  %i.bz = load ptr, ptr @info_p, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 180
  %i.cb = load i32, ptr %i.ca, align 4
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 4, ptr noundef null, i64 noundef -1, ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef %.0.ph67, ptr noundef nonnull %i.bw, i32 noundef %i.by, i32 noundef %i.cb)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o
  %.0.ph60.sink = phi i32 [ %i.g, %bb.o ], [ %.0.ph67, %bb.n ]
  %i.cc = load i32, ptr @curr_offset, align 4
  %i.cd = sub i32 %i.cc, %.0.ph60.sink
  store i32 %i.cd, ptr @curr_offset, align 4
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %.loopexit
  %i.ce = tail call ptr @g_string_free(ptr noundef %i.h, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @report_failure(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 9) i32 @text_import(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr @state, align 4
  store i32 0, ptr @curr_offset, align 4
  store i32 0, ptr @packet_start, align 4
  store i32 0, ptr @packet_preamble_len, align 4
  store i32 0, ptr @direction, align 4
  %i.a = tail call i64 @time(ptr noundef null) #16
  store i64 %i.a, ptr @ts_sec, align 8
  %i.b = tail call ptr @localtime(ptr noundef nonnull @ts_sec) #16 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.12)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @timecode_default, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @timecode_default, i64 32), align 8
  store i32 0, ptr @ts_nsec, align 4
  store ptr %0, ptr @info_p, align 8
  %i.d = getelementptr i8, ptr %0, i64 176
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ugt i32 %i.e, 262144
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.13, i32 noundef %i.e, i32 noundef 262144)
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  store i1 false, ptr @hdr_ethernet, align 1
  store i1 false, ptr @hdr_ip, align 1
  store i1 false, ptr @hdr_udp, align 1
  store i1 false, ptr @hdr_tcp, align 1
  store i1 false, ptr @hdr_sctp, align 1
  store i1 false, ptr @hdr_data_chunk, align 1
  store i1 false, ptr @hdr_export_pdu, align 1
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  switch i32 %i.h, label %bb.i [
    i32 0, label %bb.f
    i32 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp ult i32 %i.j, 4
  br i1 %i.k, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %bb.f
  %i.l = zext nneg i32 %i.j to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.text_import, i64 %i.l
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr @offset_base, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %switch.lookup
  %i.m = getelementptr i8, ptr %0, i64 36
  %i.n = load i8, ptr %i.m, align 4, !range !9, !noundef !10
  store i8 %i.n, ptr @has_direction, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 @g_regex_get_string_number(ptr noundef %i.p, ptr noundef nonnull @.str.14)
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr @has_direction, align 1
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = tail call i32 @g_regex_get_string_number(ptr noundef %i.t, ptr noundef nonnull @.str.15)
  %i.v = icmp sgt i32 %i.u, -1
  %i.w = zext i1 %i.v to i8
  store i8 %i.w, ptr @has_seqno, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %i.x = getelementptr i8, ptr %0, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.16)
  %.not = icmp eq i32 %i.aa, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge = phi i1 [ false, %bb.i ], [ %.not, %bb.j ]
  store i1 %storemerge, ptr @ts_fmt_iso, align 1
  store i1 false, ptr @offset_warned, align 1
  store i1 false, ptr @timecode_warned, align 1
  %i.ab = getelementptr i8, ptr %0, i64 104
  %i.ac = load i32, ptr %i.ab, align 8
  switch i32 %i.ac, label %bb.s [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 7, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_ethernet, align 1
  %i.ad = getelementptr i8, ptr %0, i64 108
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %i.ae, ptr @hdr_ethernet_proto, align 4
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_ip, align 1
  %i.af = getelementptr i8, ptr %0, i64 148
  %i.ag = load i32, ptr %i.af, align 4
  br label %.thread.sink.split

bb.n:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_udp, align 1
  store i1 false, ptr @hdr_tcp, align 1
  store i1 true, ptr @hdr_ip, align 1
  br label %.thread.sink.split

bb.o:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_tcp, align 1
  store i1 false, ptr @hdr_udp, align 1
  store i1 true, ptr @hdr_ip, align 1
  br label %.thread.sink.split

bb.p:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_sctp, align 1
  store i1 true, ptr @hdr_ip, align 1
  br label %.thread.sink.split

bb.q:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_sctp, align 1
  store i1 true, ptr @hdr_data_chunk, align 1
  store i1 true, ptr @hdr_ip, align 1
  br label %.thread.sink.split

bb.r:                                             ; preds = %bb.k
  store i1 true, ptr @hdr_export_pdu, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.r, %bb.l
  %.b.pr = load i1, ptr @hdr_ip, align 1
  br i1 %.b.pr, label %.thread, label %bb.ab

.thread.sink.split:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
end_hunk_1
begin_hunk_2_@text_import:bb.a
    i32 0, label %bb.ae
    i32 1, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.aw = getelementptr i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call i32 @text_import_scan(ptr noundef %i.ax)
  switch i32 %i.ay, label %bb.ag [
    i32 2, label %bb.af
    i32 1, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %i.az = tail call ptr @__errno_location() #18
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call ptr @g_strerror(i32 noundef %i.ba) #18
  tail call void (ptr, ...) @report_failure(ptr noundef nonnull @.str.21, ptr noundef %i.bb)
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ae
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ad
  %i.bc = tail call i32 @text_import_regex(ptr noundef %0) ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.bc, ptr %i.ar, align 4
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %.not45 = icmp eq i32 %i.bc, 0
  %spec.store.select = select i1 %.not45, i32 0, i32 3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ad, %bb.ae, %bb.aj, %bb.ai, %bb.af, %bb.ag
  %.034 = phi i32 [ 0, %bb.ag ], [ 3, %bb.ae ], [ %spec.store.select, %bb.aj ], [ 8, %bb.af ], [ 0, %bb.ai ], [ 1, %bb.ad ]
  %i.be = load ptr, ptr @packet_buf, align 8
  tail call void @g_free(ptr noundef %i.be)
  tail call void @ws_buffer_free(ptr noundef nonnull @prefix_buf)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ac, %bb.aa, %bb.z, %bb.x, %bb.d, %bb.b
  %.0 = phi i32 [ 8, %bb.b ], [ 8, %bb.d ], [ 1, %bb.aa ], [ %.034, %bb.ak ], [ 8, %bb.ac ], [ 1, %bb.x ], [ 1, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nounwind null_pointer_is_valid
declare i64 @time(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @localtime(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_regex_get_string_number(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_encap_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_encap_description(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @text_import_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @text_import_regex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef i32 @text_import_pre_open(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = tail call i32 @wtap_file_type_subtype_supports_block(i32 noundef %1, i32 noundef 0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @wtap_file_type_subtype_supports_option(i32 noundef %1, i32 noundef 0, i32 noundef 1)
  %.not56 = icmp eq i32 %i.d, 0
  br i1 %.not56, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @wtap_block_create(i32 noundef 0) ; 5 uses
  store ptr %i.e, ptr %i.a, align 8
  %i.f = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef %2) ; 3 uses
  %i.g = tail call i64 @strlen(ptr noundef %i.f) #15
  %i.h = tail call i32 @wtap_block_add_string_option(ptr noundef %i.e, i32 noundef 1, ptr noundef %i.f, i64 noundef %i.g) ; 0 uses
  tail call void @g_free(ptr noundef %i.f)
  %i.i = tail call ptr @g_string_new(ptr noundef nonnull @.str.23) ; 4 uses
  tail call void @get_cpu_info(ptr noundef %i.i)
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not57 = icmp eq ptr %i.j, null
  br i1 %.not57, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i32 @wtap_block_add_string_option(ptr noundef %i.e, i32 noundef 2, ptr noundef nonnull %i.j, i64 noundef %i.l) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = tail call ptr @g_string_free(ptr noundef %i.i, i32 noundef 1) ; 0 uses
  %i.o = tail call ptr @g_string_new(ptr noundef nonnull @.str.23) ; 4 uses
  tail call void @get_os_version_info(ptr noundef %i.o)
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not58 = icmp eq ptr %i.p, null
  br i1 %.not58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call i32 @wtap_block_add_string_option(ptr noundef %i.e, i32 noundef 3, ptr noundef nonnull %i.p, i64 noundef %i.r) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = tail call ptr @g_string_free(ptr noundef %i.o, i32 noundef 1) ; 0 uses
  %i.u = tail call ptr @get_appname_and_version()
  %i.v = tail call i32 (ptr, i32, ptr, ...) @wtap_block_add_string_option_format(ptr noundef %i.e, i32 noundef 4, ptr noundef nonnull @.str.24, ptr noundef %i.u) ; 0 uses
  %i.w = tail call ptr @g_array_new(i32 noundef 0, i32 noundef 0, i32 noundef 8) ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.x, align 8
  %i.y = call ptr @g_array_append_vals(ptr noundef %i.w, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.a
  %i.z = call i32 @wtap_file_type_subtype_supports_block(i32 noundef %1, i32 noundef 1)
  %.not59 = icmp eq i32 %i.z, 0
  br i1 %.not59, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call ptr @wtap_block_create(i32 noundef 1) ; 5 uses
  store ptr %i.aa, ptr %i.b, align 8
  %i.ab = call ptr @wtap_block_get_mandatory_data(ptr noundef %i.aa) ; 3 uses
  %i.ac = load i32, ptr %0, align 8
  store i32 %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 8      ; 3 uses
  store i64 1000000000, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr i8, ptr %i.ab, i64 20
  store i32 %i.af, ptr %i.ag, align 4
  %.not60 = icmp eq ptr %3, null
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %i.ai = call i32 @wtap_block_add_string_option(ptr noundef %i.aa, i32 noundef 2, ptr noundef nonnull %3, i64 noundef %i.ah) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aj = call i32 @wtap_block_add_string_option(ptr noundef %i.aa, i32 noundef 2, ptr noundef nonnull @.str.25, i64 noundef 18) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8
  %or.cond = icmp ult i32 %i.al, 10
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 1, ptr %i.ad, align 8
  %i.am = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge.thread

._crit_edge:                                      ; preds = %.lr.ph
  %.not61 = icmp eq i32 %i.ar, 6
  br i1 %.not61, label %bb.o, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %i.ao = phi i64 [ %i.ap, %.lr.ph ], [ 1, %bb.m ]
  %.05062 = phi i32 [ %i.aq, %.lr.ph ], [ 0, %bb.m ]
  %i.ap = mul i64 %i.ao, 10                       ; 2 uses
  store i64 %i.ap, ptr %i.ad, align 8
  %i.aq = add nuw nsw i32 %.05062, 1              ; 2 uses
  %i.ar = load i32, ptr %i.ak, align 8            ; 3 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %.lcssa70 = phi i32 [ %i.ar, %._crit_edge ], [ %i.am, %bb.m ]
  %i.at = trunc i32 %.lcssa70 to i8
  %i.au = call i32 @wtap_block_add_uint8_option(ptr noundef %i.aa, i32 noundef 9, i8 noundef zeroext %i.at) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str, i32 noundef 7, ptr noundef nonnull @.str.1, i64 noundef 2047, ptr noundef nonnull @__func__.text_import_pre_open, ptr noundef nonnull @.str.26) #20
  unreachable

bb.o:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.av = call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #19
  %i.aw = getelementptr i8, ptr %0, i64 32        ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = call ptr @g_array_new(i32 noundef 0, i32 noundef 0, i32 noundef 8)
  %i.ay = load ptr, ptr %i.aw, align 8
  store ptr %i.ax, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.aw, align 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call ptr @g_array_append_vals(ptr noundef %i.ba, ptr noundef nonnull %i.b, i32 noundef 1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_file_type_subtype_supports_block(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_file_type_subtype_supports_option(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_string_option(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @get_cpu_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @get_os_version_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_string_option_format(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @get_appname_and_version() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_array_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_array_append_vals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wtap_block_get_mandatory_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint8_option(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @ws_log_fatal_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strndup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_append(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @in_cksum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @crc32c_calculate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_buffer_assure_space(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_rec_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_systemd_journal_export_rec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_setup_packet_rec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint32_option(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_block_add_uint64_option(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @report_cfile_write_failure(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_dump_file_type_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wtap_rec_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @iso8601_to_nstime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_strrstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @ws_strptime_p(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_insert_c(ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #13

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind }
attributes #17 = { nounwind memory(none) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { allocsize(0) }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{i64 2151384023}
!12 = !{i64 2151384753}
!13 = !{i64 2151385704}
!14 = !{i64 2151386400}
!15 = !{i64 2151387139}
!16 = !{i64 2151387839}
!17 = !{i64 2151388913}
!18 = !{i64 2151390154}
!19 = !{i64 2151391898}
!20 = !{i64 2151393387}
!21 = !{i64 2151394611}
!22 = !{i64 2151395311}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !7, !30, !29}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
end_hunk_2
