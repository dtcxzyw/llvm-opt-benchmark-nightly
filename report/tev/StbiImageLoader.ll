Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i:bb.a
  %i.v = mul nsw i32 %i.u, %i.t                   ; 2 uses
  %i.w = shl nsw i32 %i.v, 2                      ; 3 uses
  %i.x = trunc nuw i64 %indvars.iv.next to i32
  %i.y = mul nsw i32 %i.w, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = call ptr @realloc(ptr noundef nonnull %.072131, i64 noundef %i.z) #55 ; 6 uses
  %.not97 = icmp eq ptr %i.aa, null
  br i1 %.not97, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %.peel.next
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !101
  call void @free(ptr noundef %i.ac) #53
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !102
  call void @free(ptr noundef %i.ae) #53
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !103
  call void @free(ptr noundef %i.ag) #53
  call void @free(ptr noundef nonnull %.072131) #53
  br i1 %.not91, label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ah = load ptr, ptr %1, align 8, !tbaa !96    ; 2 uses
  %.not11.i = icmp eq ptr %i.ah, null
  br i1 %.not11.i, label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %i.ah) #53
  br label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit

_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit: ; preds = %.loopexit, %bb.j, %bb.k
  %i.ai = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ai, align 8, !tbaa !71
  br label %.critedge

bb.l:                                             ; preds = %.peel.next
  br i1 %.not91, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %1, align 8, !tbaa !96
  %i.ak = shl nuw nsw i64 %indvars.iv.next, 2
  %i.al = call ptr @realloc(ptr noundef %i.aj, i64 noundef %i.ak) #55 ; 2 uses
  %.not98.not = icmp eq ptr %i.al, null
  br i1 %.not98.not, label %.loopexit148, label %bb.o

.loopexit148:                                     ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101
  call void @free(ptr noundef %.pre) #53
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !102
  call void @free(ptr noundef %i.an) #53
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103
  call void @free(ptr noundef %i.ap) #53
  call void @free(ptr noundef nonnull %i.aa) #53
  %i.aq = load ptr, ptr %1, align 8, !tbaa !96    ; 2 uses
  %.not11.i101 = icmp eq ptr %i.aq, null
  br i1 %.not11.i101, label %.thread, label %bb.n

bb.n:                                             ; preds = %.loopexit148
  call void @free(ptr noundef nonnull %i.aq) #53
  br label %.thread

.thread:                                          ; preds = %bb.n, %.loopexit148
  %i.ar = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ar, align 8, !tbaa !71
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  store ptr %i.al, ptr %1, align 8, !tbaa !96
  br label %bb.u

bb.p:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !101
  call void @free(ptr noundef %i.at) #53
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !102
  call void @free(ptr noundef %i.av) #53
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !103
  call void @free(ptr noundef %i.ax) #53
  br i1 %.not91, label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %1, align 8, !tbaa !96    ; 2 uses
  %.not11.i104 = icmp eq ptr %i.ay, null
  br i1 %.not11.i104, label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.ay) #53
  br label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105

_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105: ; preds = %bb.p, %bb.q, %bb.r
  %i.az = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.az, align 8, !tbaa !71
  br label %.critedge

bb.s:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !101
  call void @free(ptr noundef %i.bb) #53
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !102
  call void @free(ptr noundef %i.bd) #53
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103
  call void @free(ptr noundef %i.bf) #53
  call void @free(ptr noundef nonnull %i.k) #53
  %i.bg = load ptr, ptr %1, align 8, !tbaa !96    ; 2 uses
  %.not11.i108 = icmp eq ptr %i.bg, null
  br i1 %.not11.i108, label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bg) #53
  br label %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109

_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109: ; preds = %bb.s, %bb.t
  %i.bh = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.bh, align 8, !tbaa !71
  br label %.critedge

bb.u:                                             ; preds = %bb.o, %bb.l
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %i.bj = mul nsw i32 %i.w, %i.bi
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %i.aa, i64 %i.bk
  %i.bm = sext i32 %i.w to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %i.s, i64 %i.bm, i1 false)
  %i.bn = shl nsw i32 %i.v, 3
  %i.bo = sext i32 %i.bn to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.aa, i64 %i.bp
  br i1 %.not91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = load i32, ptr %i.e, align 8, !tbaa !100
  %i.bs = load ptr, ptr %1, align 8, !tbaa !96
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !72
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bu = call fastcc noundef ptr @_ZL19stbi__gif_load_nextP13stbi__contextP9stbi__gifPiiPh(ptr noundef %0, ptr noundef %7, ptr noundef %5, ptr noundef nonnull %i.bq) ; 3 uses
  %i.bv = icmp eq ptr %i.bu, %0
  %.not9293 = icmp eq ptr %i.bu, null
  %.not92 = or i1 %i.bv, %.not9293
  br i1 %.not92, label %._crit_edge.loopexit.loopexit, label %.peel.next, !llvm.loop !574

._crit_edge.loopexit.loopexit:                    ; preds = %bb.w
  %i.bw = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit.loopexit, %bb.d
  %.075.lcssa = phi i32 [ 0, %bb.d ], [ 1, %bb.i ], [ %i.bw, %._crit_edge.loopexit.loopexit ] ; 2 uses
  %.072.lcssa = phi ptr [ null, %bb.d ], [ %i.k, %bb.i ], [ %i.aa, %._crit_edge.loopexit.loopexit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !101
  call void @free(ptr noundef %i.by) #53
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !102
  call void @free(ptr noundef %i.ca) #53
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !103
  call void @free(ptr noundef %i.cc) #53
  %i.cd = and i32 %6, -5
  %or.cond.not = icmp eq i32 %i.cd, 0
  br i1 %or.cond.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.ce = load i32, ptr %7, align 8, !tbaa !98
  %i.cf = mul nsw i32 %i.ce, %.075.lcssa
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !99
  %i.ci = call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef %.072.lcssa, i32 noundef 4, i32 noundef %6, i32 noundef %i.cf, i32 noundef %i.ch)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %.4 = phi ptr [ %i.ci, %bb.x ], [ %.072.lcssa, %._crit_edge ]
  store i32 %.075.lcssa, ptr %4, align 4, !tbaa !72
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit, %bb.y, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105
  %.6 = phi ptr [ %.4, %bb.y ], [ null, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit105 ], [ null, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit109 ], [ null, %_ZL28stbi__load_gif_main_outofmemP9stbi__gifPhPPi.exit ], [ null, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #53
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.cj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.48, ptr %i.cj, align 8, !tbaa !71
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %.7 = phi ptr [ %.6, %.critedge ], [ null, %bb.z ]
  ret ptr %.7
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !82
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !85
  %i.j = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #9 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = tail call fastcc noundef i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef %0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 5 uses
  %.not30 = icmp eq ptr %i.c, null
  br i1 %.not30, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i32, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  %i.i = select i1 %.not.i, i32 %i.h, i32 %i.g
  %.not9.i = icmp eq i32 %i.i, 0
  br i1 %.not9.i, label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not10.i = icmp eq i32 %4, 0
  br i1 %.not10.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %3, align 4, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ %i.j, %bb.e ], [ %4, %bb.d ]
  %i.l = load i32, ptr %1, align 4, !tbaa !72
  %i.m = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.n = shl i32 %i.k, 2
  %i.o = sext i32 %i.l to i64
  %i.p = sext i32 %i.n to i64
  %i.q = mul nsw i64 %i.p, %i.o                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = ashr i32 %i.m, 1                         ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  %.not32.i.i = icmp eq i64 %i.q, 0
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %.not32.i.i
  br i1 %or.cond.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %wide.trip.count.i.i = zext nneg i32 %i.r to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.t = mul i64 %indvars.iv.i.i, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.v = trunc i64 %indvars.iv.i.i to i32
  %i.w = xor i32 %i.v, -1
  %i.x = add i32 %i.m, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.q, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.02935.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.03034.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.ad, %bb.g ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.02935.i.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.i, i64 %i.ab, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.i, ptr align 1 %.03034.i.i, i64 %i.ab, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.i, ptr nonnull align 16 %i.a, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.03133.i.i, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.03034.i.i, i64 %i.ab
  %i.ae = sub nuw i64 %.02935.i.i, %i.ab          ; 2 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL19stbi__vertical_flipPviii.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZL19stbi__vertical_flipPviii.exit.i:             ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.h:                                             ; preds = %bb.a
  %i.af = tail call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 9 uses
  %.not28 = icmp eq ptr %i.af, null
  br i1 %.not28, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %1, align 4, !tbaa !72    ; 3 uses
  %i.ah = load i32, ptr %2, align 4, !tbaa !72    ; 4 uses
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i32, ptr %3, align 4, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi i32 [ %i.ai, %bb.j ], [ %4, %bb.i ] ; 8 uses
  %i.ak = or i32 %i.ah, %i.ag
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.ak, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.l, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.al = icmp eq i32 %i.ah, 0
  br i1 %i.al, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i.i:          ; preds = %bb.l
  %i.am = udiv i32 2147483647, %i.ah
  %.not37.i.i.i = icmp sgt i32 %i.ag, %i.am
  br i1 %.not37.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.l
  %i.an = mul nuw nsw i32 %i.ah, %i.ag            ; 8 uses
  %i.ao = or i32 %i.aj, %i.an
  %or.cond.not.i16.i.i.i = icmp sgt i32 %i.ao, -1
  br i1 %or.cond.not.i16.i.i.i, label %bb.m, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i

bb.m:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i
  %i.ap = icmp eq i32 %i.aj, 0
  br i1 %i.ap, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i.i:        ; preds = %bb.m
  %i.aq = udiv i32 2147483647, %i.aj
  %.not.i.i.i = icmp sgt i32 %i.an, %i.aq
  br i1 %.not.i.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %bb.m
  %i.ar = mul nuw nsw i32 %i.aj, %i.an            ; 2 uses
  %or.cond.i = icmp ugt i32 %i.ar, 536870911
  br i1 %or.cond.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %_ZL17stbi__malloc_mad4iiiii.exit.i

_ZL17stbi__malloc_mad4iiiii.exit.i:               ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i
  %i.as = shl nuw nsw i32 %i.ar, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.at) #54 ; 8 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, label %bb.n

_ZL17stbi__malloc_mad4iiiii.exit.thread.i:        ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i.i, %bb.k
  tail call void @free(ptr noundef nonnull %i.af) #53
  %i.aw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.aw, align 8, !tbaa !71
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.n:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit.i
  %i.ax = and i32 %i.aj, 1
  %.not.i31 = icmp eq i32 %i.ax, 0                ; 2 uses
  %i.ay = sext i1 %.not.i31 to i32
  %.0.i = add i32 %i.aj, %i.ay                    ; 5 uses
  %i.az = icmp sgt i32 %i.an, 0
  br i1 %i.az, label %.preheader48.lr.ph.i, label %.loopexit.i

.preheader48.lr.ph.i:                             ; preds = %bb.n
  %i.ba = icmp sgt i32 %.0.i, 0
  %i.bb = load float, ptr @_ZL15stbi__l2h_gamma, align 4 ; 3 uses
  %i.bc = load float, ptr @_ZL15stbi__l2h_scale, align 4 ; 3 uses
  br i1 %i.ba, label %.preheader48.preheader.i, label %._crit_edge51.split.i

.preheader48.preheader.i:                         ; preds = %.preheader48.lr.ph.i
  %i.bd = sext i32 %i.aj to i64
  %wide.trip.count58.i = zext nneg i32 %i.an to i64
  %wide.trip.count.i = zext nneg i32 %.0.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.be = icmp eq i32 %.0.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod42 = trunc i32 %.0.i to i1
  br label %.preheader48.i

.preheader48.i:                                   ; preds = %._crit_edge.i, %.preheader48.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader48.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 2 uses
  %i.bf = mul nuw nsw i64 %indvars.iv55.i, %i.bd  ; 3 uses
  br i1 %i.be, label %.epil.preheader, label %.preheader48.i.new

.preheader48.i.new:                               ; preds = %.preheader48.i, %.preheader48.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader48.i.new ], [ 0, %.preheader48.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.i.new ], [ 0, %.preheader48.i ]
  %i.bg = add nsw i64 %indvars.iv.i, %i.bf        ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.af, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !84
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = fdiv float %i.bj, 2.550000e+02
  %i.bl = tail call noundef float @powf(float noundef %i.bk, float noundef %i.bb) #53
  %i.bm = fmul float %i.bc, %i.bl
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bg
  store float %i.bm, ptr %i.bn, align 4, !tbaa !68
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.bo = add nsw i64 %indvars.iv.next.i, %i.bf   ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.af, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !84
  %i.br = uitofp i8 %i.bq to float
  %i.bs = fdiv float %i.br, 2.550000e+02
  %i.bt = tail call noundef float @powf(float noundef %i.bs, float noundef %i.bb) #53
  %i.bu = fmul float %i.bc, %i.bt
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bo
  store float %i.bu, ptr %i.bv, align 4, !tbaa !68
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader48.i.new, !llvm.loop !575

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader48.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader48.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader48.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.bw = add nsw i64 %indvars.iv.i.epil.init, %i.bf ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.af, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !84
  %i.bz = uitofp i8 %i.by to float
  %i.ca = fdiv float %i.bz, 2.550000e+02
  %i.cb = tail call noundef float @powf(float noundef %i.ca, float noundef %i.bb) #53
  %i.cc = fmul float %i.bc, %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bw
  store float %i.cc, ptr %i.cd, align 4, !tbaa !68
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %._crit_edge51.split.i, label %.preheader48.i, !llvm.loop !576

._crit_edge51.split.i:                            ; preds = %._crit_edge.i, %.preheader48.lr.ph.i
  br i1 %.not.i31, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge51.split.i
  %i.ce = sext i32 %i.aj to i64                   ; 3 uses
  %i.cf = sext i32 %.0.i to i64                   ; 3 uses
  %wide.trip.count63.i = zext nneg i32 %i.an to i64 ; 2 uses
  %xtraiter43 = and i64 %wide.trip.count63.i, 1
  %i.cg = icmp eq i32 %i.an, 1
  br i1 %i.cg, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter46 = and i64 %wide.trip.count63.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next61.i.1, %.lr.ph.i ] ; 3 uses
  %niter47 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter47.next.1, %.lr.ph.i ]
  %i.ch = mul nuw nsw i64 %indvars.iv60.i, %i.ce
  %i.ci = add nsw i64 %i.ch, %i.cf                ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.af, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !84
  %i.cl = uitofp i8 %i.ck to float
  %i.cm = fdiv float %i.cl, 2.550000e+02
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ci
  store float %i.cm, ptr %i.cn, align 4, !tbaa !68
  %indvars.iv.next61.i = or disjoint i64 %indvars.iv60.i, 1
  %i.co = mul nuw nsw i64 %indvars.iv.next61.i, %i.ce
  %i.cp = add nsw i64 %i.co, %i.cf                ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.af, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !84
  %i.cs = uitofp i8 %i.cr to float
  %i.ct = fdiv float %i.cs, 2.550000e+02
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cp
  store float %i.ct, ptr %i.cu, align 4, !tbaa !68
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter47.next.1 = add i64 %niter47, 2           ; 2 uses
  %niter47.ncmp.1 = icmp eq i64 %niter47.next.1, %unroll_iter46
  br i1 %niter47.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !577

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next61.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.cv = mul nuw nsw i64 %indvars.iv60.i.epil.init, %i.ce
  %i.cw = add nsw i64 %i.cv, %i.cf                ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.af, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !84
  %i.cz = uitofp i8 %i.cy to float
  %i.da = fdiv float %i.cz, 2.550000e+02
  %i.db = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cw
  store float %i.da, ptr %i.db, align 4, !tbaa !68
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %._crit_edge51.split.i, %bb.n
  tail call void @free(ptr noundef nonnull %i.af) #53
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

bb.o:                                             ; preds = %bb.h
  %i.dc = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.dc, align 8, !tbaa !71
  br label %_ZL23stbi__float_postprocessPfPiS0_S0_i.exit

_ZL23stbi__float_postprocessPfPiS0_S0_i.exit:     ; preds = %.loopexit.i, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i, %bb.b, %bb.c, %_ZL19stbi__vertical_flipPviii.exit.i, %bb.o
  %.0 = phi ptr [ null, %bb.o ], [ null, %bb.b ], [ %i.c, %_ZL19stbi__vertical_flipPviii.exit.i ], [ %i.c, %bb.c ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread.i ], [ %i.au, %.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %6 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #53
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !74
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !82
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !3 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !80
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !80
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !84
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !86
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %6, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #53
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.4, ptr %i.b, align 8, !tbaa !71
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !74
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !82
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !83
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !578 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !80
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !80
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !79
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !84
  br label %stbi_loadf_from_file.exit

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %stbi_loadf_from_file.exit

stbi_loadf_from_file.exit:                        ; preds = %bb.d, %bb.e
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !86
  %i.aa = call fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  %i.ab = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %stbi_loadf_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %stbi_loadf_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noalias noundef ptr @stbi_loadf_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #53
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !74
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !82
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !0 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !80
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !80
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !84
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i.i, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8, !tbaa !86
  %i.y = call fastcc noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #53
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_is_hdr_from_memory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %2 = alloca %struct.stbi__context, align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #53
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !82
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !85
  %i.j = call fastcc noundef i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef nonnull %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 32 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 23 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !82
  %.pre12.i = load ptr, ptr %i.b, align 8, !tbaa !85
  br label %bb.c

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 11
  br i1 %.not.i, label %_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit, label %bb.c, !llvm.loop !579

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %.pre12.i, %bb.a ], [ %i.ah, %bb.b ] ; 3 uses
  %i.l = phi ptr [ %.pre.i, %bb.a ], [ %i.ai, %bb.b ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr @.str.117, i64 %indvars.iv.i
  %i.n = icmp ult ptr %i.l, %i.k
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !82
  %i.p = load i8, ptr %i.l, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.c, align 8, !tbaa !79
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %_ZL10stbi__get8P13stbi__context.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.t = load i32, ptr %i.g, align 4, !tbaa !78
  %i.u = tail call noundef i32 %i.r(ptr noundef %i.s, ptr noundef nonnull %i.f, i32 noundef %i.t), !inline_history !580 ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !80
  %i.ac = add nsw i32 %i.ab, %i.aa
  store i32 %i.ac, ptr %i.i, align 8, !tbaa !80
  %i.ad = icmp eq i32 %i.u, 0
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.c, align 8, !tbaa !79
  store i8 0, ptr %i.f, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = sext i32 %i.u to i64
  %i.af = getelementptr inbounds i8, ptr %i.f, i64 %i.ae
  %.pre.i.i = load i8, ptr %i.f, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ag = phi i8 [ 0, %bb.g ], [ %.pre.i.i, %bb.h ]
  %.sink.i.i.i = phi ptr [ %i.j, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.b, align 8, !tbaa !85
  store ptr %i.j, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit.i

_ZL10stbi__get8P13stbi__context.exit.i:           ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i, %bb.e, %bb.d
  %i.ah = phi ptr [ %i.k, %bb.d ], [ %.sink.i.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.k, %bb.e ]
  %i.ai = phi ptr [ %i.o, %bb.d ], [ %i.j, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ %i.l, %bb.e ]
  %.0.i.i = phi i8 [ %i.p, %bb.d ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i ], [ 0, %bb.e ]
  %i.aj = zext i8 %.0.i.i to i32
  %i.ak = load i8, ptr %i.m, align 1, !tbaa !84
  %i.al = sext i8 %i.ak to i32
  %.not8.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not8.i, label %bb.b, label %bb.i

_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit: ; preds = %bb.b
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit20

bb.i:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !81  ; 6 uses
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 15 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !86 ; 3 uses
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !85
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.at, label %bb.au

bb.j:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i13
  %i.as = icmp ult ptr %i.gt, %i.gs
  br i1 %i.as, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.c, align 8, !tbaa !79
  %.not.i.i9.1 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i9.1, label %_ZL19stbi__hdr_test_coreP13stbi__contextPKc.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.aw = load i32, ptr %i.g, align 4, !tbaa !78
  %i.ax = tail call noundef i32 %i.au(ptr noundef %i.av, ptr noundef nonnull %i.f, i32 noundef %i.aw), !inline_history !580 ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !81  ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
end_hunk_0
begin_hunk_1_@stbi_is_16_bit_from_callbacks:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !82
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !3 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !80
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !80
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !84
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !86
  %i.y = call fastcc noundef i32 @_ZL16stbi__is_16_mainP13stbi__context(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #53
  ret i32 %i.y
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3tev15StbiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4, i64 %5, ptr nofree nonnull readnone align 4 captures(none) %6, i32 noundef %7) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %8 = alloca %struct.stbi__context, align 8      ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(1632) ptr @_Znwm(i64 noundef 1632) #56 ; 80 uses
  store ptr @_ZNK3tev15StbiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume, ptr %i.b, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_ZNK3tev15StbiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy, ptr %destroy.addr, align 8
  %.reload.addr679 = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 19 uses
  %.reload.addr681 = getelementptr inbounds nuw i8, ptr %i.b, i64 592 ; 16 uses
  %.reload.addr682 = getelementptr inbounds nuw i8, ptr %i.b, i64 816 ; 7 uses
  %.reload.addr683 = getelementptr inbounds nuw i8, ptr %i.b, i64 1040 ; 4 uses
  %.reload.addr684 = getelementptr inbounds nuw i8, ptr %i.b, i64 1184 ; 5 uses
  %.reload.addr685 = getelementptr inbounds nuw i8, ptr %i.b, i64 1328 ; 5 uses
  %.reload.addr687 = getelementptr inbounds nuw i8, ptr %i.b, i64 1472 ; 2 uses
  %.reload.addr694 = getelementptr inbounds nuw i8, ptr %i.b, i64 1528 ; 2 uses
  %.reload.addr695 = getelementptr inbounds nuw i8, ptr %i.b, i64 576 ; 2 uses
  %.reload.addr696 = getelementptr inbounds nuw i8, ptr %i.b, i64 1544 ; 2 uses
  %.reload.addr697 = getelementptr inbounds nuw i8, ptr %i.b, i64 1592 ; 6 uses
  %.reload.addr698 = getelementptr inbounds nuw i8, ptr %i.b, i64 1560 ; 5 uses
  %.reload.addr700 = getelementptr inbounds nuw i8, ptr %i.b, i64 1600 ; 6 uses
  %.reload.addr701 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.b, i64 1604 ; 4 uses
  store i32 %7, ptr %.spill.addr, align 4
  %i.c = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #57
          to label %.noexc unwind label %.body.from. ; 3 uses

.noexc:                                           ; preds = %.from.
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.d, i8 0, i64 108, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE, i64 16), ptr %i.c, align 8, !tbaa !125
  store ptr %i.c, ptr %.reload.addr701, align 8, !tbaa !128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.e = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #57
          to label %bb.a unwind label %.body.from.597 ; 5 uses

.body.from.597:                                   ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr701) #53
  br label %.body

.body.from.:                                      ; preds = %.from.
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !623
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.e, align 8, !tbaa !125, !noalias !623
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !623
  store i32 2, ptr %i.k, align 8, !tbaa !130, !noalias !623
  store ptr %i.j, ptr %i.h, align 8, !tbaa !134, !alias.scope !624
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.l, align 8, !tbaa !135, !alias.scope !624
  tail call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr701) #53
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.n = load i32, ptr %i.m, align 8, !tbaa !144  ; 2 uses
  %i.o = and i32 %i.n, 16
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !145  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !146  ; 3 uses
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.from..thread.i, label %.from.438

.from..thread.i:                                  ; preds = %bb.b
  store ptr %i.s, ptr %i.p, align 8, !tbaa !145
  br label %.from.438

bb.c:                                             ; preds = %bb.a
  %i.u = and i32 %i.n, 8
  %.not1.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not1.i.i.i, label %.from.442, label %.from.434

.from.438:                                        ; preds = %.from..thread.i, %bb.b
  %i.v = phi ptr [ %i.s, %.from..thread.i ], [ %i.q, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !147  ; 2 uses
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  br label %.from.442

.from.434:                                        ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !148
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  br label %.from.442

.from.442:                                        ; preds = %bb.c, %.from.434, %.from.438
  %.pn17.i = phi ptr [ %i.x, %.from.438 ], [ %i.ac, %.from.434 ], [ null, %bb.c ]
  %.sroa.4.0.i.i4.i = phi i64 [ %i.aa, %.from.438 ], [ %i.ah, %.from.434 ], [ 0, %bb.c ]
  %i.ai = invoke { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.d unwind label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from.

bb.d:                                             ; preds = %.from.442
  %i.aj = extractvalue { i64, i64 } %i.ai, 1      ; 2 uses
  %i.ak = sub i64 %.sroa.4.0.i.i4.i, %i.aj
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 %i.aj ; 11 uses
  store i32 1, ptr %.reload.addr698, align 8, !tbaa !72
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 832 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  store i32 0, ptr %i.am, align 8, !tbaa !79
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1000
  store i32 0, ptr %i.an, align 8, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  store ptr %.sroa.0.0.i, ptr %i.ao, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  store ptr %.sroa.0.0.i, ptr %i.ap, align 8, !tbaa !82
  %sext = shl i64 %i.ak, 32
  %i.aq = ashr exact i64 %sext, 32
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 %i.aq ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1032
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !86
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1016
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !85
  %i.au = invoke fastcc noundef range(i32 0, 2) i32 @_ZL14stbi__hdr_testP13stbi__context(ptr noundef %.reload.addr682)
          to label %bb.e unwind label %.thread282.from.567 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.spill.addr612 = getelementptr inbounds nuw i8, ptr %i.b, i64 1608 ; 3 uses
  store i32 %i.au, ptr %.spill.addr612, align 8
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1596
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr null, ptr %i.aw, align 8, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  store i32 0, ptr %i.ax, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 776
  store i32 0, ptr %i.ay, align 8, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  store ptr %.sroa.0.0.i, ptr %i.az, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  store ptr %.sroa.0.0.i, ptr %i.ba, align 8, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 808
  store ptr %i.ar, ptr %i.bb, align 8, !tbaa !86
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 792
  store ptr %i.ar, ptr %i.bc, align 8, !tbaa !85
  %i.bd = invoke fastcc noalias noundef ptr @_ZL16stbi__loadf_mainP13stbi__contextPiS1_S1_i(ptr noundef %.reload.addr681, ptr noundef nonnull %.reload.addr697, ptr noundef nonnull %i.av, ptr noundef nonnull %.reload.addr700, i32 noundef 0)
          to label %.from._ZNSt3__110unique_ptrIvPFvPvEE5resetB8ne180100ES1_.exit unwind label %.thread282.from.567

_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from.: ; preds = %.from.442
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

.thread282.from.567:                              ; preds = %bb.d, %bb.f
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #53
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !79
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 184 ; 2 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.bj, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  store ptr %.sroa.0.0.i, ptr %i.bk, align 8, !tbaa !82
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 216 ; 2 uses
  store ptr %i.ar, ptr %i.bl, align 8, !tbaa !86
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  store ptr %i.ar, ptr %i.bm, align 8, !tbaa !85
  %i.bn = invoke fastcc noundef i32 @_ZL14stbi__gif_testP13stbi__context(ptr noundef %8)
          to label %bb.h unwind label %.from.451

bb.h:                                             ; preds = %bb.g
  %.not74 = icmp eq i32 %i.bn, 0
  br i1 %.not74, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.bg, align 8, !tbaa !83
  store i32 0, ptr %i.bh, align 8, !tbaa !79
  store i32 0, ptr %i.bi, align 8, !tbaa !80
  store ptr %.sroa.0.0.i, ptr %i.bj, align 8, !tbaa !81
  store ptr %.sroa.0.0.i, ptr %i.bk, align 8, !tbaa !82
  store ptr %i.ar, ptr %i.bl, align 8, !tbaa !86
  store ptr %i.ar, ptr %i.bm, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 1596
  %i.bp = invoke fastcc noundef ptr @_ZL19stbi__load_gif_mainP13stbi__contextPPiS1_S1_S1_S1_i(ptr noundef %8, ptr noundef nonnull %i.a, ptr noundef nonnull %.reload.addr697, ptr noundef nonnull %i.bo, ptr noundef nonnull %.reload.addr698, ptr noundef nonnull %.reload.addr700, i32 noundef 0)
          to label %.from._ZNSt3__110unique_ptrIvPFvPvEE5resetB8ne180100ES1_.exit91 unwind label %.from.448

.from._ZNSt3__110unique_ptrIvPFvPvEE5resetB8ne180100ES1_.exit91: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  br label %.from.454

.from.451:                                        ; preds = %bb.g, %bb.j
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  br label %.thread282.from.

.from.448:                                        ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  br label %.thread282.from.

bb.j:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 1596
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr null, ptr %i.bt, align 8, !tbaa !83
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i32 0, ptr %i.bu, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i32 0, ptr %i.bv, align 8, !tbaa !80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr %.sroa.0.0.i, ptr %i.bw, align 8, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store ptr %.sroa.0.0.i, ptr %i.bx, align 8, !tbaa !82
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr %i.ar, ptr %i.by, align 8, !tbaa !86
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store ptr %i.ar, ptr %i.bz, align 8, !tbaa !85
  %i.ca = invoke fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %.reload.addr679, ptr noundef nonnull %.reload.addr697, ptr noundef nonnull %i.bs, ptr noundef nonnull %.reload.addr700, i32 noundef 0)
          to label %.from.454 unwind label %.from.451

.from.454:                                        ; preds = %.from._ZNSt3__110unique_ptrIvPFvPvEE5resetB8ne180100ES1_.exit91, %bb.j
  %.sroa.0211.0 = phi ptr [ %i.bp, %.from._ZNSt3__110unique_ptrIvPFvPvEE5resetB8ne180100ES1_.exit91 ], [ %i.ca, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br label %.from._ZNSt3__110unique_ptrIvPFvPvEE5resetB8ne180100ES1_.exit

.thread282.from.:                                 ; preds = %.from.451, %.from.448
  %.pn75 = phi { ptr, i32 } [ %i.br, %.from.448 ], [ %i.bq, %.from.451 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

.from._ZNSt3__110unique_ptrIvPFvPvEE5resetB8ne180100ES1_.exit: ; preds = %bb.f, %.from.454
  %.sroa.0211.1 = phi ptr [ %.sroa.0211.0, %.from.454 ], [ %i.bd, %bb.f ] ; 2 uses
  %.sroa.0211.1.spill.addr = getelementptr inbounds nuw i8, ptr %i.b, i64 1568 ; 4 uses
  store ptr %.sroa.0211.1, ptr %.sroa.0211.1.spill.addr, align 8
  %.not293 = icmp eq ptr %.sroa.0211.1, null
  br i1 %.not293, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.from._ZNSt3__110unique_ptrIvPFvPvEE5resetB8ne180100ES1_.exit
  %i.cb = call ptr @__cxa_allocate_exception(i64 16) #53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #53
  %i.cc = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !71
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %i.cd)
          to label %bb.l unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.cb, align 8, !tbaa !125
  invoke void @__cxa_throw(ptr nonnull %i.cb, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #58
          to label %bb.cs unwind label %.thread706

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.k
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  br label %.thread282.from.571.sink.split

bb.n:                                             ; preds = %bb.l
  %i.cf = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cg = load i8, ptr %9, align 8
  %i.ch = trunc i8 %i.cg to i1
  br i1 %i.ch, label %.split, label %.thread282.from.571.sink.split

.thread706:                                       ; preds = %bb.m
  %i.ci = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cj = load i8, ptr %9, align 8
  %i.ck = trunc i8 %i.cj to i1
  br i1 %i.ck, label %.split, label %.thread282.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %.thread706, %bb.n
  %i.cl = phi { ptr, i32 } [ %i.ci, %.thread706 ], [ %i.cf, %bb.n ] ; 2 uses
  %.062708 = phi i1 [ false, %.thread706 ], [ true, %bb.n ]
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !84
  %i.co = load i64, ptr %9, align 8
  %i.cp = and i64 %i.co, -2
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cp) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  br i1 %.062708, label %.thread282.from.571, label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

.thread282.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %.thread706
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

.thread282.from.571.sink.split:                   ; preds = %bb.n, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn76238.ph = phi { ptr, i32 } [ %i.ce, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.cf, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #53
  br label %.thread282.from.571

.thread282.from.571:                              ; preds = %.thread282.from.571.sink.split, %.split
  %.pn76238 = phi { ptr, i32 } [ %i.cl, %.split ], [ %.pn76238.ph, %.thread282.from.571.sink.split ]
  call void @__cxa_free_exception(ptr %i.cb) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

bb.o:                                             ; preds = %.from._ZNSt3__110unique_ptrIvPFvPvEE5resetB8ne180100ES1_.exit
  %i.cq = load i32, ptr %.reload.addr698, align 8, !tbaa !72 ; 4 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cs = call ptr @__cxa_allocate_exception(i64 16) #53 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #53
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull @.str.5)
          to label %bb.q unwind label %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.cs, align 8, !tbaa !125
  invoke void @__cxa_throw(ptr nonnull %i.cs, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #58
          to label %bb.cs unwind label %.thread712

.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98.thread: ; preds = %bb.p
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #53
  br label %.thread273.from..thread273.sink.split

bb.s:                                             ; preds = %bb.q
  %i.cu = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cv = load i8, ptr %10, align 8
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %.split242, label %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98

.thread712:                                       ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cy = load i8, ptr %10, align 8
  %i.cz = trunc i8 %i.cy to i1
  br i1 %i.cz, label %.split242, label %.thread273.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit98

end_hunk_1
begin_hunk_2_@_ZL14stbi__pnm_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %i.h = load i32, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.i = icmp ugt i32 %i.h, 16777216
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.j, align 8, !tbaa !71
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  store i32 %i.h, ptr %1, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !116  ; 2 uses
  store i32 %i.k, ptr %2, align 4, !tbaa !72
  %.not = icmp eq ptr %3, null
  %.pre = load i32, ptr %i.b, align 8, !tbaa !117 ; 5 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.pre, ptr %3, align 4, !tbaa !72
  %.pre70 = load i32, ptr %i.a, align 4, !tbaa !116
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi i32 [ %.pre70, %bb.g ], [ %i.k, %bb.f ] ; 5 uses
  %i.m = load i32, ptr %0, align 8, !tbaa !115    ; 5 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !88     ; 2 uses
  %i.o = sdiv i32 %i.n, 8                         ; 4 uses
  %i.p = or i32 %i.m, %.pre
  %or.cond.not.i.i = icmp sgt i32 %i.p, -1
  br i1 %or.cond.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.q, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.i
  %i.r = udiv i32 2147483647, %i.m
  %.not37.i = icmp sgt i32 %.pre, %i.r
  br i1 %.not37.i, label %bb.l, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.i
  %i.s = mul i32 %i.m, %.pre                      ; 4 uses
  %i.t = or i32 %i.l, %i.s
  %or.cond.not.i16.i = icmp sgt i32 %i.t, -1
  br i1 %or.cond.not.i16.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i
  %i.u = icmp eq i32 %i.l, 0                      ; 2 uses
  br i1 %i.u, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i, label %_ZL21stbi__mul2sizes_validii.exit18.i

_ZL21stbi__mul2sizes_validii.exit18.i:            ; preds = %bb.j
  %i.v = udiv i32 2147483647, %i.l
  %.not.i = icmp sgt i32 %i.s, %i.v
  br i1 %.not.i, label %bb.l, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit18.i, %bb.j
  %i.w = mul i32 %i.s, %i.l                       ; 4 uses
  %i.x = or i32 %i.o, %i.w
  %or.cond.not.i19.i = icmp sgt i32 %i.x, -1
  br i1 %or.cond.not.i19.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %.off = add i32 %i.n, 7
  %i.y = icmp ult i32 %.off, 15                   ; 2 uses
  br i1 %i.y, label %_ZL21stbi__mad4sizes_validiiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i

_ZL21stbi__mul2sizes_validii.exit21.i:            ; preds = %bb.k
  %i.z = udiv i32 2147483647, %i.o
  %.not38.i = icmp sgt i32 %i.w, %i.z
  br i1 %.not38.i, label %bb.l, label %_ZL21stbi__mad4sizes_validiiiii.exit

bb.l:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit21.i, %_ZL21stbi__mul2sizes_validii.exit18.i, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit.thread24.i, %bb.h, %_ZL21stbi__mul2sizes_validii.exit18.thread29.i
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.aa, align 8, !tbaa !71
  br label %bb.t

_ZL21stbi__mad4sizes_validiiiii.exit:             ; preds = %bb.k, %_ZL21stbi__mul2sizes_validii.exit21.i
  br i1 %i.q, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mad4sizes_validiiiii.exit
  %i.ab = udiv i32 2147483647, %i.m
  %.not37.i.i = icmp sgt i32 %.pre, %i.ab
  br i1 %.not37.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i

_ZL21stbi__mul2sizes_validii.exit.thread24.i.i:   ; preds = %_ZL21stbi__mad4sizes_validiiiii.exit, %_ZL21stbi__mul2sizes_validii.exit.i.i
  br i1 %i.u, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, label %_ZL21stbi__mul2sizes_validii.exit18.i.i

_ZL21stbi__mul2sizes_validii.exit18.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i
  %i.ac = udiv i32 2147483647, %i.l
  %.not.i.i = icmp sgt i32 %i.s, %i.ac
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i

_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i: ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread24.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i
  br i1 %i.y, label %_ZL17stbi__malloc_mad4iiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit21.i.i

_ZL21stbi__mul2sizes_validii.exit21.i.i:          ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i
  %i.ad = udiv i32 2147483647, %i.o
  %.not38.i.i = icmp sgt i32 %i.w, %i.ad
  br i1 %.not38.i.i, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %_ZL17stbi__malloc_mad4iiiii.exit

_ZL17stbi__malloc_mad4iiiii.exit:                 ; preds = %_ZL21stbi__mul2sizes_validii.exit18.thread29.i.i, %_ZL21stbi__mul2sizes_validii.exit21.i.i
  %i.ae = mul i32 %i.o, %i.w                      ; 3 uses
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.af) #54 ; 9 uses
  %.not55 = icmp eq ptr %i.ag, null
  br i1 %.not55, label %_ZL17stbi__malloc_mad4iiiii.exit.thread, label %bb.m

_ZL17stbi__malloc_mad4iiiii.exit.thread:          ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit18.i.i, %_ZL21stbi__mul2sizes_validii.exit21.i.i, %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ah = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.ah, align 8, !tbaa !71
  br label %bb.t

bb.m:                                             ; preds = %_ZL17stbi__malloc_mad4iiiii.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83 ; 2 uses
  %.not.i59 = icmp eq ptr %i.aj, null
  br i1 %.not.i59, label %..thread_crit_edge.i, label %bb.n

..thread_crit_edge.i:                             ; preds = %bb.m
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !82
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre35.i = load ptr, ptr %.phi.trans.insert34.i, align 8, !tbaa !85
  br label %.thread.i

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !85 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !82 ; 3 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = icmp sgt i32 %i.ae, %i.ar
  br i1 %i.as, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.n, %..thread_crit_edge.i
  %i.at = phi ptr [ %.pre35.i, %..thread_crit_edge.i ], [ %i.al, %bb.n ]
  %i.au = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.an, %bb.n ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.af ; 2 uses
  %.not32.i = icmp ugt ptr %i.av, %i.at
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread65

_ZL10stbi__getnP13stbi__contextPhi.exit.thread65: ; preds = %.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.au, i64 %i.af, i1 false)
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !82
  br label %bb.o

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %bb.n
  %sext.i = shl i64 %i.aq, 32
  %i.ax = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.an, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !77
  %i.ba = getelementptr inbounds i8, ptr %i.ag, i64 %i.ax
  %i.bb = sub nsw i32 %i.ae, %i.ar                ; 2 uses
  %i.bc = tail call noundef i32 %i.aj(ptr noundef %i.az, ptr noundef nonnull %i.ba, i32 noundef %i.bb), !inline_history !323
  %.not69 = icmp eq i32 %i.bc, %i.bb
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !85
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !82
  br i1 %.not69, label %bb.o, label %_ZL10stbi__getnP13stbi__contextPhi.exit.thread

_ZL10stbi__getnP13stbi__contextPhi.exit.thread:   ; preds = %.thread.i, %_ZL10stbi__getnP13stbi__contextPhi.exit
  tail call void @free(ptr noundef nonnull %i.ag) #53
  %i.be = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.94, ptr %i.be, align 8, !tbaa !71
  br label %bb.t

bb.o:                                             ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.thread65, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %.not57 = icmp eq i32 %4, 0
  br i1 %.not57, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr %i.b, align 8, !tbaa !117 ; 3 uses
  %.not58 = icmp eq i32 %4, %i.bf
  br i1 %.not58, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load i32, ptr %5, align 4, !tbaa !88
  %i.bh = icmp eq i32 %i.bg, 16
  %i.bi = load i32, ptr %0, align 8, !tbaa !115   ; 2 uses
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !116 ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = tail call fastcc noundef ptr @_ZL22stbi__convert_format16Ptiijj(ptr noundef nonnull %i.ag, i32 noundef %i.bf, i32 noundef %4, i32 noundef %i.bi, i32 noundef %i.bj)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bl = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.ag, i32 noundef %i.bf, i32 noundef %4, i32 noundef %i.bi, i32 noundef %i.bj)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.o, %bb.p, %bb.a, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread, %_ZL17stbi__malloc_mad4iiiii.exit.thread, %bb.l, %bb.e, %bb.c
  %.048 = phi ptr [ null, %bb.l ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.a ], [ %i.ag, %bb.o ], [ null, %_ZL10stbi__getnP13stbi__contextPhi.exit.thread ], [ null, %_ZL17stbi__malloc_mad4iiiii.exit.thread ], [ %i.ag, %bb.p ], [ %i.bk, %bb.r ], [ %i.bl, %bb.s ]
  ret ptr %.048
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #9 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 17 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4 x i8], align 1                 ; 2 uses
  %i.d = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53
  %i.e = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.f = load i64, ptr %i.a, align 16
  %i.g = xor i64 %i.f, 5638868765947084579
  %i.h = getelementptr i8, ptr %i.a, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 19495776774865985
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.a, align 16
  %i.o = xor i32 %i.n, 1196572451
  %i.p = getelementptr i8, ptr %i.a, i64 3
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 4538951
  %i.s = or i32 %i.o, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not140 = icmp eq i32 %i.u, 0
  br i1 %.not140, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.100, ptr %i.v, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.w = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.x = load i8, ptr %i.a, align 16, !tbaa !84
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.012539 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.d ]
  %i.z = load i128, ptr %i.a, align 16
  %i.aa = xor i128 %i.z, 144150481438637697380701673535474650950
  %i.ab = getelementptr i8, ptr %i.a, i64 7
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, 526417854750532455411190335003243059
  %i.ae = or i128 %i.aa, %i.ad
  %i.af = icmp ne i128 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  %spec.select = select i1 %i.ah, i32 1, i32 %.012539 ; 2 uses
  %i.ai = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.aj = load i8, ptr %i.a, align 16, !tbaa !84
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %._crit_edge, label %.lr.ph, !llvm.loop !813

._crit_edge:                                      ; preds = %.lr.ph
  %i.al = icmp eq i32 %spec.select, 0
  br i1 %i.al, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.102, ptr %i.am, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.e:                                             ; preds = %._crit_edge
  %i.an = call fastcc noundef ptr @_ZL18stbi__hdr_gettokenP13stbi__contextPc(ptr noundef %0, ptr noundef %i.a) ; 0 uses
  %i.ao = load i16, ptr %i.a, align 16
  %i.ap = xor i16 %i.ao, 22829
  %i.aq = getelementptr i8, ptr %i.a, i64 2
  %i.ar = load i8, ptr %i.aq, align 2
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 32
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not142 = icmp eq i32 %i.aw, 0
  br i1 %.not142, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.104, ptr %i.ax, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !71
  %i.az = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.b, i32 noundef 10) #53 ; 2 uses
  %i.ba = trunc i64 %i.az to i32                  ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !71 ; 3 uses
  %i.bb = load i8, ptr %.promoted, align 1, !tbaa !84 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 32
  br i1 %i.bc, label %.lr.ph41, label %sub_0

.lr.ph41:                                         ; preds = %bb.g, %.lr.ph41
  %i.bd = phi ptr [ %i.be, %.lr.ph41 ], [ %.promoted, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 4 uses
  store ptr %i.be, ptr %i.b, align 8, !tbaa !71
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !84  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 32
  br i1 %i.bg, label %.lr.ph41, label %sub_0, !llvm.loop !814

sub_0:                                            ; preds = %.lr.ph41, %bb.g
  %i.bh = phi i8 [ %i.bb, %bb.g ], [ %i.bf, %.lr.ph41 ]
  %.lcssa38 = phi ptr [ %.promoted, %bb.g ], [ %i.be, %.lr.ph41 ] ; 3 uses
  %.not60 = icmp eq i8 %i.bh, 43
  br i1 %.not60, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa38, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %.not61 = icmp eq i8 %i.bj, 88
  br i1 %.not61, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa38, i64 2
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 32
  br i1 %i.bm, label %bb.h, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.bn = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.104, ptr %i.bn, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.h:                                             ; preds = %.tail
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa38, i64 3 ; 2 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !71
  %i.bp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bo, ptr noundef null, i32 noundef 10) #53 ; 4 uses
  %i.bq = trunc i64 %i.bp to i32                  ; 10 uses
  %i.br = icmp sgt i32 %i.ba, 16777216
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.bs, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.j:                                             ; preds = %bb.h
  %i.bt = icmp sgt i32 %i.bq, 16777216
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.bu, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.l:                                             ; preds = %bb.j
  store i32 %i.bq, ptr %1, align 4, !tbaa !72
  store i32 %i.ba, ptr %2, align 4, !tbaa !72
  %.not144 = icmp eq ptr %3, null
  br i1 %.not144, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %3, align 4, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bv = icmp eq i32 %4, 0
  %spec.store.select = select i1 %i.bv, i32 3, i32 %4 ; 9 uses
  %i.bw = call fastcc noundef i32 @_ZL21stbi__mad4sizes_validiiiii(i32 noundef %i.bq, i32 noundef %i.ba, i32 noundef %spec.store.select, i32 noundef 4)
  %.not145 = icmp eq i32 %i.bw, 0
  br i1 %.not145, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.bx, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.p:                                             ; preds = %bb.n
  %i.by = call fastcc noundef ptr @_ZL17stbi__malloc_mad4iiiii(i32 noundef %i.bq, i32 noundef %i.ba, i32 noundef %spec.store.select, i32 noundef 4) ; 11 uses
  %.not146 = icmp eq ptr %i.by, null
  br i1 %.not146, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.bz, align 8, !tbaa !71
  br label %._crit_edge58.thread

bb.r:                                             ; preds = %bb.p
  %i.ca = add i32 %i.bq, -32768
  %or.cond = icmp ult i32 %i.ca, -32760
  br i1 %or.cond, label %bb.s, label %.preheader17

.preheader17:                                     ; preds = %bb.r
  %i.cb = icmp sgt i32 %i.ba, 0
  br i1 %i.cb, label %.lr.ph57, label %._crit_edge58.thread

.lr.ph57:                                         ; preds = %.preheader17
  %i.cc = shl i64 %i.bp, 2
  %i.cd = and i64 %i.cc, 4294967292
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 11 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
end_hunk_2
begin_hunk_3_@_ZL14stbi__hdr_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %i.gp = load ptr, ptr %i.ce, align 8, !tbaa !82
  %i.gq = load ptr, ptr %i.cl, align 8, !tbaa !81
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = load i32, ptr %i.cm, align 8, !tbaa !80
  %i.gw = add nsw i32 %i.gv, %i.gu
  store i32 %i.gw, ptr %i.cm, align 8, !tbaa !80
  %i.gx = icmp eq i32 %i.go, 0
  br i1 %i.gx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.cg, align 8, !tbaa !79
  store i8 0, ptr %i.cj, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i162

bb.at:                                            ; preds = %bb.ar
  %i.gy = sext i32 %i.go to i64
  %i.gz = getelementptr inbounds i8, ptr %i.cj, i64 %i.gy
  %.pre.i161 = load i8, ptr %i.cj, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i162

_ZL19stbi__refill_bufferP13stbi__context.exit.i162: ; preds = %bb.at, %bb.as
  %i.ha = phi i8 [ 0, %bb.as ], [ %.pre.i161, %bb.at ]
  %.sink.i.i163 = phi ptr [ %i.cn, %bb.as ], [ %i.gz, %bb.at ]
  store ptr %.sink.i.i163, ptr %i.cf, align 8, !tbaa !85
  store ptr %i.cn, ptr %i.ce, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit165

_ZL10stbi__get8P13stbi__context.exit165:          ; preds = %bb.ap, %bb.aq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i162
  %.0.i164 = phi i8 [ %i.gj, %bb.ap ], [ %i.ha, %_ZL19stbi__refill_bufferP13stbi__context.exit.i162 ], [ 0, %bb.aq ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hb = shl nsw i64 %indvars.iv, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.hb
  store i8 %.0.i164, ptr %gep, align 1, !tbaa !84
  %i.hc = add nuw nsw i32 %.144, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hc, %i.ev
  br i1 %exitcond.not, label %.loopexit.loopexit63, label %.preheader13, !llvm.loop !818

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph47
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.lr.ph47.epil.preheader

.lr.ph47.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph47.preheader
  %indvars.iv92.epil.init = phi i64 [ %i.fu, %.lr.ph47.preheader ], [ %indvars.iv.next93.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod215)
  br label %.lr.ph47.epil

.lr.ph47.epil:                                    ; preds = %.lr.ph47.epil, %.lr.ph47.epil.preheader
  %indvars.iv92.epil = phi i64 [ %indvars.iv92.epil.init, %.lr.ph47.epil.preheader ], [ %indvars.iv.next93.epil, %.lr.ph47.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.lr.ph47.epil.preheader ], [ %epil.iter.next, %.lr.ph47.epil ]
  %indvars.iv.next93.epil = add nsw i64 %indvars.iv92.epil, 1 ; 2 uses
  %i.hd = shl nsw i64 %indvars.iv92.epil, 2
  %gep161.epil = getelementptr i8, ptr %invariant.gep160, i64 %i.hd
  store i8 %.0.i158, ptr %gep161.epil, align 1, !tbaa !84
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %.lr.ph47.epil, !llvm.loop !819

.loopexit.loopexit:                               ; preds = %.lr.ph47.epil, %.loopexit.loopexit.unr-lcssa
  %indvars.iv.next93.lcssa = phi i64 [ %indvars.iv.next93.3, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next93.epil, %.lr.ph47.epil ]
  %i.he = trunc nsw i64 %indvars.iv.next93.lcssa to i32
  br label %.loopexit

.loopexit.loopexit63:                             ; preds = %_ZL10stbi__get8P13stbi__context.exit165
  %i.hf = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit63, %.loopexit.loopexit, %.preheader
  %.5 = phi i32 [ %i.he, %.loopexit.loopexit ], [ %.212149, %.preheader ], [ %i.hf, %.loopexit.loopexit63 ] ; 2 uses
  %i.hg = sub nsw i32 %i.bq, %.5                  ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 1
  br i1 %i.hh, label %..critedge_crit_edge, label %bb.ab, !llvm.loop !820

..critedge_crit_edge:                             ; preds = %.loopexit
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, 4
  br i1 %exitcond99.not, label %.lr.ph53, label %.preheader15, !llvm.loop !821

bb.au:                                            ; preds = %.lr.ph53, %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv100 = phi i64 [ 0, %.lr.ph53 ], [ %indvars.iv.next101, %_ZL17stbi__hdr_convertPfPhi.exit ] ; 3 uses
  %i.hi = add nuw nsw i64 %indvars.iv100, %i.dv
  %i.hj = mul nsw i64 %i.hi, %i.cp
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.hj ; 11 uses
  %i.hl = shl nuw nsw i64 %indvars.iv100, 2
  %i.hm = getelementptr inbounds nuw i8, ptr %.1124, i64 %i.hl ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !84  ; 2 uses
  %.not.i166 = icmp eq i8 %i.ho, 0
  br i1 %.not.i166, label %bb.bb, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hp = zext i8 %i.ho to i32
  %i.hq = add nsw i32 %i.hp, -136
  %i.hr = call noundef float @ldexpf(float noundef 1.000000e+00, i32 noundef %i.hq) #53 ; 4 uses
  %i.hs = load i8, ptr %i.hm, align 1, !tbaa !84  ; 2 uses
  br i1 %i.co, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ht = zext i8 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !84
  %i.hw = zext i8 %i.hv to i32
  %i.hx = add nuw nsw i32 %i.hw, %i.ht
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !84
  %i.ia = zext i8 %i.hz to i32
  %i.ib = add nuw nsw i32 %i.hx, %i.ia
  %i.ic = uitofp nneg i32 %i.ib to float
  %i.id = fmul float %i.hr, %i.ic
  %i.ie = fdiv float %i.id, 3.000000e+00
  store float %i.ie, ptr %i.hk, align 4, !tbaa !68
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.if = uitofp i8 %i.hs to float
  %i.ig = fmul float %i.hr, %i.if
  store float %i.ig, ptr %i.hk, align 4, !tbaa !68
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !84
  %i.ij = uitofp i8 %i.ii to float
  %i.ik = fmul float %i.hr, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store float %i.ik, ptr %i.il, align 4, !tbaa !68
  %i.im = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.in = load i8, ptr %i.im, align 1, !tbaa !84
  %i.io = uitofp i8 %i.in to float
  %i.ip = fmul float %i.hr, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store float %i.ip, ptr %i.iq, align 4, !tbaa !68
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  switch i32 %4, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 2, label %bb.az
    i32 4, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store float 1.000000e+00, ptr %i.ir, align 4, !tbaa !68
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.ba:                                            ; preds = %bb.ay
  %i.is = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store float 1.000000e+00, ptr %i.is, align 4, !tbaa !68
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.bb:                                            ; preds = %bb.au
  switch i32 %spec.store.select, label %_ZL17stbi__hdr_convertPfPhi.exit [
    i32 4, label %bb.bc
    i32 3, label %bb.bd
    i32 2, label %bb.be
    i32 1, label %bb.bf
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.it = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store float 1.000000e+00, ptr %i.it, align 4, !tbaa !68
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store float 0.000000e+00, ptr %i.iu, align 4, !tbaa !68
  store <2 x float> zeroinitializer, ptr %i.hk, align 4, !tbaa !68
  br label %_ZL17stbi__hdr_convertPfPhi.exit

bb.be:                                            ; preds = %bb.bb
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store float 1.000000e+00, ptr %i.iv, align 4, !tbaa !68
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  store float 0.000000e+00, ptr %i.hk, align 4, !tbaa !68
  br label %_ZL17stbi__hdr_convertPfPhi.exit

_ZL17stbi__hdr_convertPfPhi.exit:                 ; preds = %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.bf
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count
  br i1 %exitcond103.not, label %._crit_edge54, label %bb.au, !llvm.loop !822

._crit_edge54:                                    ; preds = %_ZL17stbi__hdr_convertPfPhi.exit
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge58, label %bb.w, !llvm.loop !823

._crit_edge58:                                    ; preds = %._crit_edge54
  call void @free(ptr noundef nonnull %.1124) #53
  br label %._crit_edge58.thread

._crit_edge58.thread:                             ; preds = %.preheader17, %bb.an, %.thread, %bb.s, %._crit_edge58, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.z, %bb.q, %bb.o, %bb.k, %bb.i, %.tail.thread, %bb.f, %._crit_edge.thread, %bb.c
  %.3130 = phi ptr [ null, %bb.c ], [ null, %bb.f ], [ null, %.tail.thread ], [ null, %bb.i ], [ null, %bb.k ], [ null, %._crit_edge.thread ], [ null, %bb.z ], [ %i.by, %bb.s ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ null, %bb.q ], [ null, %bb.o ], [ null, %bb.an ], [ %i.by, %._crit_edge58 ], [ null, %.thread ], [ %i.by, %.preheader17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret ptr %.3130
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @_ZL16stbi__hdr_to_ldrPfiii(ptr noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = or i32 %2, %1
  %or.cond.not.i.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.c
  %i.c = udiv i32 2147483647, %2
  %.not23.i.i = icmp sgt i32 %1, %i.c
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %2, %1                   ; 7 uses
  %i.e = or i32 %3, %i.d
  %or.cond.not.i10.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i.i, label %bb.d, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.d
  %i.g = udiv i32 2147483647, %3
  %.not.i.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.d, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.h = mul nuw nsw i32 %i.d, %3
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.i) #54 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.e

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %bb.b, %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  tail call void @free(ptr noundef nonnull %0) #53
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.l, align 8, !tbaa !71
  br label %bb.i

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.m = and i32 %3, 1
  %sext = add i32 %3, -1
  %.046 = add i32 %sext, %i.m                     ; 4 uses
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.preheader.lr.ph, label %._crit_edge55

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.o = icmp sgt i32 %.046, 0
  %i.p = load float, ptr @_ZL17stbi__h2l_scale_i, align 4
  %i.q = load float, ptr @_ZL17stbi__h2l_gamma_i, align 4
  br i1 %i.o, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.r = sext i32 %3 to i64
  %wide.trip.count66 = zext nneg i32 %i.d to i64
  %wide.trip.count61 = zext nneg i32 %.046 to i64
  %i.s = icmp slt i32 %.046, %3
  %i.t = zext nneg i32 %.046 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.h
  %indvars.iv63 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next64, %bb.h ] ; 2 uses
  %i.u = mul nuw nsw i64 %indvars.iv63, %i.r      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv58 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59, %bb.f ] ; 2 uses
  %i.v = add nsw i64 %indvars.iv58, %i.u          ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !68
  %i.y = fmul float %i.x, %i.p
  %i.z = tail call noundef float @powf(float noundef %i.y, float noundef %i.q) #53
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.ab = fcmp olt float %i.aa, 0.000000e+00
  %spec.store.select.us = select i1 %i.ab, float 0.000000e+00, float %i.aa ; 2 uses
  %i.ac = fcmp ogt float %spec.store.select.us, 2.550000e+02
  %spec.store.select2.us = select i1 %i.ac, float 2.550000e+02, float %spec.store.select.us
  %i.ad = fptosi float %spec.store.select2.us to i32
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds i8, ptr %i.j, i64 %i.v
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !84
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge.us, label %bb.f, !llvm.loop !824

bb.g:                                             ; preds = %._crit_edge.us
  %i.ag = add nsw i64 %i.u, %i.t                  ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !68
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.ak = fcmp olt float %i.aj, 0.000000e+00
  %spec.store.select1.us = select i1 %i.ak, float 0.000000e+00, float %i.aj ; 2 uses
  %i.al = fcmp ogt float %spec.store.select1.us, 2.550000e+02
  %spec.store.select3.us = select i1 %i.al, float 2.550000e+02, float %spec.store.select1.us
  %i.am = fptosi float %spec.store.select3.us to i32
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds i8, ptr %i.j, i64 %i.ag
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !84
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.us
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader.us, !llvm.loop !825

._crit_edge.us:                                   ; preds = %bb.f
  br i1 %i.s, label %bb.g, label %bb.h

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.preheader.preheader, label %._crit_edge55

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.aq = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 3 uses
  %min.iters.check = icmp ugt i32 %i.d, 3
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.ph, label %.preheader.preheader75

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !68
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.at = fcmp olt <4 x float> %i.as, zeroinitializer
  %i.au = select <4 x i1> %i.at, <4 x float> zeroinitializer, <4 x float> %i.as ; 2 uses
  %i.av = fcmp ogt <4 x float> %i.au, splat (float 2.550000e+02)
  %i.aw = select <4 x i1> %i.av, <4 x float> splat (float 2.550000e+02), <4 x float> %i.au
  %i.ax = fptosi <4 x float> %i.aw to <4 x i32>
  %i.ay = trunc <4 x i32> %i.ax to <4 x i8>
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %index
  store <4 x i8> %i.ay, ptr %i.az, align 1, !tbaa !84
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !826

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge55, label %.preheader.preheader75

.preheader.preheader75:                           ; preds = %.preheader.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader75, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader75 ] ; 2 uses
  %i.bb = mul nuw nsw i64 %indvars.iv, %i.aq      ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !68
  %i.be = tail call float @llvm.fmuladd.f32(float %i.bd, float 2.550000e+02, float 5.000000e-01) ; 2 uses
  %i.bf = fcmp olt float %i.be, 0.000000e+00
  %spec.store.select1 = select i1 %i.bf, float 0.000000e+00, float %i.be ; 2 uses
  %i.bg = fcmp ogt float %spec.store.select1, 2.550000e+02
  %spec.store.select3 = select i1 %i.bg, float 2.550000e+02, float %spec.store.select1
  %i.bh = fptosi float %spec.store.select3 to i32
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bb
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %.preheader, !llvm.loop !827

._crit_edge55:                                    ; preds = %.preheader, %bb.h, %middle.block, %.preheader.lr.ph.split, %bb.e
  tail call void @free(ptr noundef nonnull %0) #53
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge55, %_ZL17stbi__malloc_mad3iiii.exit.thread
  %.0 = phi ptr [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ %i.j, %._crit_edge55 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14stbi__tga_testP13stbi__context(ptr noundef nonnull %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 21 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %_ZL10stbi__get8P13stbi__context.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !79
end_hunk_3
