Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mimic?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mimic_decode_update_thread_context:bb.a

bb.p:                                             ; preds = %bb.o
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.y, ptr noundef nonnull %i.aa) #6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.ac) #6
  %i.ad = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.5 = icmp eq i32 %i.ad, 5
  br i1 %.not.5, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !38
  %.not22.5 = icmp eq ptr %i.af, null
  br i1 %.not22.5, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ae) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.ag) #6
  %i.ah = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.6 = icmp eq i32 %i.ah, 6
  br i1 %.not.6, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %.not22.6 = icmp eq ptr %i.aj, null
  br i1 %.not22.6, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ai) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.ak) #6
  %i.al = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.7 = icmp eq i32 %i.al, 7
  br i1 %.not.7, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %.not22.7 = icmp eq ptr %i.an, null
  br i1 %.not22.7, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.am) #6
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 184 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.ao) #6
  %i.ap = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.8 = icmp eq i32 %i.ap, 8
  br i1 %.not.8, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  %.not22.8 = icmp eq ptr %i.ar, null
  br i1 %.not22.8, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.aq) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 200 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.as) #6
  %i.at = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.9 = icmp eq i32 %i.at, 9
  br i1 %.not.9, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !38
  %.not22.9 = icmp eq ptr %i.av, null
  br i1 %.not22.9, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.as, ptr noundef nonnull %i.au) #6
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.aw) #6
  %i.ax = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.10 = icmp eq i32 %i.ax, 10
  br i1 %.not.10, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38
  %.not22.10 = icmp eq ptr %i.az, null
  br i1 %.not22.10, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ay) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 232 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.ba) #6
  %i.bb = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.11 = icmp eq i32 %i.bb, 11
  br i1 %.not.11, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %.not22.11 = icmp eq ptr %i.bd, null
  br i1 %.not22.11, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bc) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.be) #6
  %i.bf = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.12 = icmp eq i32 %i.bf, 12
  br i1 %.not.12, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !38
  %.not22.12 = icmp eq ptr %i.bh, null
  br i1 %.not22.12, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bg) #6
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.bi) #6
  %i.bj = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.13 = icmp eq i32 %i.bj, 13
  br i1 %.not.13, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %.not22.13 = icmp eq ptr %i.bl, null
  br i1 %.not22.13, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bk) #6
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.bm) #6
  %i.bn = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.14 = icmp eq i32 %i.bn, 14
  br i1 %.not.14, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !38
  %.not22.14 = icmp eq ptr %i.bp, null
  br i1 %.not22.14, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bo) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 296 ; 2 uses
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.bq) #6
  %i.br = load i32, ptr %i.f, align 16, !tbaa !30
  %.not.15 = icmp eq i32 %i.br, 15
  br i1 %.not.15, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 296 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  %.not22.15 = icmp eq ptr %i.bt, null
  br i1 %.not22.15, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @ff_progress_frame_ref(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bs) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.au, %bb.av, %bb.aw, %bb.a
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @mimic_decode_init(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %1, align 16, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 15, ptr %i.c, align 4, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  tail call void @ff_blockdsp_init(ptr noundef nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  tail call void @ff_bswapdsp_init(ptr noundef nonnull %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !44
  tail call void @ff_hpeldsp_init(ptr noundef nonnull %i.f, i32 noundef %i.h) #6
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 968
  tail call void @ff_idctdsp_init(ptr noundef nonnull %i.i, ptr noundef %0) #6
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1016
  tail call void @ff_permute_scantable(ptr noundef nonnull %i.j, ptr noundef nonnull @col_zag, ptr noundef nonnull %i.k) #6
  %i.l = tail call i32 @pthread_once(ptr noundef nonnull @mimic_decode_init.init_static_once, ptr noundef nonnull @mimic_init_static) #6 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 21, 1) i32 @mimic_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47   ; 4 uses
  %i.e = add nsw i32 %i.d, -20                    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 30 uses
  %i.h = icmp slt i32 %i.d, 21
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bytestream2_init.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 141) #6
  tail call void @abort() #7
  unreachable

bytestream2_init.exit:                            ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i16, ptr %i.j, align 1, !tbaa !48
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.o = load i16, ptr %i.k, align 1, !tbaa !48   ; 3 uses
  %i.p = zext i16 %i.o to i32                     ; 4 uses
  %i.q = load i16, ptr %i.n, align 1, !tbaa !48   ; 3 uses
  %i.r = zext i16 %i.q to i32                     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i32, ptr %i.s, align 1, !tbaa !48
  %i.v = load i8, ptr %i.t, align 1, !tbaa !48    ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = load ptr, ptr %i.g, align 16, !tbaa !49  ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bytestream2_init.exit
  %i.y = icmp eq i16 %i.o, 160
  %i.z = icmp eq i16 %i.q, 120
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq i16 %i.o, 320
  %i.ab = icmp eq i16 %i.q, 240
  %or.cond3 = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #6
  br label %.thread

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ac = tail call i32 @ff_set_dimensions(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %i.r) #6 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.thread, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.h
  store ptr %0, ptr %i.g, align 16, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.ae, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ah = add nuw nsw i32 %i.r, 7
  %i.ai = lshr i32 %i.ah, 3
  store i32 %i.ai, ptr %i.af, align 8, !tbaa !29
  %i.aj = lshr i32 %i.p, 3
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !29
  %i.ak = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.al = add nuw nsw <2 x i32> %i.ak, <i32 15, i32 poison>
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.an = lshr i32 %i.p, 4                        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !29
  %i.ap = lshr <2 x i32> %i.al, <i32 4, i32 poison>
  %i.aq = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> zeroinitializer
  store <2 x i32> %i.aq, ptr %i.am, align 4, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  store i32 %i.an, ptr %i.ar, align 4, !tbaa !29
  br label %.loopexit

bb.i:                                             ; preds = %bytestream2_init.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.at = load i32, ptr %i.as, align 8, !tbaa !51
  %.not109 = icmp eq i32 %i.at, %i.p
  br i1 %.not109, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.av = load i32, ptr %i.au, align 4, !tbaa !52
  %.not110 = icmp eq i32 %i.av, %i.r
  br i1 %.not110, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #6
  br label %.thread

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.not111 = icmp eq i32 %i.u, 0                  ; 5 uses
  br i1 %.not111, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !42
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.aw, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38
  %.not112 = icmp eq ptr %i.bb, null
  br i1 %.not112, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #6
  br label %.thread

bb.n:                                             ; preds = %bb.l, %.loopexit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 13 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 44 ; 11 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bf
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.bg) #6
  %i.bh = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = tail call i32 @ff_progress_frame_get_buffer(ptr noundef nonnull %0, ptr noundef nonnull %i.bj, i32 noundef 1) #6 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = select i1 %.not111, i32 1, i32 2
  %i.bn = load i32, ptr %i.bd, align 4, !tbaa !43 ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  store i32 %i.bm, ptr %i.br, align 8, !tbaa !53
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 1092
  store i32 %i.bn, ptr %i.bs, align 4, !tbaa !58
  %i.bt = add i32 %i.bn, 15
  %i.bu = and i32 %i.bt, 15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 1088 ; 2 uses
  store i32 %i.bu, ptr %i.bv, align 16, !tbaa !30
  tail call void @ff_thread_finish_setup(ptr noundef nonnull %0) #6
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.by = zext nneg i32 %i.e to i64
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, i64 noundef %i.by) #6
  %i.bz = load ptr, ptr %i.bw, align 16, !tbaa !59 ; 2 uses
  %.not113 = icmp eq ptr %i.bz, null
  br i1 %.not113, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !60
  %i.cc = lshr i32 %i.e, 2
  tail call void %i.cb(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.i, i32 noundef %i.cc) #6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 448 ; 4 uses
  %i.ce = load ptr, ptr %i.bw, align 16, !tbaa !59 ; 2 uses
  %or.cond.i = icmp sgt i32 %i.d, 268435475
  %i.cf = shl nuw nsw i32 %i.e, 3
  %i.cg = select i1 %or.cond.i, i32 -8, i32 %i.cf ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.cg, 2147483135   ; 2 uses
  %i.ch = icmp ne ptr %i.ce, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.ch      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.ce, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.cg, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.cd, align 16, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 460
  store i32 %.013.i.i, ptr %i.ci, align 4, !tbaa !62
  %i.cj = add nuw nsw i32 %.013.i.i, 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 464 ; 4 uses
  store i32 %i.cj, ptr %i.ck, align 16, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 456 ; 10 uses
  store i32 0, ptr %i.cl, align 8, !tbaa !64
  br i1 %or.cond3.i.i, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cm = zext i1 %.not111 to i32
  %i.cn = sub nsw i32 10000, %i.m
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 616 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 320 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  %i.cu = icmp ugt i8 %i.v, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 1000
  br label %bb.r

bb.r:                                             ; preds = %.thread.i, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i, %.thread.i ] ; 9 uses
  %.088123.i = phi i32 [ 0, %bb.q ], [ %.189.lcssa.i, %.thread.i ] ; 2 uses
  %i.cx = icmp ne i64 %indvars.iv.i, 0            ; 2 uses
  %i.cy = select i1 %i.cx, i32 1000, i32 2000
  %.0.i.i118 = tail call i32 @llvm.smax.i32(i32 %i.cn, i32 %i.cy)
  %i.cz = shl nuw nsw i32 %.0.i.i118, 2
  %i.da = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !38 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !29 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !65 ; 2 uses
  br i1 %.not111, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = load i32, ptr %i.cp, align 16, !tbaa !42
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !65
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dp = phi ptr [ %i.do, %bb.s ], [ %i.di, %bb.r ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !29
  %.not100116.i = icmp sgt i32 %i.dr, 0
  br i1 %.not100116.i, label %.preheader.lr.ph.i, label %.thread.i

.preheader.lr.ph.i:                               ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i ; 2 uses
  %i.dt = sext i32 %i.dg to i64                   ; 3 uses
  %i.du = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dv = or i32 %i.du, %i.cm
  %or.cond.not.i = icmp eq i32 %i.dv, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.084120.i = phi ptr [ %i.dp, %.preheader.lr.ph.i ], [ %i.kr, %._crit_edge.i ] ; 2 uses
  %.086119.i = phi ptr [ %i.di, %.preheader.lr.ph.i ], [ %i.ks, %._crit_edge.i ] ; 2 uses
  %.189118.i = phi i32 [ %.088123.i, %.preheader.lr.ph.i ], [ %i.kw, %._crit_edge.i ] ; 4 uses
  %.092117.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.kx, %._crit_edge.i ]
  %i.dw = load i32, ptr %i.ds, align 4, !tbaa !29 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ak
  %.185112.i = phi ptr [ %i.kj, %bb.ak ], [ %.084120.i, %.preheader.i ] ; 3 uses
  %.187110.i = phi ptr [ %i.kk, %bb.ak ], [ %.086119.i, %.preheader.i ] ; 4 uses
  %.091109.i = phi i32 [ %i.kl, %bb.ak ], [ 0, %.preheader.i ]
  br i1 %.not111, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.dy = load i32, ptr %i.cl, align 8, !tbaa !64 ; 4 uses
  %i.dz = load ptr, ptr %i.cd, align 16, !tbaa !61
  %i.ea = lshr i32 %i.dy, 3
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !48
  %i.ee = load i32, ptr %i.ck, align 16, !tbaa !63
  %i.ef = icmp slt i32 %i.dy, %i.ee
  %i.eg = zext i1 %i.ef to i32
  %spec.select.i.i = add i32 %i.dy, %i.eg
  %i.eh = zext i8 %i.ed to i32
  %i.ei = and i32 %i.dy, 7
  store i32 %spec.select.i.i, ptr %i.cl, align 8, !tbaa !64
  %i.ej = lshr exact i32 128, %i.ei
  %i.ek = and i32 %i.ej, %i.eh
  %i.el = icmp eq i32 %i.ek, 0
  %i.em = xor i1 %i.cx, %i.el
  br i1 %i.em, label %bb.v, label %bb.aj

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  br i1 %or.cond.not.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.en = load i32, ptr %i.cl, align 8, !tbaa !64 ; 4 uses
  %i.eo = load ptr, ptr %i.cd, align 16, !tbaa !61 ; 2 uses
  %i.ep = lshr i32 %i.en, 3
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !48
  %i.et = load i32, ptr %i.ck, align 16, !tbaa !63 ; 2 uses
  %i.eu = icmp slt i32 %i.en, %i.et
  %i.ev = zext i1 %i.eu to i32
  %spec.select.i101.i = add i32 %i.en, %i.ev      ; 4 uses
  %i.ew = zext i8 %i.es to i32
  %i.ex = and i32 %i.en, 7
  store i32 %spec.select.i101.i, ptr %i.cl, align 8, !tbaa !64
  %i.ey = lshr exact i32 128, %i.ex
  %i.ez = and i32 %i.ey, %i.ew
  %.not97.i = icmp eq i32 %i.ez, 0
  br i1 %.not97.i, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fa = load ptr, ptr %i.ct, align 8, !tbaa !66
  tail call void %i.fa(ptr noundef nonnull %i.cs) #6, !inline_history !67
  %i.fb = load i32, ptr %i.cl, align 8, !tbaa !64 ; 3 uses
  %i.fc = load i32, ptr %i.ck, align 16, !tbaa !63 ; 5 uses
  %i.fd = load ptr, ptr %i.cd, align 16, !tbaa !61 ; 5 uses
  %i.fe = lshr i32 %i.fb, 3
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 1, !tbaa !48
  %i.fi = tail call i32 @llvm.bswap.i32(i32 %i.fh)
  %i.fj = and i32 %i.fb, 7
  %i.fk = shl i32 %i.fi, %i.fj
  %i.fl = add i32 %i.fb, 8
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.fl) ; 2 uses
  store i32 %i.fm, ptr %i.cl, align 8, !tbaa !64
  %sh.diff.i.i = lshr i32 %i.fk, 21
  %tr.sh.diff.i.i = trunc nuw nsw i32 %sh.diff.i.i to i16
  %i.fn = and i16 %tr.sh.diff.i.i, 2040
  store i16 %i.fn, ptr %i.cs, align 16, !tbaa !68
  br i1 %i.cu, label %.lr.ph.i.i, label %.thread.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.ae
  %i.fo = phi i32 [ %i.ii, %bb.ae ], [ %i.fm, %bb.x ] ; 4 uses
  %.02938.i.i = phi i32 [ %i.iz, %bb.ae ], [ 1, %bb.x ]
  %i.fp = lshr i32 %i.fo, 3
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 1, !tbaa !48
  %i.ft = tail call i32 @llvm.bswap.i32(i32 %i.fs)
  %i.fu = and i32 %i.fo, 7
  %i.fv = shl i32 %i.ft, %i.fu
  %i.fw = lshr i32 %i.fv, 21
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr @block_vlc, i64 %i.fx ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 4, !tbaa !48
  %i.ga = sext i16 %i.fz to i32                   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !48 ; 2 uses
  %i.gd = sext i16 %i.gc to i32                   ; 3 uses
  %i.ge = icmp slt i16 %i.gc, 0
  br i1 %i.ge, label %bb.y, label %get_vlc2.exit.i.i

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.gf = add i32 %i.fo, 11
  %i.gg = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.gf) ; 4 uses
  %i.gh = lshr i32 %i.gg, 3
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 1, !tbaa !48
  %i.gl = tail call i32 @llvm.bswap.i32(i32 %i.gk)
  %i.gm = and i32 %i.gg, 7
  %i.gn = shl i32 %i.gl, %i.gm
  %i.go = add nsw i32 %i.gd, 32
  %i.gp = lshr i32 %i.gn, %i.go
  %i.gq = add i32 %i.gp, %i.ga
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr @block_vlc, i64 %i.gr ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 4, !tbaa !48
  %i.gu = sext i16 %i.gt to i32                   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !48 ; 2 uses
  %i.gx = sext i16 %i.gw to i32                   ; 2 uses
  %i.gy = icmp slt i16 %i.gw, 0
  br i1 %i.gy, label %bb.z, label %get_vlc2.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.gz = sub i32 %i.gg, %i.gd
  %i.ha = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.gz) ; 3 uses
  %i.hb = lshr i32 %i.ha, 3
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 1, !tbaa !48
  %i.hf = tail call i32 @llvm.bswap.i32(i32 %i.he)
  %i.hg = and i32 %i.ha, 7
  %i.hh = shl i32 %i.hf, %i.hg
  %i.hi = add nsw i32 %i.gx, 32
  %i.hj = lshr i32 %i.hh, %i.hi
  %i.hk = add i32 %i.hj, %i.gu
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr @block_vlc, i64 %i.hl ; 2 uses
  %i.hn = load i16, ptr %i.hm, align 4, !tbaa !48
  %i.ho = sext i16 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !48
  %i.hr = sext i16 %i.hq to i32
  br label %get_vlc2.exit.i.i

get_vlc2.exit.i.i:                                ; preds = %bb.z, %bb.y, %.lr.ph.i.i
  %.167.i.i.i = phi i32 [ %i.ga, %.lr.ph.i.i ], [ %i.ho, %bb.z ], [ %i.gu, %bb.y ] ; 3 uses
  %.165.i.i.i = phi i32 [ %i.fo, %.lr.ph.i.i ], [ %i.ha, %bb.z ], [ %i.gg, %bb.y ]
  %.1.i.i.i = phi i32 [ %i.gd, %.lr.ph.i.i ], [ %i.hr, %bb.z ], [ %i.gx, %bb.y ]
  %i.hs = add i32 %.1.i.i.i, %.165.i.i.i
  %i.ht = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.hs) ; 4 uses
  store i32 %i.ht, ptr %i.cl, align 8, !tbaa !64
  switch i32 %.167.i.i.i, label %bb.aa [
    i32 0, label %.thread.loopexit.i.i
    i32 -1, label %bb.al
  ]

bb.aa:                                            ; preds = %get_vlc2.exit.i.i
  %i.hu = and i32 %.167.i.i.i, 15
  %i.hv = add nuw nsw i32 %i.hu, %.02938.i.i      ; 4 uses
  %i.hw = icmp samesign ugt i32 %i.hv, 63
  br i1 %i.hw, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hx = lshr i32 %.167.i.i.i, 4                 ; 3 uses
  %i.hy = lshr i32 %i.ht, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 1, !tbaa !48
  %i.ic = tail call i32 @llvm.bswap.i32(i32 %i.ib)
  %i.id = and i32 %i.ht, 7
  %i.ie = shl i32 %i.ic, %i.id
  %i.if = sub nsw i32 32, %i.hx
  %i.ig = lshr i32 %i.ie, %i.if
  %i.ih = add i32 %i.ht, %i.hx
  %i.ii = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.ih) ; 2 uses
  store i32 %i.ii, ptr %i.cl, align 8, !tbaa !64
  %i.ij = zext nneg i32 %i.hx to i64
  %i.ik = getelementptr inbounds nuw [64 x i8], ptr @vlcdec_lookup, i64 %i.ij
  %i.il = sext i32 %i.ig to i64
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !48
  %i.io = sext i8 %i.in to i32                    ; 2 uses
  %i.ip = icmp samesign ult i32 %i.hv, 3
  br i1 %i.ip, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.iq = shl nsw i32 %i.io, 4
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ir = mul nsw i32 %i.cz, %i.io
  %i.is = sdiv i32 %i.ir, 1001
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.028.i.i = phi i32 [ %i.iq, %bb.ac ], [ %i.is, %bb.ad ]
  %i.it = trunc nsw i32 %.028.i.i to i16
  %i.iu = zext nneg i32 %i.hv to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !48
  %i.ix = zext i8 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.ix
  store i16 %i.it, ptr %i.iy, align 2, !tbaa !68
  %i.iz = add nuw nsw i32 %i.hv, 1                ; 2 uses
  %i.ja = icmp ult i32 %i.iz, %i.w
  br i1 %i.ja, label %.lr.ph.i.i, label %.thread.loopexit.i.i, !llvm.loop !70

.thread.loopexit.i.i:                             ; preds = %bb.ae, %get_vlc2.exit.i.i, %bb.x
  %i.jb = load ptr, ptr %i.cw, align 8, !tbaa !72
  tail call void %i.jb(ptr noundef %.187110.i, i64 noundef %i.dt, ptr noundef nonnull %i.cs) #6, !inline_history !73
  br label %bb.ak

bb.af:                                            ; preds = %bb.w
  %i.jc = lshr i32 %spec.select.i101.i, 3
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 1, !tbaa !48
  %i.jg = tail call i32 @llvm.bswap.i32(i32 %i.jf)
  %i.jh = and i32 %spec.select.i101.i, 7
  %i.ji = shl i32 %i.jg, %i.jh
  %i.jj = lshr i32 %i.ji, 28
  %i.jk = add i32 %spec.select.i101.i, 4
  %i.jl = tail call i32 @llvm.umin.i32(i32 %i.et, i32 %i.jk)
  store i32 %i.jl, ptr %i.cl, align 8, !tbaa !64
  %i.jm = load i32, ptr %i.bd, align 4, !tbaa !43 ; 2 uses
  %i.jn = add i32 %i.jj, %i.jm
  %i.jo = and i32 %i.jn, 15                       ; 2 uses
  %.not98.i = icmp eq i32 %i.jo, %i.jm
  br i1 %.not98.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.jp ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !38 ; 2 uses
  %.not99.i = icmp eq ptr %i.jr, null
  br i1 %.not99.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !65
  tail call void @ff_progress_frame_await(ptr noundef nonnull %i.jq, i32 noundef %.189118.i) #6
  %i.jt = load i32, ptr %i.cp, align 16, !tbaa !42
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.ju
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !38
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv.i
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !65
  %i.jz = ptrtoint ptr %.185112.i to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %i.js, i64 %i.kb
  %i.kd = load ptr, ptr %i.cr, align 8, !tbaa !74
  tail call void %i.kd(ptr noundef %.187110.i, ptr noundef %i.kc, i64 noundef %i.dt, i32 noundef 8) #6, !inline_history !73
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.ke = load ptr, ptr %i.g, align 16, !tbaa !49
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ke, i32 noundef 16, ptr noundef nonnull @.str.10) #6
  br label %bb.ak

bb.aj:                                            ; preds = %bb.u
  %i.kf = load i32, ptr %i.cp, align 16, !tbaa !42
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.kg
  tail call void @ff_progress_frame_await(ptr noundef nonnull %i.kh, i32 noundef %.189118.i) #6
  %i.ki = load ptr, ptr %i.cr, align 8, !tbaa !74
  tail call void %i.ki(ptr noundef %.187110.i, ptr noundef %.185112.i, i64 noundef %i.dt, i32 noundef 8) #6, !inline_history !73
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %.thread.loopexit.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.185112.i, i64 8 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.187110.i, i64 8 ; 2 uses
  %i.kl = add nuw nsw i32 %.091109.i, 1           ; 2 uses
  %i.km = load i32, ptr %i.ds, align 4, !tbaa !29 ; 2 uses
  %i.kn = icmp slt i32 %i.kl, %i.km
  br i1 %i.kn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !75

._crit_edge.i:                                    ; preds = %bb.ak, %.preheader.i
  %.187.lcssa.i = phi ptr [ %.086119.i, %.preheader.i ], [ %i.kk, %bb.ak ]
  %.185.lcssa.i = phi ptr [ %.084120.i, %.preheader.i ], [ %i.kj, %bb.ak ]
  %.lcssa.i = phi i32 [ %i.dw, %.preheader.i ], [ %i.km, %bb.ak ]
  %i.ko = sub nsw i32 %i.dg, %.lcssa.i
  %i.kp = shl i32 %i.ko, 3
  %i.kq = sext i32 %i.kp to i64                   ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %.185.lcssa.i, i64 %i.kq
  %i.ks = getelementptr inbounds i8, ptr %.187.lcssa.i, i64 %i.kq
  %i.kt = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.ku
  %i.kw = add nsw i32 %.189118.i, 1               ; 2 uses
  tail call void @ff_progress_frame_report(ptr noundef nonnull %i.kv, i32 noundef %.189118.i) #6
  %i.kx = add nuw nsw i32 %.092117.i, 1           ; 2 uses
  %i.ky = load i32, ptr %i.dq, align 4, !tbaa !29
  %.not100.i = icmp slt i32 %i.kx, %i.ky
  br i1 %.not100.i, label %.preheader.i, label %.thread.i, !llvm.loop !76

.thread.i:                                        ; preds = %._crit_edge.i, %bb.t
  %.189.lcssa.i = phi i32 [ %.088123.i, %bb.t ], [ %i.kw, %._crit_edge.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i, label %bb.an, label %bb.r, !llvm.loop !77

bb.al:                                            ; preds = %get_vlc2.exit.i.i, %bb.aa
  %i.kz = load ptr, ptr %i.g, align 16, !tbaa !49
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.kz, i32 noundef 16, ptr noundef nonnull @.str.9) #6
  %i.la = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.lb
  tail call void @ff_progress_frame_report(ptr noundef nonnull %i.lc, i32 noundef 2147483647) #6
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !78
  %i.lf = and i32 %i.le, 1
  %.not114 = icmp eq i32 %i.lf, 0
  br i1 %.not114, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.lg = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.lh
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.li) #6
  br label %.thread

bb.an:                                            ; preds = %.thread.i
  %i.lj = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.lk
  tail call void @ff_progress_frame_report(ptr noundef nonnull %i.ll, i32 noundef 2147483647) #6
  %i.lm = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.ln
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !38
  %i.lq = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.lp) #6 ; 2 uses
  %i.lr = icmp slt i32 %i.lq, 0
  br i1 %i.lr, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i32 1, ptr %2, align 4, !tbaa !29
  tail call fastcc void @flip_swap_frame(ptr noundef %1)
  %i.ls = load <2 x i32>, ptr %i.bv, align 16, !tbaa !29
  store <2 x i32> %i.ls, ptr %i.bd, align 4, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.an, %bb.al, %bb.am, %bb.p, %bb.o, %bb.n, %bb.ao, %bb.m, %bb.k, %bb.b
  %.1 = phi i32 [ -1094995529, %bb.b ], [ -1163346256, %bb.k ], [ %i.lq, %bb.an ], [ -12, %bb.o ], [ -1094995529, %bb.p ], [ -1094995529, %bb.al ], [ %i.d, %bb.ao ], [ %i.bk, %bb.n ], [ -1094995529, %bb.m ], [ -1094995529, %bb.am ], [ %i.ac, %bb.h ], [ -1094995529, %bb.g ]
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @mimic_decode_end(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.d, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret i32 0

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  tail call void @ff_progress_frame_unref(ptr noundef nonnull %i.f) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !80
}

declare void @ff_progress_frame_unref(ptr noundef) local_unnamed_addr #2

declare void @ff_progress_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_blockdsp_init(ptr noundef) local_unnamed_addr #2

declare void @ff_bswapdsp_init(ptr noundef) local_unnamed_addr #2

declare void @ff_hpeldsp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_idctdsp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ff_permute_scantable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal void @mimic_init_static() #1 {
bb.a:
  tail call void @ff_vlc_init_table_from_lengths(ptr noundef nonnull @block_vlc, i32 noundef 4368, i32 noundef 11, i32 noundef 107, ptr noundef nonnull @huffbits, i32 noundef 1, ptr noundef nonnull @huffsyms, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  ret void
}

declare void @ff_vlc_init_table_from_lengths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_progress_frame_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_thread_finish_setup(ptr noundef) local_unnamed_addr #2

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_progress_frame_report(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @flip_swap_frame(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.c = load ptr, ptr %0, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.e = load i32, ptr %i.d, align 4, !tbaa !81   ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.i = mul nsw i32 %i.f, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 %i.j
  store ptr %i.k, ptr %0, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.n = ashr i32 %i.e, 1
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29   ; 2 uses
  %i.r = mul nsw i32 %i.q, %i.o
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.m, i64 %i.s
  store ptr %i.t, ptr %i.a, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29   ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.o
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 %i.x
  store ptr %i.y, ptr %i.l, align 8, !tbaa !65
  %i.z = sub nsw i32 0, %i.h
  store i32 %i.z, ptr %i.g, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ab = sub nsw i32 0, %i.v
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = sub nsw i32 0, %i.q
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !29
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

declare void @ff_progress_frame_await(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!6, !6, i64 0}
!30 = !{!31, !6, i64 1088}
!31 = !{!"MimicContext", !32, i64 0, !7, i64 8, !7, i64 20, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !7, i64 56, !7, i64 320, !33, i64 448, !7, i64 472, !34, i64 536, !35, i64 568, !36, i64 584, !37, i64 968, !6, i64 1088, !6, i64 1092}
!32 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!33 = !{!"GetBitContext", !16, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!34 = !{!"BlockDSPContext", !12, i64 0, !12, i64 8, !7, i64 16}
!35 = !{!"BswapDSPContext", !12, i64 0, !12, i64 8}
!36 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!37 = !{!"IDCTDSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!38 = !{!39, !40, i64 0}
!39 = !{!"ProgressFrame", !40, i64 0, !41, i64 8}
!40 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!41 = !{!"p1 _ZTS16ProgressInternal", !12, i64 0}
!42 = !{!31, !6, i64 48}
!43 = !{!31, !6, i64 44}
!44 = !{!10, !6, i64 64}
!45 = !{!46, !16, i64 24}
!46 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!47 = !{!46, !6, i64 32}
!48 = !{!7, !7, i64 0}
!49 = !{!31, !32, i64 0}
!50 = !{!10, !6, i64 136}
!51 = !{!10, !6, i64 112}
!52 = !{!10, !6, i64 116}
!53 = !{!54, !6, i64 120}
!54 = !{!"AVFrame", !7, i64 0, !7, i64 64, !55, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !56, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !57, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!55 = !{!"p2 omnipotent char", !28, i64 0}
!56 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!57 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!58 = !{!31, !6, i64 1092}
!59 = !{!31, !12, i64 32}
!60 = !{!31, !12, i64 568}
!61 = !{!33, !16, i64 0}
!62 = !{!33, !6, i64 12}
!63 = !{!33, !6, i64 16}
!64 = !{!33, !6, i64 8}
!65 = !{!16, !16, i64 0}
!66 = !{!31, !12, i64 536}
!67 = distinct !{null, null}
!68 = !{!69, !69, i64 0}
!69 = !{!"short", !7, i64 0}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!31, !12, i64 1000}
!73 = distinct !{null}
!74 = !{!12, !12, i64 0}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !71}
!77 = distinct !{!77, !71}
!78 = !{!10, !6, i64 664}
!79 = !{!31, !6, i64 40}
!80 = distinct !{!80, !71}
!81 = !{!54, !6, i64 108}
end_hunk_0
