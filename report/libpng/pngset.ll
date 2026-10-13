Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngset?download=true
inline.NumInlined: 18
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@png_set_tRNS:bb.a
  %i.ac = icmp samesign ugt i32 %i.ab, %i.w
  br i1 %i.ac, label %bb.m, label %.thread65

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !171
  %i.af = zext i16 %i.ae to i32
  %i.ag = icmp samesign ugt i32 %i.af, %i.w
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !172
  %i.aj = zext i16 %i.ai to i32
  %i.ak = icmp samesign ugt i32 %i.aj, %i.w
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.am = load i16, ptr %i.al, align 2, !tbaa !173
  %i.an = zext i16 %i.am to i32
  %i.ao = icmp samesign ugt i32 %i.an, %i.w
  br i1 %i.ao, label %bb.m, label %.thread65

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.56) #11
  br label %.thread65

.thread65:                                        ; preds = %bb.h, %bb.g, %bb.m, %bb.l, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ap, ptr noundef nonnull align 2 dereferenceable(10) %4, i64 10, i1 false), !tbaa.struct !12
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %i.aq = trunc i32 %spec.store.select to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !174
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.as = trunc i32 %3 to i16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i16 %i.as, ptr %i.at, align 2, !tbaa !174
  %.not64 = icmp eq i32 %3, 0
  br i1 %.not64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread65, %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59
  %i.aw = or i32 %i.av, 8192
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !59
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !28
  %i.az = or i32 %i.ay, 16
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !28
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !177  ; 3 uses
  %i.i = tail call noalias ptr @png_realloc_array(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef %i.h, i32 noundef %3, i64 noundef 32) #11 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_chunk_report(ptr noundef nonnull %0, ptr noundef nonnull @.str.57, i32 noundef 1) #11
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.e, align 8, !tbaa !176
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  %i.m = or i32 %i.l, 32
  store i32 %i.m, ptr %i.k, align 4, !tbaa !59
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %i.q = phi i32 [ %i.h, %bb.d ], [ %i.au, %bb.l ] ; 2 uses
  %.058 = phi ptr [ %2, %bb.d ], [ %.159, %bb.l ] ; 7 uses
  %.056 = phi i32 [ %3, %bb.d ], [ %i.av, %bb.l ]
  %.055 = phi ptr [ %i.o, %bb.d ], [ %.1, %bb.l ] ; 8 uses
  %i.r = load ptr, ptr %.058, align 8, !tbaa !180 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.058, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !181
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.58) #11
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !182
  %i.y = getelementptr inbounds nuw i8, ptr %.055, i64 8
  store i8 %i.x, ptr %i.y, align 8, !tbaa !182
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #12
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  %i.ab = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef %i.aa) #11 ; 3 uses
  store ptr %i.ab, ptr %.055, align 8, !tbaa !180
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %.058, align 8, !tbaa !180
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.ad, i64 %i.aa, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.058, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !183
  %i.ag = tail call noalias ptr @png_malloc_array(ptr noundef nonnull %0, i32 noundef %i.af, i64 noundef 10) #11 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.055, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !181
  %i.ai = icmp eq ptr %i.ag, null
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %.055, align 8, !tbaa !180
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.aj) #11
  store ptr null, ptr %.055, align 8, !tbaa !180
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.ae, align 8, !tbaa !183 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.055, i64 24
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !183
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !181
  %i.an = zext i32 %i.ak to i64
  %i.ao = mul nuw nsw i64 %i.an, 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ag, ptr align 2 %i.am, i64 %i.ao, i1 false)
  %i.ap = load i32, ptr %i.p, align 8, !tbaa !28
  %i.aq = or i32 %i.ap, 8192
  store i32 %i.aq, ptr %i.p, align 8, !tbaa !28
  %i.ar = add nsw i32 %i.q, 1                     ; 2 uses
  store i32 %i.ar, ptr %i.g, align 8, !tbaa !177
  %i.as = getelementptr inbounds nuw i8, ptr %.055, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.058, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %i.au = phi i32 [ %i.q, %bb.g ], [ %i.ar, %bb.k ]
  %.159 = phi ptr [ %.058, %bb.g ], [ %i.at, %bb.k ]
  %.1 = phi ptr [ %.055, %bb.g ], [ %i.as, %bb.k ]
  %i.av = add nsw i32 %.056, -1                   ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %.thread71, label %bb.e, !llvm.loop !175

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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.i = tail call noalias ptr @png_realloc_array(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef %i.h, i32 noundef %3, i64 noundef 32) #11 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @png_chunk_report(ptr noundef nonnull %0, ptr noundef nonnull @.str.60, i32 noundef 1) #11
  br label %bb.m

.lr.ph:                                           ; preds = %bb.b
  store ptr %i.i, ptr %i.e, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 252 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !59
  %i.m = or i32 %i.l, 512
  store i32 %i.m, ptr %i.k, align 4, !tbaa !59
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.057 = phi ptr [ %i.o, %.lr.ph ], [ %.1, %bb.l ] ; 8 uses
  %.04656 = phi i32 [ %3, %.lr.ph ], [ %i.au, %bb.l ] ; 2 uses
  %.04755 = phi ptr [ %2, %.lr.ph ], [ %i.av, %bb.l ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %.057, ptr noundef nonnull align 8 dereferenceable(5) %.04755, i64 5, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.057, i64 4
  store i8 0, ptr %i.q, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %.04755, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !69
  %i.t = and i8 %i.s, 11                          ; 2 uses
  %i.u = zext nneg i8 %i.t to i32
  %i.v = icmp eq i8 %i.t, 0
  br i1 %i.v, label %bb.e, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.f, %bb.d
  %.1.i.ph = phi i32 [ %i.u, %bb.d ], [ %i.aa, %bb.f ]
  br label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.p, align 4, !tbaa !58, !alias.scope !187
  %i.x = and i32 %i.w, 32768
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #11
  %i.z = load i32, ptr %i.p, align 4, !tbaa !58, !alias.scope !187
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
  br i1 %.not.i, label %check_location.exit, label %.preheader.i, !llvm.loop !0

check_location.exit:                              ; preds = %.preheader.i
  %i.af = trunc nuw nsw i32 %.1.i to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.057, i64 24
  store i8 %i.af, ptr %i.ag, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %.04755, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !188 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %check_location.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.057, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %check_location.exit
  %i.al = tail call noalias ptr @png_malloc_base(ptr noundef nonnull %0, i64 noundef %i.ai) #11 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.057, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !189
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @png_chunk_report(ptr noundef nonnull %0, ptr noundef nonnull @.str.61, i32 noundef 1) #11
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.04755, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !189
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !188 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr align 1 %i.ap, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.057, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !188
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.057, i64 32
  %4 = load i32, ptr %i.g, align 8, !tbaa !68
  %i.at = add nsw i32 %4, 1
  store i32 %i.at, ptr %i.g, align 8, !tbaa !68
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.1 = phi ptr [ %i.as, %bb.k ], [ %.057, %bb.i ]
  %i.au = add nsw i32 %.04656, -1
  %i.av = getelementptr inbounds nuw i8, ptr %.04755, i64 32
  %i.aw = icmp sgt i32 %.04656, 1
  br i1 %i.aw, label %bb.d, label %._crit_edge, !llvm.loop !186

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
  %i.e = load i32, ptr %i.d, align 8, !tbaa !68
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58, !alias.scope !192
  %i.n = and i32 %i.m, 32768
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  tail call void @png_app_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #11
  %i.p = load i32, ptr %i.l, align 4, !tbaa !58, !alias.scope !192
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
  br i1 %.not.i, label %check_location.exit, label %.preheader.i, !llvm.loop !0

check_location.exit:                              ; preds = %.preheader.i
  %i.v = trunc nuw nsw i32 %.1.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = zext nneg i32 %2 to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %i.v, ptr %i.aa, align 8, !tbaa !69
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
  store i32 %i.b, ptr %i.c, align 8, !tbaa !65
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
  store i32 %1, ptr %i.c, align 8, !tbaa !196
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
  %i.g = load i32, ptr %i.f, align 4, !tbaa !197
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !198  ; 3 uses
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
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !198
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

end_hunk_0
