Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngset?download=true
inline.NumInlined: 18
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@png_set_tIME:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.55) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = load i64, ptr %2, align 2
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !12
  %i.z = or i32 %i.y, 512
  store i32 %i.z, ptr %i.x, align 8, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_tRNS(ptr noalias noundef %0, ptr noalias noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = add i32 %3, -1
  %or.cond3 = icmp ult i32 %i.d, 256
  br i1 %or.cond3, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %3 to i64                  ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %2, i64 %i.e, i1 false)
  tail call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 8192, i32 noundef 0) #11
  %i.f = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 256) #11 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.f, ptr %i.g, align 8, !tbaa !164
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.f, i8 -1, i64 256, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 16 %i.a, i64 %i.e, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !84
  %i.j = or i32 %i.i, 8192
  store i32 %i.j, ptr %i.h, align 4, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !12
  %i.m = or i32 %i.l, 16
  store i32 %i.m, ptr %i.k, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !165
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.o) #11
  %i.p = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef 256) #11 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !165
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.p, i8 -1, i64 256, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 16 %i.a, i64 %i.e, i1 false)
  br label %bb.e

.critedge:                                        ; preds = %bb.c
  tail call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 8192, i32 noundef 0) #11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !165
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.r) #11
  store ptr null, ptr %i.q, align 8, !tbaa !165
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.not63 = icmp eq ptr %4, null
  br i1 %.not63, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i8, ptr %i.s, align 4, !tbaa !95    ; 2 uses
  %i.u = icmp ult i8 %i.t, 16
  br i1 %i.u, label %bb.h, label %.thread65

bb.h:                                             ; preds = %bb.g
  %i.v = zext nneg i8 %i.t to i32
  %notmask = shl nsw i32 -1, %i.v
  %i.w = xor i32 %notmask, -1                     ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.y = load i8, ptr %i.x, align 1, !tbaa !96
  switch i8 %i.y, label %.thread65 [
    i8 0, label %bb.i
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !166
  %i.ab = zext i16 %i.aa to i32
  %i.ac = icmp samesign ugt i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.m, label %.thread65

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !167
  %i.af = zext i16 %i.ae to i32
  %i.ag = icmp samesign ugt i32 %i.af, %i.w
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !168
  %i.aj = zext i16 %i.ai to i32
  %i.ak = icmp samesign ugt i32 %i.aj, %i.w
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.am = load i16, ptr %i.al, align 2, !tbaa !169
  %i.an = zext i16 %i.am to i32
  %i.ao = icmp samesign ugt i32 %i.an, %i.w
  br i1 %i.ao, label %bb.m, label %.thread65

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.56) #11
  br label %.thread65

.thread65:                                        ; preds = %bb.h, %bb.g, %bb.m, %bb.l, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ap, ptr noundef nonnull align 2 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !8
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %i.aq = trunc i32 %spec.store.select to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !170
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.as = trunc i32 %3 to i16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i16 %i.as, ptr %i.at, align 2, !tbaa !170
  %.not64 = icmp eq i32 %3, 0
  br i1 %.not64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread65, %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !84
  %i.aw = or i32 %i.av, 8192
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !12
  %i.az = or i32 %i.ay, 16
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !12
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.n
  ret void
}

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_set_sPLT(ptr noalias noundef %0, ptr noalias nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %3, 1
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp eq ptr %2, null
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !172  ; 3 uses
  %i.i = tail call noalias ptr @png_realloc_array(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef %i.h, i32 noundef %3, i64 noundef 32) #11 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_chunk_report(ptr noundef nonnull %0, ptr noundef nonnull @.str.57, i32 noundef 1) #11
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.e, align 8, !tbaa !171
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !84
  %i.m = or i32 %i.l, 32
  store i32 %i.m, ptr %i.k, align 4, !tbaa !84
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %i.q = phi i32 [ %i.h, %bb.d ], [ %i.au, %bb.l ] ; 2 uses
  %.058 = phi ptr [ %2, %bb.d ], [ %.159, %bb.l ] ; 7 uses
  %.056 = phi i32 [ %3, %bb.d ], [ %i.av, %bb.l ]
  %.0 = phi ptr [ %i.o, %bb.d ], [ %.1, %bb.l ]   ; 8 uses
  %i.r = load ptr, ptr %.058, align 8, !tbaa !173 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.058, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !176
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.58) #11
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !177
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i8 %i.x, ptr %i.y, align 8, !tbaa !177
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #12
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  %i.ab = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef %i.aa) #11 ; 3 uses
  store ptr %i.ab, ptr %.0, align 8, !tbaa !173
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %.058, align 8, !tbaa !173
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.ad, i64 %i.aa, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.058, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !178
  %i.ag = tail call noalias ptr @png_malloc_array(ptr noundef nonnull %0, i32 noundef %i.af, i64 noundef 10) #11 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !176
  %i.ai = icmp eq ptr %i.ag, null
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %.0, align 8, !tbaa !173
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.aj) #11
  store ptr null, ptr %.0, align 8, !tbaa !173
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.ae, align 8, !tbaa !178 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !178
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !176
  %i.an = zext i32 %i.ak to i64
  %i.ao = mul nuw nsw i64 %i.an, 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ag, ptr align 2 %i.am, i64 %i.ao, i1 false)
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !12
  %i.aq = or i32 %i.ap, 8192
  store i32 %i.aq, ptr %i.p, align 8, !tbaa !12
  %i.ar = add nsw i32 %i.q, 1                     ; 2 uses
  store i32 %i.ar, ptr %i.g, align 8, !tbaa !172
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.058, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %i.au = phi i32 [ %i.q, %bb.g ], [ %i.ar, %bb.k ]
  %.159 = phi ptr [ %.058, %bb.g ], [ %i.at, %bb.k ]
  %.1 = phi ptr [ %.0, %bb.g ], [ %i.as, %bb.k ]
  %i.av = add nsw i32 %.056, -1                   ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %.thread71, label %bb.e, !llvm.loop !179

.thread71:                                        ; preds = %bb.l
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.f) #11
  br label %bb.m

.loopexit:                                        ; preds = %bb.h, %bb.j
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.f) #11
  tail call void @png_chunk_report(ptr noundef nonnull %0, ptr noundef nonnull @.str.59, i32 noundef 1) #11
  br label %bb.m

bb.m:                                             ; preds = %.thread71, %.loopexit, %bb.a, %bb.c
  ret void
}

declare noalias ptr @png_malloc_array(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_set_unknown_chunks(ptr noalias noundef %0, ptr noalias nofree noundef captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %3, 1
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp eq ptr %2, null
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !180  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !181  ; 2 uses
  %i.i = tail call noalias ptr @png_realloc_array(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef %i.h, i32 noundef %3, i64 noundef 32) #11 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @png_chunk_report(ptr noundef nonnull %0, ptr noundef nonnull @.str.60, i32 noundef 1) #11
  br label %bb.m

.lr.ph:                                           ; preds = %bb.b
  store ptr %i.i, ptr %i.e, align 8, !tbaa !180
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !84
  %i.m = or i32 %i.l, 512
  store i32 %i.m, ptr %i.k, align 4, !tbaa !84
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.057 = phi ptr [ %i.o, %.lr.ph ], [ %.1, %bb.l ] ; 8 uses
  %.04656 = phi i32 [ %3, %.lr.ph ], [ %i.av, %bb.l ] ; 2 uses
  %.04755 = phi ptr [ %2, %.lr.ph ], [ %i.aw, %bb.l ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.057, ptr noundef nonnull align 8 dereferenceable(5) %.04755, i64 5, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.057, i64 4
  store i8 0, ptr %i.q, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %.04755, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !182
  %i.t = and i8 %i.s, 11                          ; 2 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = icmp eq i8 %i.t, 0
  br i1 %i.v, label %bb.e, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.f, %bb.d
  %.1.i.ph = phi i32 [ %i.u, %bb.d ], [ %i.aa, %bb.f ]
  br label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.p, align 4, !tbaa !74, !alias.scope !183
  %i.x = and i32 %i.w, 32768
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #11
  %i.z = load i32, ptr %i.p, align 4, !tbaa !74, !alias.scope !183
  %i.aa = and i32 %i.z, 11                        ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread.i, label %.preheader.i.preheader

.thread.i:                                        ; preds = %bb.f, %bb.e
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #13
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i = phi i32 [ %i.ae, %.preheader.i ], [ %.1.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.ac = sub nsw i32 0, %.1.i
  %i.ad = and i32 %.1.i, %i.ac                    ; 2 uses
  %.not.i = icmp eq i32 %.1.i, %i.ad
  %i.ae = xor i32 %i.ad, %.1.i
  br i1 %.not.i, label %check_location.exit, label %.preheader.i, !llvm.loop !186

check_location.exit:                              ; preds = %.preheader.i
  %i.af = trunc nuw nsw i32 %.1.i to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.057, i64 24
  store i8 %i.af, ptr %i.ag, align 8, !tbaa !182
  %i.ah = getelementptr inbounds nuw i8, ptr %.04755, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !187 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %check_location.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.057, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %check_location.exit
  %i.al = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef %i.ai) #11 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.057, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !188
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @png_chunk_report(ptr noundef nonnull %0, ptr noundef nonnull @.str.61, i32 noundef 1) #11
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.04755, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !188
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !187 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.ap, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.057, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !187
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.057, i64 32
  %i.at = load i32, ptr %i.g, align 8, !tbaa !181
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.g, align 8, !tbaa !181
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.1 = phi ptr [ %i.as, %bb.k ], [ %.057, %bb.i ]
  %i.av = add nsw i32 %.04656, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %.04755, i64 32
  %i.ax = icmp sgt i32 %.04656, 1
  br i1 %i.ax, label %bb.d, label %._crit_edge, !llvm.loop !189

._crit_edge:                                      ; preds = %bb.l
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.f) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %._crit_edge, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_unknown_chunk_location(ptr noalias noundef %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %2, -1
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.e = load i32, ptr %i.d, align 8, !tbaa !181
  %i.f = icmp slt i32 %2, %i.e
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %3, 11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.62) #11
  %i.i = and i32 %3, 4
  %.not = icmp eq i32 %i.i, 0
  %. = select i1 %.not, i32 1, i32 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %., %bb.d ], [ %3, %bb.c ]
  %i.j = and i32 %.0, 11                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.g, %bb.e
  %.1.i.ph = phi i32 [ %i.j, %bb.e ], [ %i.q, %bb.g ]
  br label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !74, !alias.scope !190
  %i.n = and i32 %i.m, 32768
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #11
  %i.p = load i32, ptr %i.l, align 4, !tbaa !74, !alias.scope !190
  %i.q = and i32 %i.p, 11                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread.i, label %.preheader.i.preheader

.thread.i:                                        ; preds = %bb.g, %bb.f
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #13
  unreachable

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i = phi i32 [ %i.u, %.preheader.i ], [ %.1.i.ph, %.preheader.i.preheader ] ; 5 uses
  %i.s = sub nsw i32 0, %.1.i
  %i.t = and i32 %.1.i, %i.s                      ; 2 uses
  %.not.i = icmp eq i32 %.1.i, %i.t
  %i.u = xor i32 %i.t, %.1.i
  br i1 %.not.i, label %check_location.exit, label %.preheader.i, !llvm.loop !186

check_location.exit:                              ; preds = %.preheader.i
  %i.v = trunc nuw nsw i32 %.1.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !180
  %i.y = zext nneg i32 %2 to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %i.v, ptr %i.aa, align 8, !tbaa !182
  br label %bb.h

bb.h:                                             ; preds = %check_location.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 6) i32 @png_permit_mng_features(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 5                            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 %i.b, ptr %i.c, align 8, !tbaa !123
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @png_set_keep_unknown_chunks(ptr noalias noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 3
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.63) #11
  br label %bb.ae

bb.d:                                             ; preds = %bb.b
  %i.b = icmp slt i32 %3, 1
  br i1 %i.b, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store i32 %1, ptr %i.c, align 8, !tbaa !193
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %bb.ae, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.e = icmp eq ptr %2, null
  br i1 %i.e, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.64) #11
  br label %bb.ae

.thread:                                          ; preds = %bb.e, %bb.f
  %.071 = phi ptr [ %2, %bb.f ], [ @png_set_keep_unknown_chunks.chunks_to_ignore, %bb.e ] ; 2 uses
  %.066 = phi i32 [ %3, %bb.f ], [ 21, %bb.e ]    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !194
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  %spec.store.select = select i1 %i.j, i32 0, i32 %i.g ; 7 uses
  %i.k = add i32 %spec.store.select, %.066        ; 2 uses
  %i.l = icmp ugt i32 %i.k, 858993459
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.65) #11
  br label %bb.ae

bb.i:                                             ; preds = %.thread
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = mul nuw i32 %i.k, 5
  %i.n = zext i32 %i.m to i64
  %i.o = tail call noalias ptr @png_malloc(ptr noundef nonnull %0, i64 noundef %i.n) #11 ; 5 uses
  %.not80 = icmp eq i32 %spec.store.select, 0
  br i1 %.not80, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !195
  %i.q = mul i32 %spec.store.select, 5
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %.not79 = icmp eq i32 %spec.store.select, 0
  br i1 %.not79, label %thread-pre-split, label %.lr.ph.i.preheader.us.preheader

bb.m:                                             ; preds = %bb.j, %bb.k
  %.not81 = icmp eq ptr %i.o, null
  br i1 %.not81, label %thread-pre-split, label %.preheader90

.preheader90:                                     ; preds = %bb.m
  %i.s = trunc nuw nsw i32 %1 to i8
  %wide.trip.count = zext nneg i32 %.066 to i64
  br label %.preheader90.split

.lr.ph.i.preheader.us.preheader:                  ; preds = %bb.l
  %wide.trip.count109 = zext nneg i32 %.066 to i64
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %add_one_chunk.exit.us
  %indvars.iv106 = phi i64 [ 0, %.lr.ph.i.preheader.us.preheader ], [ %indvars.iv.next107, %add_one_chunk.exit.us ] ; 2 uses
  %i.t = mul i64 %indvars.iv106, 5
  %i.u = and i64 %i.t, 4294967295
  %i.v = getelementptr inbounds nuw i8, ptr %.071, i64 %i.u
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %bb.n
  %.023.i.us = phi i32 [ %i.ab, %bb.n ], [ 0, %.lr.ph.i.preheader.us ]
  %.01722.i.us = phi ptr [ %i.ac, %bb.n ], [ %i.i, %.lr.ph.i.preheader.us ] ; 3 uses
  %i.w = load i32, ptr %.01722.i.us, align 1
end_hunk_0
begin_hunk_1_@png_set_rows:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 64, i32 noundef 0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %2, ptr %i.c, align 8, !tbaa !201
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !12
  %i.g = or i32 %i.f, 32768
  store i32 %i.g, ptr %i.e, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_set_compression_buffer_size(ptr noalias noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -2147483648
  %or.cond = icmp ult i64 %i.b, -2147483647
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.66) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.d = load i32, ptr %i.c, align 4, !tbaa !74
  %i.e = and i32 %i.d, 32768
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = trunc nuw nsw i64 %1 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i32 %i.f, ptr %i.g, align 8, !tbaa !202
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !203
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.67) #11
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.j = icmp samesign ult i64 %1, 6
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.69) #11
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !204
  %i.m = zext i32 %i.l to i64
  %.not23 = icmp eq i64 %1, %i.m
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @png_free_buffer_list(ptr noundef nonnull %0, ptr noundef nonnull %i.n) #11
  %i.o = trunc nuw nsw i64 %1 to i32
  store i32 %i.o, ptr %i.k, align 8, !tbaa !204
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a, %bb.i, %bb.g, %bb.e
  ret void
}

declare void @png_free_buffer_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_invalid(ptr noalias nofree noundef readnone captures(address_is_null) %0, ptr noalias nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %2, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12
  %i.f = and i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_user_limits(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1108
  store i32 %1, ptr %i.b, align 4, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 %2, ptr %i.c, align 8, !tbaa !206
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_chunk_cache_max(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store i32 %1, ptr %i.a, align 4, !tbaa !207
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_chunk_malloc_max(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.a = icmp eq i64 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %. = select i1 %i.a, i64 -1, i64 %1
  store i64 %., ptr %i.b, align 8, !tbaa !208
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_benign_errors(ptr noalias nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !209
  %i.c = and i32 %i.b, -7340033
  %masksel = select i1 %.not, i32 0, i32 7340032
  %.sink = or disjoint i32 %i.c, %masksel
  store i32 %.sink, ptr %i.a, align 8, !tbaa !209
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @png_set_check_for_invalid_index(ptr noalias nofree noundef writeonly captures(none) initializes((612, 616)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %spec.select = sext i1 %i.a to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 %spec.select, ptr %i.b, align 4, !tbaa !210
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 80) i32 @png_check_keyword(ptr noalias noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x [32 x i8]], align 16         ; 5 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !9       ; 2 uses
  %.not64 = icmp eq i8 %i.c, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !9
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.d = phi i8 [ %i.o, %bb.g ], [ %i.c, %.preheader ] ; 5 uses
  %.04059 = phi i32 [ %.1, %bb.g ], [ 1, %.preheader ]
  %.04158 = phi i32 [ %.142, %bb.g ], [ 0, %.preheader ] ; 4 uses
  %.04357 = phi i32 [ %.144, %bb.g ], [ 0, %.preheader ] ; 3 uses
  %.04656 = phi ptr [ %.148, %bb.g ], [ %2, %.preheader ] ; 5 uses
  %.04755 = phi ptr [ %i.e, %bb.g ], [ %1, %.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %.04755, i64 1 ; 3 uses
  %i.f = zext i8 %i.d to i32                      ; 2 uses
  %i.g = add i8 %i.d, -127
  %or.cond = icmp ult i8 %i.g, -94
  %i.h = icmp ult i8 %i.d, -95
  %or.cond5.not = and i1 %i.h, %or.cond           ; 2 uses
  br i1 %or.cond5.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.04656, i64 1
  store i8 %i.d, ptr %.04656, align 1, !tbaa !9
  %i.j = add nuw nsw i32 %.04357, 1
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp eq i32 %.04059, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.04656, i64 1
  store i8 32, ptr %.04656, align 1, !tbaa !9
  %i.m = add nuw nsw i32 %.04357, 1
  %.not53 = icmp eq i8 %i.d, 32
  %spec.select = select i1 %.not53, i32 %.04158, i32 %i.f
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i32 %.04158, 0
  %spec.select54 = select i1 %i.n, i32 %i.f, i32 %.04158
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.148 = phi ptr [ %i.i, %bb.c ], [ %i.l, %bb.e ], [ %.04656, %bb.f ] ; 2 uses
  %.144 = phi i32 [ %i.j, %bb.c ], [ %i.m, %bb.e ], [ %.04357, %bb.f ] ; 3 uses
  %.142 = phi i32 [ %.04158, %bb.c ], [ %spec.select, %bb.e ], [ %spec.select54, %bb.f ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.f ]
  %i.o = load i8, ptr %i.e, align 1, !tbaa !9     ; 2 uses
  %i.p = icmp ne i8 %i.o, 0
  %i.q = icmp samesign ult i32 %.144, 79
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.047.lcssa = phi ptr [ %1, %.preheader ], [ %i.e, %bb.g ]
  %.046.lcssa = phi ptr [ %2, %.preheader ], [ %.148, %bb.g ]
  %.043.lcssa = phi i32 [ 0, %.preheader ], [ %.144, %bb.g ] ; 2 uses
  %.041.lcssa = phi i32 [ 0, %.preheader ], [ %.142, %bb.g ] ; 2 uses
  %.040.lcssa = phi i1 [ true, %.preheader ], [ %or.cond5.not, %bb.g ]
  %i.s = icmp ne i32 %.043.lcssa, 0
  %or.cond7 = and i1 %i.s, %.040.lcssa            ; 3 uses
  %i.t = icmp eq i32 %.041.lcssa, 0
  %.249.idx = sext i1 %or.cond7 to i64
  %.249 = getelementptr inbounds i8, ptr %.046.lcssa, i64 %.249.idx
  %i.u = sext i1 %or.cond7 to i32
  %.245 = add nsw i32 %.043.lcssa, %i.u           ; 4 uses
  %i.v = select i1 %or.cond7, i1 %i.t, i1 false
  %.2 = select i1 %i.v, i32 32, i32 %.041.lcssa   ; 2 uses
  store i8 0, ptr %.249, align 1, !tbaa !9
  %i.w = icmp eq i32 %.245, 0
  br i1 %i.w, label %bb.l, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.x = load i8, ptr %.047.lcssa, align 1, !tbaa !9
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.70) #11
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not52 = icmp eq i32 %.2, 0
  br i1 %.not52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @png_warning_parameter(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %1) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 4, i32 noundef %.2) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.71) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %._crit_edge, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %._crit_edge ], [ %.245, %bb.j ], [ %.245, %bb.k ], [ %.245, %bb.i ]
  ret i32 %.0
}

declare void @png_warning_parameter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @png_warning_parameter_signed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @png_formatted_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @png_app_warning(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 0, i64 1, !9, i64 2, i64 2, !10, i64 4, i64 2, !10, i64 6, i64 2, !10, i64 8, i64 2, !10}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!13, !5, i64 8}
!13 = !{!"png_info_def", !5, i64 0, !5, i64 4, !5, i64 8, !14, i64 16, !15, i64 24, !11, i64 32, !11, i64 34, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44, !6, i64 52, !6, i64 53, !6, i64 54, !6, i64 55, !17, i64 56, !17, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !11, i64 84, !11, i64 86, !11, i64 88, !11, i64 90, !11, i64 92, !11, i64 94, !11, i64 96, !11, i64 98, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !18, i64 120, !19, i64 128, !20, i64 136, !17, i64 144, !21, i64 152, !21, i64 162, !5, i64 172, !5, i64 176, !6, i64 180, !5, i64 184, !5, i64 188, !6, i64 192, !5, i64 196, !17, i64 200, !22, i64 208, !17, i64 216, !5, i64 224, !5, i64 228, !17, i64 232, !23, i64 240, !6, i64 248, !6, i64 249, !5, i64 252, !25, i64 256, !5, i64 264, !26, i64 272, !5, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !23, i64 304, !27, i64 312, !5, i64 344, !5, i64 348}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTS16png_color_struct", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"p1 _ZTS15png_text_struct", !16, i64 0}
!19 = !{!"png_time_struct", !11, i64 0, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6}
!20 = !{!"png_color_8_struct", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4}
!21 = !{!"png_color_16_struct", !6, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8}
!22 = !{!"p1 short", !16, i64 0}
!23 = !{!"p2 omnipotent char", !24, i64 0}
!24 = !{!"any p2 pointer", !16, i64 0}
!25 = !{!"p1 _ZTS19png_unknown_chunk_t", !16, i64 0}
!26 = !{!"p1 _ZTS15png_sPLT_struct", !16, i64 0}
!27 = !{!"png_xy", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!28 = !{!13, !5, i64 312}
!29 = !{!13, !5, i64 316}
!30 = !{!13, !5, i64 320}
!31 = !{!13, !5, i64 324}
!32 = !{!13, !5, i64 328}
!33 = !{!13, !5, i64 332}
!34 = !{!13, !5, i64 336}
!35 = !{!13, !5, i64 340}
!36 = !{!37, !5, i64 0}
!37 = !{!"png_XYZ", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!38 = !{!37, !5, i64 4}
!39 = !{!37, !5, i64 8}
!40 = !{!37, !5, i64 12}
!41 = !{!37, !5, i64 16}
!42 = !{!37, !5, i64 20}
!43 = !{!37, !5, i64 24}
!44 = !{!37, !5, i64 28}
!45 = !{!37, !5, i64 32}
!46 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 12, i64 4, !47, i64 16, i64 4, !47, i64 20, i64 4, !47, i64 24, i64 4, !47, i64 28, i64 4, !47}
!47 = !{!5, !5, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"png_set_cHRM_fixed: argument 1"}
!50 = distinct !{!50, !"png_set_cHRM_fixed"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"png_set_cHRM_fixed: argument 0"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"png_set_cHRM_XYZ_fixed: argument 1"}
!55 = distinct !{!55, !"png_set_cHRM_XYZ_fixed"}
!56 = !{!57, !54}
!57 = distinct !{!57, !55, !"png_set_cHRM_XYZ_fixed: argument 0"}
!58 = !{!57}
!59 = !{!13, !6, i64 52}
!60 = !{!13, !6, i64 53}
!61 = !{!13, !6, i64 54}
!62 = !{!13, !6, i64 55}
!63 = !{!13, !5, i64 76}
!64 = !{!13, !5, i64 80}
!65 = !{!66}
!66 = distinct !{!66, !67, !"png_set_cLLI_fixed: argument 1"}
!67 = distinct !{!67, !"png_set_cLLI_fixed"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"png_set_cLLI_fixed: argument 0"}
!70 = !{!13, !11, i64 96}
!71 = !{!13, !11, i64 98}
!72 = !{!13, !5, i64 100}
!73 = !{!13, !5, i64 104}
!74 = !{!75, !5, i64 300}
!75 = !{!"png_struct_def", !6, i64 0, !16, i64 200, !76, i64 208, !14, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !6, i64 296, !6, i64 297, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !77, i64 320, !79, i64 432, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !14, i64 528, !5, i64 536, !5, i64 540, !5, i64 544, !17, i64 552, !17, i64 560, !17, i64 568, !17, i64 576, !14, i64 584, !5, i64 592, !5, i64 596, !15, i64 600, !11, i64 608, !5, i64 612, !11, i64 616, !6, i64 618, !6, i64 619, !6, i64 620, !6, i64 621, !6, i64 622, !6, i64 623, !6, i64 624, !6, i64 625, !6, i64 626, !6, i64 627, !6, i64 628, !6, i64 629, !6, i64 630, !6, i64 631, !6, i64 632, !11, i64 634, !6, i64 636, !5, i64 640, !21, i64 644, !21, i64 654, !16, i64 664, !5, i64 672, !5, i64 676, !27, i64 680, !5, i64 712, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !17, i64 736, !80, i64 744, !17, i64 752, !17, i64 760, !80, i64 768, !80, i64 776, !20, i64 784, !20, i64 789, !17, i64 800, !21, i64 808, !16, i64 824, !16, i64 832, !16, i64 840, !16, i64 848, !16, i64 856, !17, i64 864, !17, i64 872, !17, i64 880, !17, i64 888, !5, i64 896, !5, i64 900, !14, i64 904, !14, i64 912, !14, i64 920, !14, i64 928, !5, i64 936, !5, i64 940, !17, i64 944, !17, i64 952, !5, i64 960, !6, i64 964, !5, i64 996, !16, i64 1000, !16, i64 1008, !5, i64 1016, !5, i64 1020, !17, i64 1024, !6, i64 1032, !6, i64 1033, !11, i64 1034, !11, i64 1036, !17, i64 1040, !5, i64 1048, !6, i64 1052, !16, i64 1056, !16, i64 1064, !16, i64 1072, !17, i64 1080, !17, i64 1088, !17, i64 1096, !6, i64 1104, !5, i64 1108, !5, i64 1112, !5, i64 1116, !14, i64 1120, !81, i64 1128, !14, i64 1160, !17, i64 1168, !14, i64 1176, !5, i64 1184, !5, i64 1188, !17, i64 1192, !6, i64 1200}
!76 = !{!"p1 _ZTS13__jmp_buf_tag", !16, i64 0}
!77 = !{!"z_stream_s", !17, i64 0, !5, i64 8, !14, i64 16, !17, i64 24, !5, i64 32, !14, i64 40, !17, i64 48, !78, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !5, i64 88, !14, i64 96, !14, i64 104}
!78 = !{!"p1 _ZTS14internal_state", !16, i64 0}
!79 = !{!"p1 _ZTS22png_compression_buffer", !16, i64 0}
!80 = !{!"p2 short", !24, i64 0}
!81 = !{!"png_unknown_chunk_t", !6, i64 0, !17, i64 8, !14, i64 16, !6, i64 24}
!82 = !{!13, !5, i64 196}
!83 = !{!13, !17, i64 200}
!84 = !{!13, !5, i64 252}
!85 = !{!13, !5, i64 344}
!86 = !{!87}
!87 = distinct !{!87, !88, !"png_set_gAMA_fixed: argument 1"}
!88 = distinct !{!88, !"png_set_gAMA_fixed"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"png_set_gAMA_fixed: argument 0"}
!91 = !{!13, !11, i64 32}
!92 = !{!13, !22, i64 208}
!93 = !{!13, !5, i64 0}
!94 = !{!13, !5, i64 4}
!95 = !{!13, !6, i64 36}
!96 = !{!13, !6, i64 37}
!97 = !{!13, !6, i64 38}
!98 = !{!13, !6, i64 39}
!99 = !{!13, !6, i64 40}
!100 = !{!13, !6, i64 41}
!101 = !{!13, !6, i64 42}
!102 = !{!13, !14, i64 16}
!103 = !{!13, !5, i64 172}
!104 = !{!13, !5, i64 176}
!105 = !{!13, !6, i64 180}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!17, !17, i64 0}
!109 = !{!13, !17, i64 216}
!110 = !{!13, !5, i64 224}
!111 = !{!13, !5, i64 228}
!112 = !{!13, !6, i64 248}
!113 = !{!13, !6, i64 249}
!114 = !{!13, !17, i64 232}
!115 = !{!13, !23, i64 240}
!116 = distinct !{!116, !107}
!117 = !{!13, !6, i64 284}
!118 = !{!13, !17, i64 288}
!119 = !{!13, !17, i64 296}
!120 = !{!13, !5, i64 184}
!121 = !{!13, !5, i64 188}
!122 = !{!13, !6, i64 192}
!123 = !{!75, !5, i64 1048}
!124 = !{!75, !15, i64 600}
!125 = !{!13, !15, i64 24}
!126 = !{!75, !11, i64 608}
!127 = !{i64 0, i64 1, !9, i64 1, i64 1, !9, i64 2, i64 1, !9, i64 3, i64 1, !9, i64 4, i64 1, !9}
!128 = !{!13, !5, i64 348}
!129 = !{!130}
!130 = distinct !{!130, !131, !"png_set_sRGB: argument 1"}
!131 = distinct !{!131, !"png_set_sRGB"}
!132 = !{!133}
!133 = distinct !{!133, !131, !"png_set_sRGB: argument 0"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"png_set_gAMA_fixed: argument 1"}
!136 = distinct !{!136, !"png_set_gAMA_fixed"}
!137 = !{!138}
!138 = distinct !{!138, !136, !"png_set_gAMA_fixed: argument 0"}
!139 = !{!140}
end_hunk_1
