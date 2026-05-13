inline.NumInlined: 25
begin_hunk_0_@png_push_save_buffer:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec76 = and i64 %i.b, -4                     ; 5 uses
  %i.o = getelementptr i8, ptr %i.d, i64 %n.vec76
  %i.p = getelementptr i8, ptr %i.f, i64 %n.vec76
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %next.gep78 = getelementptr i8, ptr %i.d, i64 %index77
  %next.gep79 = getelementptr i8, ptr %i.f, i64 %index77
  %wide.load80 = load <4 x i8>, ptr %next.gep78, align 1, !tbaa !41
  store <4 x i8> %wide.load80, ptr %next.gep79, align 1, !tbaa !41
  %index.next81 = add nuw i64 %index77, 4         ; 2 uses
  %i.q = icmp eq i64 %index.next81, %n.vec76
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %i.b, %n.vec76
  br i1 %cmp.n82, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.064.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec76, %vec.epilog.middle.block ] ; 4 uses
  %.04963.ph = phi ptr [ %i.d, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.05062.ph = phi ptr [ %i.f, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 2 uses
  %i.r = sub i64 %i.b, %.064.ph
  %xtraiter = and i64 %i.r, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.064.prol = phi i64 [ %i.t, %.preheader.prol ], [ %.064.ph, %.preheader.preheader ]
  %.04963.prol = phi ptr [ %i.u, %.preheader.prol ], [ %.04963.ph, %.preheader.preheader ] ; 2 uses
  %.05062.prol = phi ptr [ %i.v, %.preheader.prol ], [ %.05062.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.s = load i8, ptr %.04963.prol, align 1, !tbaa !41
  store i8 %i.s, ptr %.05062.prol, align 1, !tbaa !41
  %i.t = add nuw i64 %.064.prol, 1                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04963.prol, i64 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05062.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !47

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.064.unr = phi i64 [ %.064.ph, %.preheader.preheader ], [ %i.t, %.preheader.prol ]
  %.04963.unr = phi ptr [ %.04963.ph, %.preheader.preheader ], [ %i.u, %.preheader.prol ]
  %.05062.unr = phi ptr [ %.05062.ph, %.preheader.preheader ], [ %i.v, %.preheader.prol ]
  %i.w = sub i64 %.064.ph, %i.b
  %i.x = icmp ugt i64 %i.w, -8
  br i1 %i.x, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.064 = phi i64 [ %i.au, %.preheader ], [ %.064.unr, %.preheader.prol.loopexit ]
  %.04963 = phi ptr [ %i.av, %.preheader ], [ %.04963.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.05062 = phi ptr [ %i.aw, %.preheader ], [ %.05062.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.y = load i8, ptr %.04963, align 1, !tbaa !41
  store i8 %i.y, ptr %.05062, align 1, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %.04963, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.05062, i64 1
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !41
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %.04963, i64 2
  %i.ad = getelementptr inbounds nuw i8, ptr %.05062, i64 2
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !41
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %.04963, i64 3
  %i.ag = getelementptr inbounds nuw i8, ptr %.05062, i64 3
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !41
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %.04963, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.05062, i64 4
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !41
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %.04963, i64 5
  %i.am = getelementptr inbounds nuw i8, ptr %.05062, i64 5
  %i.an = load i8, ptr %i.al, align 1, !tbaa !41
  store i8 %i.an, ptr %i.am, align 1, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %.04963, i64 6
  %i.ap = getelementptr inbounds nuw i8, ptr %.05062, i64 6
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !41
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %.04963, i64 7
  %i.as = getelementptr inbounds nuw i8, ptr %.05062, i64 7
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !41
  store i8 %i.at, ptr %i.as, align 1, !tbaa !41
  %i.au = add nuw i64 %.064, 8                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04963, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.05062, i64 8
  %exitcond.not.7 = icmp eq i64 %i.au, %i.b
  br i1 %exitcond.not.7, label %.loopexit, label %.preheader, !llvm.loop !49

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !27 ; 3 uses
  %i.az = add i64 %i.ay, %i.b                     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !50
  %i.bc = icmp ugt i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.loopexit
  %i.bd = sub i64 -257, %i.ay
  %i.be = icmp ugt i64 %i.b, %i.bd
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bf = add i64 %i.az, 256                      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40 ; 4 uses
  %i.bi = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.bf) #11 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !40
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.bh) #11
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not59 = icmp eq ptr %i.bh, null
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 1 %i.bh, i64 %i.bk, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not60 = icmp eq i64 %i.bk, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #10
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.bh) #11
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !50
  %.pr = load i64, ptr %i.ax, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bl = phi i64 [ %.pr, %bb.k ], [ %i.ay, %.loopexit ] ; 2 uses
  %.not61 = icmp eq i64 %i.bl, 0
  br i1 %.not61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.br, i64 %i.bl, i1 false)
  %i.bs = load i64, ptr %i.ax, align 8, !tbaa !27
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !28
  %i.bu = add i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.a, align 8, !tbaa !28
  store i64 0, ptr %i.ax, align 8, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i64 0, ptr %i.by, align 8, !tbaa !29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define noundef i32 @png_process_data_skip(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @png_app_warning(ptr noundef %0, ptr noundef nonnull @.str) #11
  ret i32 0
}

declare void @png_app_warning(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_push_read_sig(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 629 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !51    ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %i.d = sub nsw i64 8, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.j) ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.l, i64 %..i, i1 false)
  %i.m = sub i64 %spec.select, %..i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i
  %i.o = sub i64 %i.f, %..i                       ; 2 uses
  store i64 %i.o, ptr %i.e, align 8, !tbaa !29
  %i.p = sub i64 %i.j, %..i
  store i64 %i.p, ptr %i.i, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i
  store ptr %i.q, ptr %i.k, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi i64 [ %i.o, %bb.b ], [ %i.f, %bb.a ]
  %.036.i = phi i64 [ %i.m, %bb.b ], [ %spec.select, %bb.a ] ; 2 uses
  %.035.i = phi ptr [ %i.n, %bb.b ], [ %i.h, %bb.a ]
  %.not41.i = icmp eq i64 %.036.i, 0
  br i1 %.not41.i, label %png_push_fill_buffer.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27   ; 3 uses
  %.not42.i = icmp eq i64 %i.t, 0
  br i1 %.not42.i, label %png_push_fill_buffer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.036..i = tail call i64 @llvm.umin.i64(i64 %.036.i, i64 %i.t) ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.035.i, ptr align 1 %i.v, i64 %.036..i, i1 false)
  %i.w = sub i64 %i.r, %.036..i
  store i64 %i.w, ptr %i.e, align 8, !tbaa !29
  %i.x = sub i64 %i.t, %.036..i
  store i64 %i.x, ptr %i.s, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.036..i
  store ptr %i.y, ptr %i.u, align 8, !tbaa !30
  br label %png_push_fill_buffer.exit

png_push_fill_buffer.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  %i.z = trunc i64 %spec.select to i8
  %i.aa = add i8 %i.b, %i.z
  store i8 %i.aa, ptr %i.a, align 1, !tbaa !51
  %i.ab = tail call i32 @png_sig_cmp(ptr noundef nonnull %i.g, i64 noundef %i.c, i64 noundef %spec.select) #11
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %png_push_fill_buffer.exit
  %i.ac = icmp ult i8 %i.b, 4
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i64 %spec.select, -4
  %i.ae = tail call i32 @png_sig_cmp(ptr noundef nonnull %i.g, i64 noundef %i.c, i64 noundef %i.ad) #11
  %.not25 = icmp eq i32 %i.ae, 0
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #10
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #10
  unreachable

bb.j:                                             ; preds = %png_push_fill_buffer.exit
  %2 = load i8, ptr %i.a, align 1, !tbaa !51
  %i.af = icmp ugt i8 %2, 7
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 1, ptr %i.ag, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_push_read_chunk(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 10 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52   ; 2 uses
  %i.c = and i32 %i.b, 256
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = icmp ult i64 %i.f, 8
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.am

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @png_read_chunk_header(ptr noundef nonnull %0) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 %i.h, ptr %i.i, align 8, !tbaa !53
  %i.j = load i32, ptr %i.a, align 4, !tbaa !52
  %i.k = or i32 %i.j, 256                         ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.l = phi i32 [ %i.k, %bb.d ], [ %i.b, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.n = load i32, ptr %i.m, align 8, !tbaa !54   ; 4 uses
  %i.o = icmp eq i32 %i.n, 1229209940
  br i1 %i.o, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %i.l, 8
  %.not76 = icmp eq i32 %i.p, 0
  br i1 %.not76, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = or i32 %i.l, 8192                        ; 2 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi i32 [ %i.q, %bb.g ], [ %i.l, %bb.f ] ; 5 uses
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.v = load i8, ptr %i.u, align 1, !tbaa !55
  %i.w = icmp eq i8 %i.v, 3
  %i.x = and i32 %i.r, 2
  %i.y = icmp eq i32 %i.x, 0
  %or.cond = and i1 %i.y, %i.w
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  store i32 2, ptr %i.z, align 8, !tbaa !31
  %i.aa = and i32 %i.r, 8196
  %or.cond83 = icmp eq i32 %i.aa, 4
  br i1 %or.cond83, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !53
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.am, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = or i32 %i.r, 4
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !52
  %i.af = and i32 %i.r, 8
  %.not78 = icmp eq i32 %i.af, 0
  br i1 %.not78, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #11
  br label %.thread

bb.p:                                             ; preds = %bb.e
  %i.ag = and i32 %i.l, 4
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = or i32 %i.l, 8200
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !52
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  switch i32 %i.n, label %.thread85 [
    i32 1229472850, label %bb.s
    i32 1229278788, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !53
  %.not80 = icmp eq i32 %i.aj, 13
  br i1 %.not80, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #10
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !29
  %i.am = icmp ult i64 %i.al, 17
  br i1 %i.am, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.am

bb.w:                                             ; preds = %bb.u
  %i.an = tail call i32 @png_handle_chunk(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 13) #11 ; 0 uses
  br label %png_push_have_end.exit

bb.x:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %i.aq = add i32 %i.ap, 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.at = load i64, ptr %i.as, align 8, !tbaa !29
  %i.au = icmp ult i64 %i.at, %i.ar
  br i1 %i.au, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.am

bb.z:                                             ; preds = %bb.x
  %i.av = tail call i32 @png_handle_chunk(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ap) #11 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 6, ptr %i.aw, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56, !alias.scope !57, !noalias !60 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %png_push_have_end.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void %i.ay(ptr noundef nonnull %0, ptr noundef %1) #11, !inline_history !62
  br label %png_push_have_end.exit

.thread:                                          ; preds = %bb.o, %bb.n
  %i.az = tail call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef 1229209940) #11 ; 2 uses
  %.not79 = icmp eq i32 %i.az, 0
  br i1 %.not79, label %bb.af, label %bb.ab

.thread85:                                        ; preds = %bb.r
  %i.ba = tail call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef %i.n) #11 ; 2 uses
  %.not7986 = icmp eq i32 %i.ba, 0
  br i1 %.not7986, label %.thread87, label %bb.ab

bb.ab:                                            ; preds = %.thread85, %.thread
  %i.bb = phi i32 [ %i.ba, %.thread85 ], [ %i.az, %.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !53 ; 2 uses
  %i.be = add i32 %i.bd, 4
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !29
  %i.bi = icmp ult i64 %i.bh, %i.bf
  br i1 %i.bi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.bj = tail call i32 @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bd, i32 noundef %i.bb) #11 ; 0 uses
  %i.bk = icmp eq i32 %i.n, 1347179589
  br i1 %i.bk, label %bb.ae, label %png_push_have_end.exit

end_hunk_0
