Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_device_handle_backend_data_callback:bb.a
  %i.ip = or i32 %i.ij, %i.im
  %i.iq = select i1 %i.in, i32 %i.io, i32 %i.ip
  %i.ir = atomicrmw xchg ptr %i.ev, i32 %i.iq seq_cst, align 4 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.thread58.i, %bb.y
  %.176.i = phi i32 [ %i.fu, %bb.y ], [ %.17781.i, %.thread58.i ]
  %.14674.i = phi ptr [ %i.gg, %bb.y ], [ %.1467582.i, %.thread58.i ]
  %i.is = load atomic i32, ptr %i.eh seq_cst, align 8
  %.not.i = icmp eq i32 %i.is, 2
  br i1 %.not.i, label %.lr.ph, label %ma_device__handle_duplex_callback_playback.exit

bb.ai:                                            ; preds = %bb.c, %bb.c
  br i1 %i.g, label %ma_device__handle_duplex_callback_playback.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @ma_device__send_frames_to_client(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %2)
  %.pre = load i32, ptr %i.i, align 8, !tbaa !223
  br label %bb.ak

bb.ak:                                            ; preds = %bb.c, %bb.aj
  %i.it = phi i32 [ %i.j, %bb.c ], [ %.pre, %bb.aj ]
  %i.iu = icmp ne i32 %i.it, 1                    ; 2 uses
  %brmerge = or i1 %i.f, %i.iu
  %.mux = select i1 %i.iu, i32 0, i32 -2
  br i1 %brmerge, label %ma_device__handle_duplex_callback_playback.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @ma_device__read_frames_from_client(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %1)
  br label %ma_device__handle_duplex_callback_playback.exit

ma_device__handle_duplex_callback_playback.exit:  ; preds = %bb.ah, %bb.x, %.thread.i, %ma_pcm_rb_pointer_distance.exit.i38, %bb.ag, %bb.w, %bb.ak, %bb.v, %bb.al, %bb.ai, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.ai ], [ -2, %bb.a ], [ -2, %bb.b ], [ 0, %bb.v ], [ 0, %bb.al ], [ %.mux, %bb.ak ], [ 0, %bb.w ], [ 0, %bb.ag ], [ 0, %ma_pcm_rb_pointer_distance.exit.i38 ], [ 0, %.thread.i ], [ 0, %bb.x ], [ 0, %bb.ah ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_device__send_frames_to_client(ptr noundef %0, i32 noundef range(i32 1, 0) %1, ptr noundef nonnull %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3096 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3396
  %i.f = load i8, ptr %i.e, align 4, !tbaa !326
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ma_device__handle_data_callback(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %2, i32 noundef %1)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2548
  %i.h = load i32, ptr %i.g, align 4, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %i.j = load i32, ptr %i.i, align 8, !tbaa !230
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !118
  %i.n = mul i32 %i.m, %i.j
  %i.o = udiv i32 4096, %i.n
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = zext i32 %1 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  store i64 %i.q, ptr %i.b, align 8, !tbaa !164
  store i64 %i.p, ptr %i.c, align 8, !tbaa !164
  %i.r = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %i.d, ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
  %.not2632 = icmp eq i32 %i.r, 0
  br i1 %.not2632, label %.lr.ph, label %select.unfold

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2816
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.02034 = phi ptr [ %2, %.lr.ph ], [ %i.aj, %bb.g ]
  %.02333 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.g ]
  %i.u = load i64, ptr %i.c, align 8, !tbaa !164  ; 2 uses
  %.not27 = icmp eq i64 %i.u, 0
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = trunc i64 %i.u to i32
  call fastcc void @ma_device__handle_data_callback(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a, i32 noundef %i.v)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !164
  %i.w = icmp eq i64 %.pre, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  %i.y = load i64, ptr %i.b, align 8, !tbaa !164  ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  %or.cond = select i1 %i.z, i1 %i.x, i1 false
  br i1 %or.cond, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add i64 %i.y, %.02333                   ; 2 uses
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !206
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !118
  %i.af = load i32, ptr %i.t, align 8, !tbaa !207
  %i.ag = mul i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul i64 %i.y, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.02034, i64 %i.ai ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.ak = sub i64 %i.q, %i.aa
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !164
  store i64 %i.p, ptr %i.c, align 8, !tbaa !164
  %i.al = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %i.d, ptr noundef %i.aj, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c)
  %.not26 = icmp eq i32 %i.al, 0
  br i1 %.not26, label %bb.d, label %select.unfold

select.unfold:                                    ; preds = %bb.g, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.h

bb.h:                                             ; preds = %select.unfold, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_device__read_frames_from_client(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [4096 x i8], align 16             ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1964
  %i.i = load i8, ptr %i.h, align 4, !tbaa !327
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @ma_device__handle_data_callback(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef null, i32 noundef %1)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !261
  %.not76 = icmp eq ptr %i.k, null
  %i.l = zext i32 %1 to i64                       ; 4 uses
  %.not101 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not76, label %.preheader, label %.preheader93

.preheader93:                                     ; preds = %bb.c
  br i1 %.not101, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader93
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 2 uses
  %.pre = load i64, ptr %i.m, align 8, !tbaa !365
  br label %bb.d

.preheader:                                       ; preds = %bb.c
  br i1 %.not101, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1963
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1784
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1380
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1384
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %i.ab = phi i64 [ %.pre, %.lr.ph ], [ %i.bl, %bb.h ] ; 2 uses
  %.06396 = phi ptr [ %2, %.lr.ph ], [ %.2, %bb.h ] ; 3 uses
  %.06595 = phi i64 [ 0, %.lr.ph ], [ %.267, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %.not78 = icmp eq i64 %i.ab, 0
  %.pre104 = load ptr, ptr %i.j, align 8, !tbaa !261 ; 2 uses
  br i1 %.not78, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = sub nuw nsw i64 %i.l, %.06595           ; 2 uses
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !164
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ab)
  store i64 %spec.store.select, ptr %i.a, align 8, !tbaa !164
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !366
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !231
  %i.af = load i32, ptr %i.p, align 8, !tbaa !232
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !118
  %i.aj = mul i32 %i.ai, %i.af
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul i64 %i.ad, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.pre104, i64 %i.al
  %i.an = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %i.g, ptr noundef %i.am, ptr noundef nonnull %i.a, ptr noundef %.06396, ptr noundef nonnull %i.b)
  %.not79 = icmp eq i32 %i.an, 0
  br i1 %.not79, label %bb.f, label %.thread84

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !164 ; 3 uses
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !366
  %i.aq = add i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.n, align 8, !tbaa !366
  %i.ar = load i64, ptr %i.m, align 8, !tbaa !365
  %i.as = sub i64 %i.ar, %i.ao                    ; 3 uses
  store i64 %i.as, ptr %i.m, align 8, !tbaa !365
  %i.at = load i64, ptr %i.b, align 8, !tbaa !164 ; 3 uses
  %i.au = icmp eq i64 %i.ao, 0
  %i.av = icmp eq i64 %i.at, 0
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond, label %.thread84, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load i32, ptr %i.q, align 4, !tbaa !214
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !118
  %i.ba = load i32, ptr %i.r, align 8, !tbaa !215
  %i.bb = mul i32 %i.ba, %i.az
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul i64 %i.at, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.06396, i64 %i.bd ; 2 uses
  %i.bf = add i64 %i.at, %.06595                  ; 2 uses
  %i.bg = icmp eq i64 %i.as, 0
  br i1 %i.bg, label %..thread_crit_edge, label %bb.h

..thread_crit_edge:                               ; preds = %bb.g
  %.pre103 = load ptr, ptr %i.j, align 8, !tbaa !261
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %i.bh = phi ptr [ %.pre103, %..thread_crit_edge ], [ %.pre104, %bb.d ]
  %.16483 = phi ptr [ %i.be, %..thread_crit_edge ], [ %.06396, %bb.d ]
  %.16682 = phi i64 [ %i.bf, %..thread_crit_edge ], [ %.06595, %bb.d ]
  %i.bi = load i64, ptr %i.s, align 8, !tbaa !262
  %i.bj = trunc i64 %i.bi to i32
  call fastcc void @ma_device__handle_data_callback(ptr noundef nonnull %0, ptr noundef %i.bh, ptr noundef null, i32 noundef %i.bj)
  store i64 0, ptr %i.n, align 8, !tbaa !366
  %i.bk = load i64, ptr %i.s, align 8, !tbaa !262 ; 2 uses
  store i64 %i.bk, ptr %i.m, align 8, !tbaa !365
  br label %bb.h

.thread84:                                        ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit

bb.h:                                             ; preds = %bb.g, %.thread
  %i.bl = phi i64 [ %i.bk, %.thread ], [ %i.as, %bb.g ]
  %.267 = phi i64 [ %.16682, %.thread ], [ %i.bf, %bb.g ] ; 2 uses
  %.2 = phi ptr [ %.16483, %.thread ], [ %i.be, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.bm = icmp ult i64 %.267, %i.l
  br i1 %i.bm, label %bb.d, label %.loopexit

bb.i:                                             ; preds = %.lr.ph99, %bb.o
  %.398 = phi ptr [ %2, %.lr.ph99 ], [ %i.cu, %bb.o ] ; 2 uses
  %.36897 = phi i64 [ 0, %.lr.ph99 ], [ %i.cv, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.bn = load i32, ptr %i.t, align 4, !tbaa !231
  %i.bo = load i32, ptr %i.u, align 8, !tbaa !232
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !118
  %i.bs = mul i32 %i.br, %i.bo
  %i.bt = udiv i32 4096, %i.bs
  %i.bu = zext nneg i32 %i.bt to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  %i.bv = sub nuw nsw i64 %i.l, %.36897           ; 4 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bu) ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !164
  %i.bw = load i8, ptr %i.v, align 1, !tbaa !246
  %.not.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.x, align 8, !tbaa !247 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %ma_data_converter_get_required_input_frame_count.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !260 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %ma_data_converter_get_required_input_frame_count.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %i.y, align 8, !tbaa !250
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !251
  %i.ce = call i32 %i.ca(ptr noundef %i.cc, ptr noundef %i.cd, i64 noundef %i.bv, ptr noundef nonnull %i.f) #55, !inline_history !367 ; 0 uses
  %.pre105 = load i64, ptr %i.f, align 8, !tbaa !164
  %i.cf = call i64 @llvm.umin.i64(i64 %spec.select, i64 %.pre105)
  br label %ma_data_converter_get_required_input_frame_count.exit

bb.m:                                             ; preds = %bb.i
  store i64 %i.bv, ptr %i.f, align 8, !tbaa !164
  br label %ma_data_converter_get_required_input_frame_count.exit

ma_data_converter_get_required_input_frame_count.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.1 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.cf, %bb.l ], [ %spec.select, %bb.m ] ; 2 uses
  %i.cg = trunc nuw nsw i64 %.1 to i32
  call fastcc void @ma_device__handle_data_callback(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef %i.cg)
  store i64 %.1, ptr %i.d, align 8, !tbaa !164
  store i64 %i.bv, ptr %i.e, align 8, !tbaa !164
  %i.ch = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %.398, ptr noundef nonnull %i.e)
  %.not77 = icmp eq i32 %i.ch, 0
  br i1 %.not77, label %bb.n, label %.thread89

bb.n:                                             ; preds = %ma_data_converter_get_required_input_frame_count.exit
  %i.ci = load i64, ptr %i.e, align 8, !tbaa !164 ; 3 uses
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !164
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = icmp eq i64 %i.ci, 0
  %or.cond3 = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond3, label %.thread89, label %bb.o

.thread89:                                        ; preds = %ma_data_converter_get_required_input_frame_count.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cm = load i32, ptr %i.z, align 4, !tbaa !214
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !118
  %i.cq = load i32, ptr %i.aa, align 8, !tbaa !215
  %i.cr = mul i32 %i.cq, %i.cp
  %i.cs = zext i32 %i.cr to i64
  %i.ct = mul i64 %i.ci, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.398, i64 %i.ct
  %i.cv = add i64 %i.ci, %.36897                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.cw = icmp ult i64 %i.cv, %i.l
  br i1 %i.cw, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.o, %.preheader93, %.preheader, %.thread89, %.thread84, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ma_calculate_buffer_size_in_frames_from_descriptor(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !191
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.012 = phi i32 [ %i.d, %bb.c ], [ %1, %bb.b ]  ; 2 uses
  %i.e = icmp eq i32 %.012, 0
  %spec.store.select = select i1 %i.e, i32 48000, i32 %.012 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load i32, ptr %i.f, align 8, !tbaa !209  ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.j = load i32, ptr %i.i, align 4, !tbaa !213  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i32 %2, 0
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = mul i32 %spec.store.select, 10
end_hunk_0
begin_hunk_1_@ma_data_converter_process_pcm_frames:bb.a
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !535 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %ma_resampler_process_pcm_frames.exit.thread.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hh = load ptr, ptr %i.fi, align 8, !tbaa !250
  %i.hi = load ptr, ptr %i.ez, align 8, !tbaa !251
  %i.hj = call i32 %i.hf(ptr noundef %i.hh, ptr noundef %i.hi, ptr noundef nonnull %i.p, ptr noundef nonnull %i.n, ptr noundef %.070.i.i, ptr noundef nonnull %i.o) #55, !inline_history !2162
  br label %ma_resampler_process_pcm_frames.exit.i.i

ma_resampler_process_pcm_frames.exit.thread.i.i:  ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %.loopexit.sink.split.i.i

ma_resampler_process_pcm_frames.exit.i.i:         ; preds = %bb.bx, %bb.bu
  %.180.i.i = phi i32 [ %i.hj, %bb.bx ], [ %i.hb, %bb.bu ] ; 2 uses
  %.not103.i.i = icmp eq i32 %.180.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br i1 %.not103.i.i, label %bb.ca, label %.loopexit.sink.split.i.i

bb.by:                                            ; preds = %bb.bl
  %i.hk = sub i64 %.078.i.i, %.074123.i.i
  store i64 %i.hk, ptr %i.n, align 8, !tbaa !164
  %i.hl = sub nuw i64 %i.ey, %.072124.i.i
  %i.hm = zext nneg i32 %i.fq to i64
  %spec.select104.i.i = call i64 @llvm.umin.i64(i64 %i.hl, i64 %i.hm)
  store i64 %spec.select104.i.i, ptr %i.o, align 8, !tbaa !164
  %i.hn = load ptr, ptr %i.fh, align 8, !tbaa !247 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %.loopexit.sink.split.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !535 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %.loopexit.sink.split.i.i, label %ma_resampler_process_pcm_frames.exit109.i.i

ma_resampler_process_pcm_frames.exit109.i.i:      ; preds = %bb.bz
  %i.hs = load ptr, ptr %i.fi, align 8, !tbaa !250
  %i.ht = load ptr, ptr %i.ez, align 8, !tbaa !251
  %i.hu = call i32 %i.hq(ptr noundef %i.hs, ptr noundef %i.ht, ptr noundef %.071.i.i, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o) #55, !inline_history !2162 ; 2 uses
  %.not98.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not98.i.i, label %bb.ca, label %.loopexit.sink.split.i.i

bb.ca:                                            ; preds = %ma_resampler_process_pcm_frames.exit109.i.i, %ma_resampler_process_pcm_frames.exit.i.i
  %i.hv = load i8, ptr %i.ff, align 1, !tbaa !582
  %i.hw = icmp ne i8 %i.hv, 0
  %i.hx = icmp ne ptr %.070.i.i, null
  %or.cond.i12.i = select i1 %i.hw, i1 %i.hx, i1 false
  br i1 %or.cond.i12.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.hy = load i32, ptr %i.fd, align 4, !tbaa !574
  %i.hz = load i32, ptr %i.fa, align 8, !tbaa !2170
  %i.ia = load i64, ptr %i.o, align 8, !tbaa !164
  %i.ib = load i32, ptr %i.fb, align 4, !tbaa !2171
  %i.ic = load i32, ptr %i.fg, align 8, !tbaa !577
  %i.id = zext i32 %i.ib to i64
  %i.ie = mul i64 %i.ia, %i.id
  call void @ma_pcm_convert(ptr noundef nonnull %.070.i.i, i32 noundef %i.hy, ptr noundef nonnull %i.m, i32 noundef %i.hz, i64 noundef %i.ie, i32 noundef %i.ic)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.if = load i64, ptr %i.n, align 8, !tbaa !164
  %i.ig = add i64 %i.if, %.074123.i.i             ; 3 uses
  %i.ih = load i64, ptr %i.o, align 8, !tbaa !164 ; 2 uses
  %i.ii = add i64 %i.ih, %.072124.i.i             ; 4 uses
  %i.ij = icmp eq i64 %i.ih, 0
  br i1 %i.ij, label %.loopexit.sink.split.i.i, label %bb.bg

.loopexit.sink.split.i.i:                         ; preds = %bb.cc, %ma_resampler_process_pcm_frames.exit109.i.i, %bb.bz, %bb.by, %ma_resampler_process_pcm_frames.exit.i.i, %ma_resampler_process_pcm_frames.exit.thread.i.i
  %.4.ph.i.i = phi i32 [ -29, %ma_resampler_process_pcm_frames.exit.thread.i.i ], [ -29, %bb.bz ], [ 0, %bb.cc ], [ -29, %bb.by ], [ %i.hu, %ma_resampler_process_pcm_frames.exit109.i.i ], [ %.180.i.i, %ma_resampler_process_pcm_frames.exit.i.i ]
  %.276.ph.i.i = phi i64 [ %.074123.i.i, %ma_resampler_process_pcm_frames.exit.thread.i.i ], [ %.074123.i.i, %bb.bz ], [ %i.ig, %bb.cc ], [ %.074123.i.i, %bb.by ], [ %.074123.i.i, %ma_resampler_process_pcm_frames.exit109.i.i ], [ %.074123.i.i, %ma_resampler_process_pcm_frames.exit.i.i ]
  %.2.ph.i.i = phi i64 [ %.072124.i.i, %ma_resampler_process_pcm_frames.exit.thread.i.i ], [ %.072124.i.i, %bb.bz ], [ %i.ii, %bb.cc ], [ %.072124.i.i, %bb.by ], [ %.072124.i.i, %ma_resampler_process_pcm_frames.exit109.i.i ], [ %.072124.i.i, %ma_resampler_process_pcm_frames.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bg, %.loopexit.sink.split.i.i, %bb.bf, %bb.be
  %.4.i.i = phi i32 [ %.4.ph.i.i, %.loopexit.sink.split.i.i ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bg ] ; 2 uses
  %.276.i.i = phi i64 [ %.276.ph.i.i, %.loopexit.sink.split.i.i ], [ 0, %bb.bf ], [ 0, %bb.be ], [ %i.ig, %bb.bg ]
  %.2.i.i = phi i64 [ %.2.ph.i.i, %.loopexit.sink.split.i.i ], [ 0, %bb.bf ], [ 0, %bb.be ], [ %i.ii, %bb.bg ]
  br i1 %.not.i.i41, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.loopexit.i.i
  store i64 %.276.i.i, ptr %2, align 8, !tbaa !164
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.loopexit.i.i
  br i1 %.not94.i.i, label %ma_data_converter_process_pcm_frames__passthrough.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i64 %.2.i.i, ptr %4, align 8, !tbaa !164
  br label %ma_data_converter_process_pcm_frames__passthrough.exit

bb.cg:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #55
  %.not.i43 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not.i43, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ik = load i64, ptr %2, align 8, !tbaa !164
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.082.i = phi i64 [ %i.ik, %bb.ch ], [ 0, %bb.cg ]
  %.not98.i = icmp eq ptr %4, null                ; 2 uses
  br i1 %.not98.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.il = load i64, ptr %4, align 8, !tbaa !164
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.081.i = phi i64 [ %i.il, %bb.cj ], [ 0, %bb.ci ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !2170
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !2171
  %i.ir = zext i32 %i.io to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !118
  %i.iu = mul i32 %i.it, %i.iq
  %i.iv = udiv i32 4096, %i.iu
  %i.iw = zext nneg i32 %i.iv to i64              ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !2167
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !2168
  %i.jb = zext i32 %i.iy to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !118
  %i.je = mul i32 %i.jd, %i.ja
  %i.jf = udiv i32 4096, %i.je
  %i.jg = zext nneg i32 %i.jf to i64
  %.not134.i = icmp eq i64 %.081.i, 0
  br i1 %.not134.i, label %.loopexit.i49, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %bb.ck
  %.not99.i = icmp eq ptr %1, null                ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not100.i = icmp eq ptr %3, null               ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 297 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.db, %.lr.ph.i44
  %.077132.i = phi i64 [ 0, %.lr.ph.i44 ], [ %i.ml, %bb.db ] ; 3 uses
  %.078131.i = phi i64 [ 0, %.lr.ph.i44 ], [ %i.mj, %bb.db ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #55
  br i1 %.not99.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jr = load i32, ptr %0, align 8, !tbaa !573
  %i.js = load i32, ptr %i.jh, align 8, !tbaa !575
  %i.jt = zext i32 %i.jr to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !118
  %i.jw = mul i32 %i.jv, %i.js
  %i.jx = zext i32 %i.jw to i64
  %i.jy = mul i64 %.078131.i, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 %i.jy
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.076.i = phi ptr [ %i.jz, %bb.cm ], [ null, %bb.cl ] ; 2 uses
  br i1 %.not100.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ka = load i32, ptr %i.ji, align 4, !tbaa !574
  %i.kb = load i32, ptr %i.jj, align 4, !tbaa !576
  %i.kc = zext i32 %i.ka to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !118
  %i.kf = mul i32 %i.ke, %i.kb
  %i.kg = zext i32 %i.kf to i64
  %i.kh = mul i64 %.077132.i, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 %i.kh
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.075.i = phi ptr [ %i.ki, %bb.co ], [ null, %bb.cn ] ; 2 uses
  %i.kj = sub i64 %.082.i, %.078131.i             ; 2 uses
  %i.kk = load i8, ptr %i.jk, align 8, !tbaa !581
  %.not101.not.i = icmp eq i8 %i.kk, 0
  %i.kl = call i64 @llvm.umin.i64(i64 %i.kj, i64 %i.iw)
  %spec.store.select.i = select i1 %.not101.not.i, i64 %i.kj, i64 %i.kl
  store i64 %spec.store.select.i, ptr %i.j, align 8, !tbaa !164
  %i.km = sub nuw i64 %.081.i, %.077132.i
  %spec.select.i45 = call i64 @llvm.umin.i64(i64 %i.km, i64 %i.iw) ; 2 uses
  %i.kn = load i8, ptr %i.jl, align 1, !tbaa !582
  %.not102.not.i = icmp eq i8 %i.kn, 0
  %i.ko = call i64 @llvm.umin.i64(i64 %spec.select.i45, i64 %i.jg)
  %spec.store.select111.i = select i1 %.not102.not.i, i64 %spec.select.i45, i64 %i.ko ; 4 uses
  store i64 %spec.store.select111.i, ptr %i.k, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #55
  store i64 0, ptr %i.l, align 8, !tbaa !164
  %i.kp = load ptr, ptr %i.jm, align 8, !tbaa !247 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %ma_resampler_get_required_input_frame_count.exit.thread.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !260 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %ma_resampler_get_required_input_frame_count.exit.thread.i, label %ma_resampler_get_required_input_frame_count.exit.i

ma_resampler_get_required_input_frame_count.exit.i: ; preds = %bb.cq
  %i.ku = load ptr, ptr %i.jn, align 8, !tbaa !250
  %i.kv = load ptr, ptr %i.im, align 8, !tbaa !251
  %i.kw = call i32 %i.ks(ptr noundef %i.ku, ptr noundef %i.kv, i64 noundef %spec.store.select111.i, ptr noundef nonnull %i.l) #55, !inline_history !2163
  %.not103.i = icmp eq i32 %i.kw, 0
  br i1 %.not103.i, label %ma_resampler_get_required_input_frame_count.exit._crit_edge.i, label %ma_resampler_get_required_input_frame_count.exit.ma_resampler_get_required_input_frame_count.exit.thread_crit_edge.i

ma_resampler_get_required_input_frame_count.exit._crit_edge.i: ; preds = %ma_resampler_get_required_input_frame_count.exit.i
  %.pre138.i = load i64, ptr %i.l, align 8, !tbaa !164
  br label %bb.cr

ma_resampler_get_required_input_frame_count.exit.ma_resampler_get_required_input_frame_count.exit.thread_crit_edge.i: ; preds = %ma_resampler_get_required_input_frame_count.exit.i
  %.pre.i46 = load i64, ptr %i.k, align 8, !tbaa !164
  br label %ma_resampler_get_required_input_frame_count.exit.thread.i

ma_resampler_get_required_input_frame_count.exit.thread.i: ; preds = %ma_resampler_get_required_input_frame_count.exit.ma_resampler_get_required_input_frame_count.exit.thread_crit_edge.i, %bb.cq, %bb.cp
  %i.kx = phi i64 [ %.pre.i46, %ma_resampler_get_required_input_frame_count.exit.ma_resampler_get_required_input_frame_count.exit.thread_crit_edge.i ], [ %spec.store.select111.i, %bb.cq ], [ %spec.store.select111.i, %bb.cp ]
  %i.ky = load i32, ptr %i.jo, align 8, !tbaa !2172
  %i.kz = zext i32 %i.ky to i64
  %i.la = mul i64 %i.kx, %i.kz
  %i.lb = load i32, ptr %i.jp, align 4, !tbaa !2173
  %i.lc = zext i32 %i.lb to i64
  %i.ld = udiv i64 %i.la, %i.lc
  br label %bb.cr

bb.cr:                                            ; preds = %ma_resampler_get_required_input_frame_count.exit.thread.i, %ma_resampler_get_required_input_frame_count.exit._crit_edge.i
  %i.le = phi i64 [ %.pre138.i, %ma_resampler_get_required_input_frame_count.exit._crit_edge.i ], [ %i.ld, %ma_resampler_get_required_input_frame_count.exit.thread.i ] ; 3 uses
  %i.lf = load i64, ptr %i.j, align 8, !tbaa !164 ; 2 uses
  %i.lg = icmp ugt i64 %i.lf, %i.le
  br i1 %i.lg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i64 %i.le, ptr %i.j, align 8, !tbaa !164
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.lh = phi i64 [ %i.le, %bb.cs ], [ %i.lf, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  %i.li = load i8, ptr %i.jk, align 8, !tbaa !581
  %.not104.i = icmp eq i8 %i.li, 0                ; 2 uses
  %brmerge.i = or i1 %.not99.i, %.not104.i
  %.076.mux.i = select i1 %.not104.i, ptr %.076.i, ptr null
  br i1 %brmerge.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lj = load i32, ptr %i.in, align 8, !tbaa !2170
  %i.lk = load i32, ptr %0, align 8, !tbaa !573
  %i.ll = load i32, ptr %i.jh, align 8, !tbaa !575
  %i.lm = load i32, ptr %i.jq, align 8, !tbaa !577
  %i.ln = zext i32 %i.ll to i64
  %i.lo = mul i64 %i.lh, %i.ln
  call void @ma_pcm_convert(ptr noundef nonnull %i.g, i32 noundef %i.lj, ptr noundef %.076.i, i32 noundef %i.lk, i64 noundef %i.lo, i32 noundef %i.lm)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.074.i = phi ptr [ %i.g, %bb.cu ], [ %.076.mux.i, %bb.ct ]
  %i.lp = load ptr, ptr %i.jm, align 8, !tbaa !247 ; 2 uses
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %.thread.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !535 ; 2 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %.thread.i, label %ma_resampler_process_pcm_frames.exit.i

ma_resampler_process_pcm_frames.exit.i:           ; preds = %bb.cw
  %i.lu = load ptr, ptr %i.jn, align 8, !tbaa !250
  %i.lv = load ptr, ptr %i.im, align 8, !tbaa !251
  %i.lw = call i32 %i.ls(ptr noundef %i.lu, ptr noundef %i.lv, ptr noundef %.074.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k) #55, !inline_history !2164 ; 2 uses
  %.not105.i = icmp eq i32 %i.lw, 0
  br i1 %.not105.i, label %bb.cx, label %.thread.i

bb.cx:                                            ; preds = %ma_resampler_process_pcm_frames.exit.i
  br i1 %.not100.i, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lx = load i8, ptr %i.jl, align 1, !tbaa !582
  %.not106.i = icmp eq i8 %i.lx, 0
  %.075..i = select i1 %.not106.i, ptr %.075.i, ptr %i.i ; 2 uses
  %i.ly = load i64, ptr %i.k, align 8, !tbaa !164
  %i.lz = call i32 @ma_channel_converter_process_pcm_frames(ptr noundef nonnull readonly %i.ix, ptr noundef %.075..i, ptr noundef nonnull %i.h, i64 noundef %i.ly) ; 2 uses
  %.not107.i47 = icmp eq i32 %i.lz, 0
  br i1 %.not107.i47, label %bb.cz, label %.thread.i

bb.cz:                                            ; preds = %bb.cy
  %i.ma = load i8, ptr %i.jl, align 1, !tbaa !582
  %.not108.i48 = icmp eq i8 %i.ma, 0
  br i1 %.not108.i48, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mb = load i32, ptr %i.ji, align 4, !tbaa !574
  %i.mc = load i32, ptr %i.ix, align 8, !tbaa !2167
  %i.md = load i64, ptr %i.k, align 8, !tbaa !164
  %i.me = load i32, ptr %i.iz, align 8, !tbaa !2168
  %i.mf = load i32, ptr %i.jq, align 8, !tbaa !577
  %i.mg = zext i32 %i.me to i64
  %i.mh = mul i64 %i.md, %i.mg
  call void @ma_pcm_convert(ptr noundef %.075.i, i32 noundef %i.mb, ptr noundef %.075..i, i32 noundef %i.mc, i64 noundef %i.mh, i32 noundef %i.mf)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cx
  %i.mi = load i64, ptr %i.j, align 8, !tbaa !164
  %i.mj = add i64 %i.mi, %.078131.i               ; 2 uses
  %i.mk = load i64, ptr %i.k, align 8, !tbaa !164 ; 2 uses
  %i.ml = add i64 %i.mk, %.077132.i               ; 3 uses
  %i.mm = icmp ne i64 %i.mk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #55
  %i.mn = icmp ult i64 %i.ml, %.081.i
  %or.cond = select i1 %i.mm, i1 %i.mn, i1 false
  br i1 %or.cond, label %bb.cl, label %.loopexit.i49

.thread.i:                                        ; preds = %bb.cy, %ma_resampler_process_pcm_frames.exit.i, %bb.cw, %bb.cv
  %.184.ph.i = phi i32 [ %i.lz, %bb.cy ], [ %i.lw, %ma_resampler_process_pcm_frames.exit.i ], [ -29, %bb.cv ], [ -29, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #55
  br label %ma_data_converter_process_pcm_frames__resample_first.exit

.loopexit.i49:                                    ; preds = %bb.db, %bb.ck
  %.280.i = phi i64 [ 0, %bb.ck ], [ %i.mj, %bb.db ]
  %.2.i = phi i64 [ 0, %bb.ck ], [ %i.ml, %bb.db ]
  br i1 %.not.i43, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.loopexit.i49
  store i64 %.280.i, ptr %2, align 8, !tbaa !164
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.loopexit.i49
  br i1 %.not98.i, label %ma_data_converter_process_pcm_frames__resample_first.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store i64 %.2.i, ptr %4, align 8, !tbaa !164
  br label %ma_data_converter_process_pcm_frames__resample_first.exit

ma_data_converter_process_pcm_frames__resample_first.exit: ; preds = %.thread.i, %bb.dd, %bb.de
  %.285.i = phi i32 [ %.184.ph.i, %.thread.i ], [ 0, %bb.de ], [ 0, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  br label %ma_data_converter_process_pcm_frames__passthrough.exit

bb.df:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %.not.i50 = icmp eq ptr %2, null                ; 2 uses
  br i1 %.not.i50, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mo = load i64, ptr %2, align 8, !tbaa !164
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.085.i51 = phi i64 [ %i.mo, %bb.dg ], [ 0, %bb.df ]
  %.not102.i = icmp eq ptr %4, null               ; 2 uses
  br i1 %.not102.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mp = load i64, ptr %4, align 8, !tbaa !164
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.084.i52 = phi i64 [ %i.mp, %bb.di ], [ 0, %bb.dh ] ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !2167
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !2169
  %i.mu = zext i32 %i.mr to i64
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !118 ; 2 uses
  %i.mx = mul i32 %i.mw, %i.mt
  %i.my = udiv i32 4096, %i.mx
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !2168
  %i.nc = mul i32 %i.nb, %i.mw
  %i.nd = udiv i32 4096, %i.nc
  %i.ne = zext nneg i32 %i.nd to i64              ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !2170
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !2171
  %i.nk = zext i32 %i.nh to i64
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !118
  %i.nn = mul i32 %i.nm, %i.nj
  %i.no = udiv i32 4096, %i.nn
  %i.np = zext nneg i32 %i.no to i64
  %.not140.i = icmp eq i64 %.084.i52, 0
  br i1 %.not140.i, label %.loopexit.i71, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.dj
  %.not103.i54 = icmp eq ptr %1, null
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not104.i55 = icmp eq ptr %3, null
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 297 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.ea, %.lr.ph.i53
  %.080138.i = phi i64 [ 0, %.lr.ph.i53 ], [ %i.qw, %bb.ea ] ; 3 uses
  %.081137.i = phi i64 [ 0, %.lr.ph.i53 ], [ %i.qu, %bb.ea ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  br i1 %.not103.i54, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.oa = load i32, ptr %0, align 8, !tbaa !573
  %i.ob = load i32, ptr %i.nq, align 8, !tbaa !575
  %i.oc = zext i32 %i.oa to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !118
  %i.of = mul i32 %i.oe, %i.ob
  %i.og = zext i32 %i.of to i64
  %i.oh = mul i64 %.081137.i, %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 %i.oh
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.079.i = phi ptr [ %i.oi, %bb.dl ], [ null, %bb.dk ] ; 3 uses
  br i1 %.not104.i55, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.oj = load i32, ptr %i.nr, align 4, !tbaa !574
  %i.ok = load i32, ptr %i.ns, align 4, !tbaa !576
  %i.ol = zext i32 %i.oj to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !118
  %i.oo = mul i32 %i.on, %i.ok
  %i.op = zext i32 %i.oo to i64
  %i.oq = mul i64 %.080138.i, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %3, i64 %i.oq
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.078.i = phi ptr [ %i.or, %bb.dn ], [ null, %bb.dm ] ; 3 uses
  %i.os = sub nuw i64 %.084.i52, %.080138.i
  %spec.select.i56 = call i64 @llvm.umin.i64(i64 %i.os, i64 %i.ne) ; 2 uses
  %i.ot = load i8, ptr %i.nt, align 1, !tbaa !582
  %.not105.not.i = icmp eq i8 %i.ot, 0
  %i.ou = call i64 @llvm.umin.i64(i64 %spec.select.i56, i64 %i.np)
  %spec.store.select.i57 = select i1 %.not105.not.i, i64 %spec.select.i56, i64 %i.ou ; 4 uses
  store i64 %spec.store.select.i57, ptr %i.e, align 8, !tbaa !164
  %i.ov = sub i64 %.085.i51, %.081137.i           ; 2 uses
  %i.ow = load i8, ptr %i.nu, align 8, !tbaa !581
  %.not106.not.i = icmp eq i8 %i.ow, 0
  %i.ox = call i64 @llvm.umin.i64(i64 %i.ov, i64 %i.mz)
  %spec.store.select116.i = select i1 %.not106.not.i, i64 %i.ov, i64 %i.ox
  %spec.store.select117.i = call i64 @llvm.umin.i64(i64 %spec.store.select116.i, i64 %i.ne)
  store i64 %spec.store.select117.i, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  store i64 0, ptr %i.f, align 8, !tbaa !164
  %i.oy = load ptr, ptr %i.nv, align 8, !tbaa !247 ; 2 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %ma_resampler_get_required_input_frame_count.exit.thread.i62, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !260 ; 2 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %ma_resampler_get_required_input_frame_count.exit.thread.i62, label %ma_resampler_get_required_input_frame_count.exit.i58

ma_resampler_get_required_input_frame_count.exit.i58: ; preds = %bb.dp
  %i.pd = load ptr, ptr %i.nw, align 8, !tbaa !250
  %i.pe = load ptr, ptr %i.nf, align 8, !tbaa !251
  %i.pf = call i32 %i.pb(ptr noundef %i.pd, ptr noundef %i.pe, i64 noundef %spec.store.select.i57, ptr noundef nonnull %i.f) #55, !inline_history !2165
  %.not107.i59 = icmp eq i32 %i.pf, 0
  br i1 %.not107.i59, label %ma_resampler_get_required_input_frame_count.exit._crit_edge.i73, label %ma_resampler_get_required_input_frame_count.exit.ma_resampler_get_required_input_frame_count.exit.thread_crit_edge.i60

ma_resampler_get_required_input_frame_count.exit._crit_edge.i73: ; preds = %ma_resampler_get_required_input_frame_count.exit.i58
  %.pre144.i = load i64, ptr %i.f, align 8, !tbaa !164
  br label %bb.dq

ma_resampler_get_required_input_frame_count.exit.ma_resampler_get_required_input_frame_count.exit.thread_crit_edge.i60: ; preds = %ma_resampler_get_required_input_frame_count.exit.i58
  %.pre.i61 = load i64, ptr %i.e, align 8, !tbaa !164
  br label %ma_resampler_get_required_input_frame_count.exit.thread.i62

ma_resampler_get_required_input_frame_count.exit.thread.i62: ; preds = %ma_resampler_get_required_input_frame_count.exit.ma_resampler_get_required_input_frame_count.exit.thread_crit_edge.i60, %bb.dp, %bb.do
  %i.pg = phi i64 [ %.pre.i61, %ma_resampler_get_required_input_frame_count.exit.ma_resampler_get_required_input_frame_count.exit.thread_crit_edge.i60 ], [ %spec.store.select.i57, %bb.dp ], [ %spec.store.select.i57, %bb.do ]
  %i.ph = load i32, ptr %i.nx, align 8, !tbaa !2172
  %i.pi = zext i32 %i.ph to i64
  %i.pj = mul i64 %i.pg, %i.pi
  %i.pk = load i32, ptr %i.ny, align 4, !tbaa !2173
  %i.pl = zext i32 %i.pk to i64
  %i.pm = udiv i64 %i.pj, %i.pl
  br label %bb.dq

bb.dq:                                            ; preds = %ma_resampler_get_required_input_frame_count.exit.thread.i62, %ma_resampler_get_required_input_frame_count.exit._crit_edge.i73
  %i.pn = phi i64 [ %.pre144.i, %ma_resampler_get_required_input_frame_count.exit._crit_edge.i73 ], [ %i.pm, %ma_resampler_get_required_input_frame_count.exit.thread.i62 ] ; 3 uses
  %i.po = load i64, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %i.pp = icmp ugt i64 %i.po, %i.pn
  br i1 %i.pp, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i64 %i.pn, ptr %i.d, align 8, !tbaa !164
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.pq = phi i64 [ %i.pn, %bb.dr ], [ %i.po, %bb.dq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  %i.pr = load i8, ptr %i.nu, align 8, !tbaa !581
  %.not108.i63 = icmp eq i8 %i.pr, 0
  br i1 %.not108.i63, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %.not109.i64 = icmp eq ptr %.079.i, null
  br i1 %.not109.i64, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ps = load i32, ptr %i.mq, align 8, !tbaa !2167
  %i.pt = load i32, ptr %0, align 8, !tbaa !573
  %i.pu = load i32, ptr %i.nq, align 8, !tbaa !575
  %i.pv = load i32, ptr %i.nz, align 8, !tbaa !577
  %i.pw = zext i32 %i.pu to i64
  %i.px = mul i64 %i.pq, %i.pw
  call void @ma_pcm_convert(ptr noundef nonnull %i.a, i32 noundef %i.ps, ptr noundef nonnull %.079.i, i32 noundef %i.pt, i64 noundef %i.px, i32 noundef %i.pv)
  %.pre145.i = load i64, ptr %i.d, align 8, !tbaa !164
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds
  %i.py = phi i64 [ %.pre145.i, %bb.du ], [ %i.pq, %bb.dt ], [ %i.pq, %bb.ds ]
  %.077.i = phi ptr [ %i.a, %bb.du ], [ null, %bb.dt ], [ %.079.i, %bb.ds ]
  %i.pz = call i32 @ma_channel_converter_process_pcm_frames(ptr noundef nonnull readonly %i.mq, ptr noundef nonnull %i.b, ptr noundef %.077.i, i64 noundef %i.py) ; 2 uses
  %.not110.i65 = icmp eq i32 %i.pz, 0
  br i1 %.not110.i65, label %bb.dw, label %.thread.i66

bb.dw:                                            ; preds = %bb.dv
  %i.qa = load i8, ptr %i.nt, align 1, !tbaa !582
  %.not111.i67 = icmp eq i8 %i.qa, 0
  %.078..i = select i1 %.not111.i67, ptr %.078.i, ptr %i.c ; 2 uses
  %i.qb = load ptr, ptr %i.nv, align 8, !tbaa !247 ; 2 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %.thread.i66, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !535 ; 2 uses
  %i.qf = icmp eq ptr %i.qe, null
  br i1 %i.qf, label %.thread.i66, label %ma_resampler_process_pcm_frames.exit.i68

ma_resampler_process_pcm_frames.exit.i68:         ; preds = %bb.dx
  %i.qg = load ptr, ptr %i.nw, align 8, !tbaa !250
  %i.qh = load ptr, ptr %i.nf, align 8, !tbaa !251
  %i.qi = call i32 %i.qe(ptr noundef %i.qg, ptr noundef %i.qh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef %.078..i, ptr noundef nonnull %i.e) #55, !inline_history !2166 ; 2 uses
  %.not112.i69 = icmp eq i32 %i.qi, 0
  br i1 %.not112.i69, label %bb.dy, label %.thread.i66

bb.dy:                                            ; preds = %ma_resampler_process_pcm_frames.exit.i68
  %i.qj = load i8, ptr %i.nt, align 1, !tbaa !582
  %i.qk = icmp ne i8 %i.qj, 0
  %i.ql = icmp ne ptr %.078.i, null
  %or.cond.i70 = select i1 %i.qk, i1 %i.ql, i1 false
  br i1 %or.cond.i70, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qm = load i32, ptr %i.nr, align 4, !tbaa !574
  %i.qn = load i32, ptr %i.ng, align 8, !tbaa !2170
  %i.qo = load i64, ptr %i.e, align 8, !tbaa !164
  %i.qp = load i32, ptr %i.ns, align 4, !tbaa !576
  %i.qq = load i32, ptr %i.nz, align 8, !tbaa !577
  %i.qr = zext i32 %i.qp to i64
  %i.qs = mul i64 %i.qo, %i.qr
  call void @ma_pcm_convert(ptr noundef nonnull %.078.i, i32 noundef %i.qm, ptr noundef nonnull %.078..i, i32 noundef %i.qn, i64 noundef %i.qs, i32 noundef %i.qq)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.qt = load i64, ptr %i.d, align 8, !tbaa !164
  %i.qu = add i64 %i.qt, %.081137.i               ; 2 uses
  %i.qv = load i64, ptr %i.e, align 8, !tbaa !164 ; 2 uses
  %i.qw = add i64 %i.qv, %.080138.i               ; 3 uses
  %i.qx = icmp ne i64 %i.qv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  %i.qy = icmp ult i64 %i.qw, %.084.i52
  %or.cond194 = select i1 %i.qx, i1 %i.qy, i1 false
  br i1 %or.cond194, label %bb.dk, label %.loopexit.i71

.thread.i66:                                      ; preds = %ma_resampler_process_pcm_frames.exit.i68, %bb.dx, %bb.dw, %bb.dv
  %.187.ph.i = phi i32 [ %i.qi, %ma_resampler_process_pcm_frames.exit.i68 ], [ %i.pz, %bb.dv ], [ -29, %bb.dw ], [ -29, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %ma_data_converter_process_pcm_frames__channels_first.exit

.loopexit.i71:                                    ; preds = %bb.ea, %bb.dj
  %.283.i = phi i64 [ 0, %bb.dj ], [ %i.qu, %bb.ea ]
  %.2.i72 = phi i64 [ 0, %bb.dj ], [ %i.qw, %bb.ea ]
  br i1 %.not.i50, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %.loopexit.i71
  store i64 %.283.i, ptr %2, align 8, !tbaa !164
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %.loopexit.i71
  br i1 %.not102.i, label %ma_data_converter_process_pcm_frames__channels_first.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  store i64 %.2.i72, ptr %4, align 8, !tbaa !164
  br label %ma_data_converter_process_pcm_frames__channels_first.exit

ma_data_converter_process_pcm_frames__channels_first.exit: ; preds = %.thread.i66, %bb.ec, %bb.ed
  %.288.i = phi i32 [ %.187.ph.i, %.thread.i66 ], [ 0, %bb.ed ], [ 0, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_data_converter_process_pcm_frames__passthrough.exit

ma_data_converter_process_pcm_frames__passthrough.exit: ; preds = %bb.cf, %bb.ce, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.ae, %bb.x, %bb.w, %bb.m, %bb.l, %bb.b, %bb.a, %ma_data_converter_process_pcm_frames__channels_first.exit, %ma_data_converter_process_pcm_frames__resample_first.exit
  %.0 = phi i32 [ %.288.i, %ma_data_converter_process_pcm_frames__channels_first.exit ], [ -2, %bb.a ], [ -3, %bb.b ], [ 0, %bb.m ], [ 0, %bb.x ], [ 0, %bb.au ], [ %.285.i, %ma_data_converter_process_pcm_frames__resample_first.exit ], [ 0, %bb.l ], [ 0, %bb.w ], [ %i.bt, %bb.ae ], [ 0, %bb.av ], [ -29, %bb.ba ], [ %i.ew, %bb.bb ], [ -29, %bb.az ], [ -2, %bb.ay ], [ %.4.i.i, %bb.ce ], [ %.4.i.i, %bb.cf ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_data_converter_set_rate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_resampler_set_rate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 299
  %i.c = load i8, ptr %i.b, align 1, !tbaa !246
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %ma_resampler_set_rate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = icmp eq i32 %1, 0
  %i.g = icmp eq i32 %2, 0
  %or.cond.i = or i1 %i.f, %i.g
  br i1 %or.cond.i, label %ma_resampler_set_rate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !247  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %ma_resampler_set_rate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !536  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %ma_resampler_set_rate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !250
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !251
  %i.q = tail call i32 %i.l(ptr noundef %i.o, ptr noundef %i.p, i32 noundef %1, i32 noundef %2) #55, !inline_history !539 ; 2 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %ma_resampler_set_rate.exit

end_hunk_1
begin_hunk_2_@ma_data_source_get_length_in_seconds:bb.a

ma_data_source_get_data_format.exit.thread:       ; preds = %bb.f, %bb.e
  %.0.i13.ph = phi i32 [ -29, %bb.e ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_data_source_get_length_in_pcm_frames.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.c, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.w = load i64, ptr %i.d, align 8, !tbaa !164
  %i.x = sitofp i64 %i.w to float
  %i.y = uitofp i32 %i.v to float
  %i.z = fdiv float %i.x, %i.y
  store float %i.z, ptr %1, align 4, !tbaa !349
  br label %ma_data_source_get_length_in_pcm_frames.exit.thread

ma_data_source_get_length_in_pcm_frames.exit.thread: ; preds = %bb.b, %bb.d, %ma_data_source_get_data_format.exit.thread, %ma_data_source_get_length_in_pcm_frames.exit, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %bb.a ], [ %i.p, %ma_data_source_get_length_in_pcm_frames.exit ], [ %.0.i13.ph, %ma_data_source_get_data_format.exit.thread ], [ -2, %bb.b ], [ -29, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_data_source_set_looping(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = atomicrmw xchg ptr %i.b, i32 %1 seq_cst, align 8 ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !358
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !597  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 %i.f(ptr noundef nonnull %0, i32 noundef %1) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ -2, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_range_in_pcm_frames(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp ult i64 %2, %1
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %ma_data_source_seek_to_pcm_frame.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.d = load ptr, ptr %0, align 8, !tbaa !358
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !593  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call i32 %i.f(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #55, !inline_history !594
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !590
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.j, align 8, !tbaa !359
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.k, align 8, !tbaa !592
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.l, align 8, !tbaa !360
  br label %ma_data_source_seek_to_pcm_frame.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.p = call i64 @llvm.umax.i64(i64 %i.m, i64 %i.o) ; 2 uses
  store i64 %1, ptr %i.n, align 8, !tbaa !590
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.q, align 8, !tbaa !359
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.r, align 8, !tbaa !592
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.s, align 8, !tbaa !360
  %i.t = icmp ult i64 %i.p, %1
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !358
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !589  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %ma_data_source_seek_to_pcm_frame.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call i32 %i.w(ptr noundef nonnull %0, i64 noundef %1) #55, !inline_history !591 ; 0 uses
  br label %ma_data_source_seek_to_pcm_frame.exit

bb.h:                                             ; preds = %bb.e
  %i.z = icmp ugt i64 %i.p, %2
  br i1 %i.z, label %bb.i, label %ma_data_source_seek_to_pcm_frame.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %0, align 8, !tbaa !358
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !589 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %ma_data_source_seek_to_pcm_frame.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = call i32 %i.ac(ptr noundef nonnull %0, i64 noundef %2) #55, !inline_history !591 ; 0 uses
  br label %ma_data_source_seek_to_pcm_frame.exit

ma_data_source_seek_to_pcm_frame.exit:            ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.h, %bb.a
  %.023 = phi i32 [ 0, %bb.d ], [ -2, %bb.a ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_data_source_get_range_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not15 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !590
  store i64 %i.c, ptr %1, align 8, !tbaa !164
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !359
  store i64 %i.e, ptr %2, align 8, !tbaa !164
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_loop_point_in_pcm_frames(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ult i64 %2, %1
  %or.cond24 = or i1 %i.a, %i.b
  br i1 %or.cond24, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !359  ; 2 uses
  %i.e = icmp ugt i64 %2, %i.d
  %i.f = icmp ne i64 %2, -1                       ; 2 uses
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.g, align 8, !tbaa !592
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !590
  %i.k = sub i64 %i.d, %i.j
  %i.l = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.k)
  %spec.store.select = select i1 %i.f, i64 %i.l, i64 -1
  store i64 %spec.store.select, ptr %i.h, align 8, !tbaa !360
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_data_source_get_loop_point_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not15 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %2, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !592
  store i64 %i.c, ptr %1, align 8, !tbaa !164
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !360
  store i64 %i.e, ptr %2, align 8, !tbaa !164
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_current(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !361
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_data_source_get_current(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !361
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_next(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.b, align 8, !tbaa !587
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_data_source_get_next(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !587
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_data_source_set_next_callback(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.b, align 8, !tbaa !588
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ma_data_source_get_next_callback(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_init(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  store ptr @g_ma_audio_buffer_ref_data_source_vtable, ptr %4, align 8, !tbaa !358
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 -1, ptr %i.c, align 8, !tbaa !359
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 -1, ptr %i.d, align 8, !tbaa !360
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %4, ptr %i.e, align 8, !tbaa !361
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %0, ptr %i.g, align 8, !tbaa !599
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i32 %1, ptr %i.h, align 4, !tbaa !600
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.i, align 8, !tbaa !601
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %3, ptr %i.j, align 8, !tbaa !602
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr %2, ptr %i.k, align 8, !tbaa !603
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @ma_audio_buffer_ref_uninit(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_set_data(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.b, align 8, !tbaa !601
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %2, ptr %i.c, align 8, !tbaa !602
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.d, align 8, !tbaa !603
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ma_audio_buffer_ref_read_pcm_frames(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #23 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %.not = icmp eq ptr %1, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not42 = icmp eq i32 %3, 0                     ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !602  ; 6 uses
  %.promoted = load i64, ptr %i.d, align 8, !tbaa !601 ; 4 uses
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not42, label %ma_copy_pcm_frames.exit.us.us, label %ma_copy_pcm_frames.exit.us

ma_copy_pcm_frames.exit.us.us:                    ; preds = %.preheader.split.us, %ma_copy_pcm_frames.exit.us.us
  %i.i = phi i64 [ %i.m, %ma_copy_pcm_frames.exit.us.us ], [ %.promoted, %.preheader.split.us ] ; 2 uses
  %.03545.us.us = phi i64 [ %i.l, %ma_copy_pcm_frames.exit.us.us ], [ 0, %.preheader.split.us ] ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = sub nuw i64 %2, %.03545.us.us
  %spec.select.us.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.j) ; 2 uses
  %i.l = add i64 %spec.select.us.us, %.03545.us.us ; 3 uses
  %i.m = add i64 %i.i, %spec.select.us.us         ; 3 uses
  %i.n = icmp ne i64 %i.m, %i.h
  %i.o = icmp ult i64 %i.l, %2
  %or.cond59 = and i1 %i.n, %i.o
  br i1 %or.cond59, label %ma_copy_pcm_frames.exit.us.us, label %.thread.loopexit.split.us

ma_copy_pcm_frames.exit.us:                       ; preds = %.preheader.split.us, %ma_copy_pcm_frames.exit.us
  %i.p = phi i64 [ %spec.select58, %ma_copy_pcm_frames.exit.us ], [ %.promoted, %.preheader.split.us ] ; 2 uses
  %.03545.us = phi i64 [ %i.s, %ma_copy_pcm_frames.exit.us ], [ 0, %.preheader.split.us ] ; 2 uses
  %i.q = sub i64 %i.h, %i.p
  %i.r = sub nuw i64 %2, %.03545.us
  %spec.select.us = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.q) ; 2 uses
  %i.s = add i64 %spec.select.us, %.03545.us      ; 3 uses
  %i.t = add i64 %i.p, %spec.select.us            ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.h
  %spec.select58 = select i1 %i.u, i64 0, i64 %i.t ; 2 uses
  %i.v = icmp ult i64 %i.s, %2
  br i1 %i.v, label %ma_copy_pcm_frames.exit.us, label %.thread.loopexit.split.us

.thread.loopexit.split.us:                        ; preds = %ma_copy_pcm_frames.exit.us, %ma_copy_pcm_frames.exit.us.us
  %.us-phi52 = phi i64 [ %i.m, %ma_copy_pcm_frames.exit.us.us ], [ %spec.select58, %ma_copy_pcm_frames.exit.us ]
  %.us-phi53 = phi i64 [ %i.l, %ma_copy_pcm_frames.exit.us.us ], [ %i.s, %ma_copy_pcm_frames.exit.us ]
  store i64 %.us-phi52, ptr %i.d, align 8, !tbaa !601
  br label %.thread

.preheader.split:                                 ; preds = %.preheader
  br i1 %.not42, label %.preheader.split.split.us, label %.preheader.split.split

.preheader.split.split.us:                        ; preds = %.preheader.split, %ma_copy_pcm_frames.exit.us48
  %i.w = phi i64 [ %i.ar, %ma_copy_pcm_frames.exit.us48 ], [ %i.h, %.preheader.split ] ; 2 uses
  %i.x = phi i64 [ %i.au, %ma_copy_pcm_frames.exit.us48 ], [ %.promoted, %.preheader.split ] ; 3 uses
  %.03545.us46 = phi i64 [ %i.at, %ma_copy_pcm_frames.exit.us48 ], [ 0, %.preheader.split ] ; 3 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = sub nuw i64 %2, %.03545.us46
  %spec.select.us47 = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 3 uses
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !599
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !600
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !118
  %i.af = mul i32 %i.ae, %i.ab
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = mul i64 %.03545.us46, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !603
  %i.ak = mul i64 %i.x, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = icmp eq ptr %i.ai, %i.al
  %i.an = mul i64 %spec.select.us47, %i.ag        ; 2 uses
  %.not.i7.i.us = icmp eq i64 %i.an, 0
  %or.cond44.us = select i1 %i.am, i1 true, i1 %.not.i7.i.us
  br i1 %or.cond44.us, label %ma_copy_pcm_frames.exit.us48, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.preheader.split.split.us, %.lr.ph.i.us
  %.0.i10.i.us = phi ptr [ %i.ap, %.lr.ph.i.us ], [ %i.ai, %.preheader.split.split.us ] ; 2 uses
  %.011.i9.i.us = phi i64 [ %i.ao, %.lr.ph.i.us ], [ %i.an, %.preheader.split.split.us ] ; 2 uses
  %.012.i8.i.us = phi ptr [ %i.aq, %.lr.ph.i.us ], [ %i.al, %.preheader.split.split.us ] ; 2 uses
  %spec.store.select.i.i.us = tail call i64 @llvm.umin.i64(i64 %.011.i9.i.us, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i.us, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i.us, i64 %spec.store.select.i.i.us, i1 false)
  %i.ao = sub nuw i64 %.011.i9.i.us, %spec.store.select.i.i.us ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i10.i.us, i64 %spec.store.select.i.i.us
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i8.i.us, i64 %spec.store.select.i.i.us
  %.not.i.i.us = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.us, label %ma_copy_pcm_frames.exit.us48.loopexit, label %.lr.ph.i.us, !llvm.loop !12

ma_copy_pcm_frames.exit.us48.loopexit:            ; preds = %.lr.ph.i.us
  %.pre72 = load i64, ptr %i.d, align 8, !tbaa !601
  %.pre73 = load i64, ptr %i.c, align 8, !tbaa !602
  br label %ma_copy_pcm_frames.exit.us48

ma_copy_pcm_frames.exit.us48:                     ; preds = %ma_copy_pcm_frames.exit.us48.loopexit, %.preheader.split.split.us
  %i.ar = phi i64 [ %.pre73, %ma_copy_pcm_frames.exit.us48.loopexit ], [ %i.w, %.preheader.split.split.us ] ; 2 uses
  %i.as = phi i64 [ %.pre72, %ma_copy_pcm_frames.exit.us48.loopexit ], [ %i.x, %.preheader.split.split.us ]
  %i.at = add i64 %spec.select.us47, %.03545.us46 ; 3 uses
  %i.au = add i64 %i.as, %spec.select.us47        ; 3 uses
  store i64 %i.au, ptr %i.d, align 8, !tbaa !601
  %i.av = icmp ne i64 %i.au, %i.ar
  %i.aw = icmp ult i64 %i.at, %2
  %or.cond60 = and i1 %i.av, %i.aw
  br i1 %or.cond60, label %.preheader.split.split.us, label %.thread

.preheader.split.split:                           ; preds = %.preheader.split, %ma_copy_pcm_frames.exit
  %i.ax = phi i64 [ %i.bs, %ma_copy_pcm_frames.exit ], [ %i.h, %.preheader.split ] ; 2 uses
  %i.ay = phi i64 [ %spec.store.select, %ma_copy_pcm_frames.exit ], [ %.promoted, %.preheader.split ] ; 3 uses
  %.03545 = phi i64 [ %i.bu, %ma_copy_pcm_frames.exit ], [ 0, %.preheader.split ] ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sub nuw i64 %2, %.03545
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.az) ; 3 uses
  %i.bb = load i32, ptr %i.e, align 8, !tbaa !599
  %i.bc = load i32, ptr %i.f, align 4, !tbaa !600
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !118
  %i.bg = mul i32 %i.bf, %i.bc
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = mul i64 %.03545, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !603
  %i.bl = mul i64 %i.ay, %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl ; 2 uses
  %i.bn = icmp eq ptr %i.bj, %i.bm
  %i.bo = mul i64 %spec.select, %i.bh             ; 2 uses
  %.not.i7.i = icmp eq i64 %i.bo, 0
  %or.cond44 = select i1 %i.bn, i1 true, i1 %.not.i7.i
  br i1 %or.cond44, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.split.split, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.bj, %.preheader.split.split ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.bp, %.lr.ph.i ], [ %i.bo, %.preheader.split.split ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.br, %.lr.ph.i ], [ %i.bm, %.preheader.split.split ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.bp = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit.loopexit, label %.lr.ph.i, !llvm.loop !12

ma_copy_pcm_frames.exit.loopexit:                 ; preds = %.lr.ph.i
  %.pre68 = load i64, ptr %i.d, align 8, !tbaa !601
  %.pre69 = load i64, ptr %i.c, align 8, !tbaa !602
  br label %ma_copy_pcm_frames.exit

ma_copy_pcm_frames.exit:                          ; preds = %ma_copy_pcm_frames.exit.loopexit, %.preheader.split.split
  %i.bs = phi i64 [ %.pre69, %ma_copy_pcm_frames.exit.loopexit ], [ %i.ax, %.preheader.split.split ] ; 2 uses
  %i.bt = phi i64 [ %.pre68, %ma_copy_pcm_frames.exit.loopexit ], [ %i.ay, %.preheader.split.split ]
  %i.bu = add i64 %spec.select, %.03545           ; 3 uses
  %i.bv = add i64 %i.bt, %spec.select             ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %i.bs
  %spec.store.select = select i1 %i.bw, i64 0, i64 %i.bv ; 2 uses
  store i64 %spec.store.select, ptr %i.d, align 8, !tbaa !601
  %i.bx = icmp ult i64 %i.bu, %2
  br i1 %i.bx, label %.preheader.split.split, label %.thread

.thread:                                          ; preds = %ma_copy_pcm_frames.exit, %ma_copy_pcm_frames.exit.us48, %.thread.loopexit.split.us, %bb.a
  %.036 = phi i64 [ 0, %bb.a ], [ %.us-phi53, %.thread.loopexit.split.us ], [ %i.at, %ma_copy_pcm_frames.exit.us48 ], [ %i.bu, %ma_copy_pcm_frames.exit ]
  ret i64 %.036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_seek_to_pcm_frame(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.b, align 8, !tbaa !602
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %1, ptr %i.e, align 8, !tbaa !601
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_map(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !134
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = load i64, ptr %2, align 8, !tbaa !164
  store i64 0, ptr %2, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !602
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !601  ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !603
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !599
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = load i32, ptr %i.l, align 4, !tbaa !600
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !118
  %i.q = mul i32 %i.p, %i.m
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %i.f, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  store ptr %i.t, ptr %1, align 8, !tbaa !134
  store i64 %spec.select, ptr %2, align 8, !tbaa !164
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %.023 = phi i32 [ 0, %bb.e ], [ -2, %bb.d ], [ -2, %bb.c ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -17, 1) i32 @ma_audio_buffer_ref_unmap(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i64, ptr %i.b, align 8, !tbaa !602  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !601  ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.e, %1                         ; 2 uses
  store i64 %i.h, ptr %i.d, align 8, !tbaa !601
  %i.i = icmp eq i64 %i.h, %i.c
  %. = select i1 %i.i, i32 -17, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ -2, %bb.a ], [ %., %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @ma_audio_buffer_ref_at_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !601
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8, !tbaa !602
  %i.f = icmp eq i64 %i.c, %i.e
  %i.g = zext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_get_cursor_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !601
  store i64 %i.d, ptr %1, align 8, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_get_length_in_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !602
  store i64 %i.d, ptr %1, align 8, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_audio_buffer_ref_get_available_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !164
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !602
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !601
  %storemerge = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %i.f)
  store i64 %storemerge, ptr %1, align 8, !tbaa !164
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ma_audio_buffer_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_audio_buffer_config) align 8 captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %0, null
end_hunk_2
begin_hunk_3_@ma_decoder_uninit:bb.a
  %.not9.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not9.i.i.i, label %ma_resampler_uninit.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !126
  tail call void %i.aq(ptr noundef nonnull %i.an, ptr noundef %i.ar) #55, !inline_history !335
  br label %ma_resampler_uninit.exit.i

ma_resampler_uninit.exit.i:                       ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.at = load i32, ptr %i.as, align 8, !tbaa !254
  %.not.i10.i = icmp eq i32 %i.at, 0
  br i1 %.not.i10.i, label %ma_channel_converter_uninit.exit.i, label %bb.t

bb.t:                                             ; preds = %ma_resampler_uninit.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !255 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %ma_channel_converter_uninit.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !132 ; 2 uses
  %.not9.i.i12.i = icmp eq ptr %i.ay, null
  br i1 %.not9.i.i12.i, label %ma_channel_converter_uninit.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !126
  tail call void %i.ay(ptr noundef nonnull %i.av, ptr noundef %i.az) #55, !inline_history !336
  br label %ma_channel_converter_uninit.exit.i

ma_channel_converter_uninit.exit.i:               ; preds = %bb.v, %bb.u, %bb.t, %ma_resampler_uninit.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 453
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !256
  %.not9.i = icmp eq i8 %i.bb, 0
  br i1 %.not9.i, label %ma_data_converter_uninit.exit, label %bb.w

bb.w:                                             ; preds = %ma_channel_converter_uninit.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !257 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %ma_data_converter_uninit.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !132 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bg, null
  br i1 %.not9.i.i, label %ma_data_converter_uninit.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !126
  tail call void %i.bg(ptr noundef nonnull %i.bd, ptr noundef %i.bh) #55, !inline_history !337
  br label %ma_data_converter_uninit.exit

ma_data_converter_uninit.exit:                    ; preds = %ma_channel_converter_uninit.exit.i, %bb.w, %bb.x, %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !815 ; 2 uses
  %.not25 = icmp eq ptr %i.bj, null
  br i1 %.not25, label %ma_free.exit, label %bb.z

bb.z:                                             ; preds = %ma_data_converter_uninit.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !132 ; 2 uses
  %.not9.i28 = icmp eq ptr %i.bl, null
  br i1 %.not9.i28, label %ma_free.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = load ptr, ptr %i.x, align 8, !tbaa !126
  tail call void %i.bl(ptr noundef nonnull %i.bj, ptr noundef %i.bm) #55, !inline_history !133
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.aa, %bb.z, %ma_data_converter_uninit.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %ma_data_converter_uninit.exit ], [ 0, %bb.z ], [ 0, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_decoder_read_pcm_frames(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 10 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca [4096 x i8], align 16             ; 6 uses
  %i.h = alloca i64, align 8                      ; 7 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp eq i64 %2, 0
  %i.l = icmp eq ptr %0, null
  %or.cond120 = or i1 %i.l, %i.k
  br i1 %or.cond120, label %bb.af, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !803  ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.af, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.r = load i8, ptr %i.q, align 4, !tbaa !2503
  %.not109 = icmp eq i8 %i.r, 0
  br i1 %.not109, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = call i32 @ma_data_source_read_pcm_frames(ptr noundef nonnull %i.n, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.d)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.t = icmp eq ptr %1, null
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 451
  %i.v = load i8, ptr %i.u, align 1, !tbaa !2504
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = call i32 @ma_data_source_read_pcm_frames(ptr noundef nonnull %i.n, ptr noundef null, i64 noundef %2, ptr noundef nonnull %i.d)
  br label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.h
  store i64 0, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !358
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !585 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 %i.aa(ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, i64 noundef 0) #55, !inline_history !586 ; 2 uses
  %.not36.i = icmp eq i32 %i.ac, 0
  br i1 %.not36.i, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !118 ; 2 uses
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !118 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !815
  %.not111 = icmp eq ptr %i.ag, null
  br i1 %.not111, label %.lr.ph151, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.m

.lr.ph151:                                        ; preds = %bb.l
  %i.ao = zext i32 %i.ad to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !118
  %i.ar = mul i32 %i.aq, %i.ae
  %i.as = udiv i32 4096, %i.ar
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 451
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 140
  br label %bb.s

bb.m:                                             ; preds = %.lr.ph, %select.unfold
  %i.ba = phi i64 [ 0, %.lr.ph ], [ %i.cj, %select.unfold ] ; 2 uses
  %.079149 = phi ptr [ %1, %.lr.ph ], [ %.3, %select.unfold ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  %i.bb = load i64, ptr %i.ah, align 8, !tbaa !2505 ; 2 uses
  %.not115 = icmp eq i64 %i.bb, 0
  %.pre153 = load ptr, ptr %i.af, align 8, !tbaa !815 ; 2 uses
  br i1 %.not115, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = sub nuw i64 %2, %i.ba                   ; 2 uses
  store i64 %i.bc, ptr %i.f, align 8, !tbaa !164
  %spec.store.select119 = call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bb)
  store i64 %spec.store.select119, ptr %i.e, align 8, !tbaa !164
  %i.bd = load i64, ptr %i.ai, align 8, !tbaa !2506
  %i.be = load i32, ptr %i.ak, align 4, !tbaa !118
  %i.bf = mul i32 %i.be, %i.ae
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul i64 %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre153, i64 %i.bh
  %i.bj = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %i.p, ptr noundef %i.bi, ptr noundef nonnull %i.e, ptr noundef %.079149, ptr noundef nonnull %i.f) ; 2 uses
  %.not116 = icmp eq i32 %i.bj, 0
  br i1 %.not116, label %bb.o, label %.thread136

bb.o:                                             ; preds = %bb.n
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !164 ; 4 uses
  %i.bl = load i64, ptr %i.ai, align 8, !tbaa !2506
  %i.bm = add i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.ai, align 8, !tbaa !2506
  %i.bn = load i64, ptr %i.ah, align 8, !tbaa !2505 ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bk
  store i64 %i.bo, ptr %i.ah, align 8, !tbaa !2505
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !164 ; 3 uses
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !164
  %i.br = add i64 %i.bq, %i.bp                    ; 3 uses
  store i64 %i.br, ptr %i.d, align 8, !tbaa !164
  %.not117 = icmp eq ptr %.079149, null
  br i1 %.not117, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = load i32, ptr %i.al, align 8, !tbaa !810
  %i.bt = load i32, ptr %i.am, align 4, !tbaa !811
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !118
  %i.bx = mul i32 %i.bw, %i.bt
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul i64 %i.bp, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.079149, i64 %i.bz
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.180 = phi ptr [ %i.ca, %bb.p ], [ null, %bb.o ] ; 2 uses
  %i.cb = icmp eq i64 %i.bk, 0
  %i.cc = icmp eq i64 %i.bp, 0
  %or.cond = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond, label %.thread136, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp eq i64 %i.bn, %i.bk
  br i1 %i.cd, label %..thread_crit_edge, label %select.unfold

..thread_crit_edge:                               ; preds = %bb.r
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !815
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.m
  %i.ce = phi i64 [ %i.br, %..thread_crit_edge ], [ %i.ba, %bb.m ]
  %i.cf = phi ptr [ %.pre, %..thread_crit_edge ], [ %.pre153, %bb.m ]
  %.281135 = phi ptr [ %.180, %..thread_crit_edge ], [ %.079149, %bb.m ]
  store i64 0, ptr %i.ai, align 8, !tbaa !2506
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !803
  %i.ch = load i64, ptr %i.an, align 8, !tbaa !814
  %i.ci = call i32 @ma_data_source_read_pcm_frames(ptr noundef %i.cg, ptr noundef %i.cf, i64 noundef %i.ch, ptr noundef nonnull %i.ah) ; 2 uses
  %.not118 = icmp eq i32 %i.ci, 0
  br i1 %.not118, label %select.unfold, label %.thread136

.thread136:                                       ; preds = %.thread, %bb.n, %bb.q
  %.385.ph = phi i32 [ 0, %bb.q ], [ %i.bj, %bb.n ], [ %i.ci, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %.loopexit

select.unfold:                                    ; preds = %.thread, %bb.r
  %i.cj = phi i64 [ %i.br, %bb.r ], [ %i.ce, %.thread ] ; 2 uses
  %.3 = phi ptr [ %.180, %bb.r ], [ %.281135, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  %i.ck = icmp ult i64 %i.cj, %2
  br i1 %i.ck, label %bb.m, label %.loopexit

bb.s:                                             ; preds = %.lr.ph151, %bb.ac
  %i.cl = phi i64 [ 0, %.lr.ph151 ], [ %i.dc, %bb.ac ]
  %.4150 = phi ptr [ %1, %.lr.ph151 ], [ %.5, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #55
  %i.cm = sub nuw i64 %2, %i.cl                   ; 5 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.at)
  store i64 0, ptr %i.j, align 8, !tbaa !164
  %i.cn = load i8, ptr %i.au, align 1, !tbaa !246
  %.not.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !247 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %ma_data_converter_get_required_input_frame_count.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !260 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %ma_data_converter_get_required_input_frame_count.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = load ptr, ptr %i.ax, align 8, !tbaa !250
  %i.cu = load ptr, ptr %i.av, align 8, !tbaa !251
  %i.cv = call i32 %i.cr(ptr noundef %i.ct, ptr noundef %i.cu, i64 noundef %i.cm, ptr noundef nonnull %i.j) #55, !inline_history !367 ; 0 uses
  %.pr140.pre = load i64, ptr %i.j, align 8, !tbaa !164
  br label %ma_data_converter_get_required_input_frame_count.exit

bb.w:                                             ; preds = %bb.s
  store i64 %i.cm, ptr %i.j, align 8, !tbaa !164
  br label %ma_data_converter_get_required_input_frame_count.exit

ma_data_converter_get_required_input_frame_count.exit: ; preds = %bb.v, %bb.w
  %i.cw = phi i64 [ %i.cm, %bb.w ], [ %.pr140.pre, %bb.v ] ; 2 uses
  %.not112 = icmp eq i64 %i.cw, 0
  br i1 %.not112, label %ma_data_converter_get_required_input_frame_count.exit.thread, label %bb.x

bb.x:                                             ; preds = %ma_data_converter_get_required_input_frame_count.exit
  %.1 = call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.cw)
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !803
  %i.cy = call i32 @ma_data_source_read_pcm_frames(ptr noundef %i.cx, ptr noundef nonnull %i.g, i64 noundef %.1, ptr noundef nonnull %i.h) ; 2 uses
  switch i32 %i.cy, label %.thread143 [
    i32 -17, label %bb.y
    i32 0, label %bb.y
  ]

ma_data_converter_get_required_input_frame_count.exit.thread: ; preds = %bb.t, %bb.u, %ma_data_converter_get_required_input_frame_count.exit
  store i64 0, ptr %i.h, align 8, !tbaa !164
  store i8 0, ptr %i.g, align 16, !tbaa !119
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.x, %ma_data_converter_get_required_input_frame_count.exit.thread
  store i64 %i.cm, ptr %i.i, align 8, !tbaa !164
  %i.cz = call i32 @ma_data_converter_process_pcm_frames(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef %.4150, ptr noundef nonnull %i.i) ; 2 uses
  %.not113 = icmp eq i32 %i.cz, 0
  br i1 %.not113, label %bb.z, label %.thread143

bb.z:                                             ; preds = %bb.y
  %i.da = load i64, ptr %i.i, align 8, !tbaa !164 ; 3 uses
  %i.db = load i64, ptr %i.d, align 8, !tbaa !164
  %i.dc = add i64 %i.db, %i.da                    ; 3 uses
  store i64 %i.dc, ptr %i.d, align 8, !tbaa !164
  %.not114 = icmp eq ptr %.4150, null
  br i1 %.not114, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = load i32, ptr %i.ay, align 8, !tbaa !810
  %i.de = load i32, ptr %i.az, align 4, !tbaa !811
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !118
  %i.di = mul i32 %i.dh, %i.de
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul i64 %i.da, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.4150, i64 %i.dk
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.5 = phi ptr [ %i.dl, %bb.aa ], [ null, %bb.z ]
  %i.dm = load i64, ptr %i.h, align 8, !tbaa !164
  %i.dn = icmp eq i64 %i.dm, 0
  %i.do = icmp eq i64 %i.da, 0
  %or.cond5 = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond5, label %.thread143, label %bb.ac

.thread143:                                       ; preds = %bb.y, %bb.x, %bb.ab
  %.587.ph = phi i32 [ %i.cz, %bb.y ], [ %i.cy, %bb.x ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  br label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  %i.dp = icmp ult i64 %i.dc, %2
  br i1 %i.dp, label %bb.s, label %.loopexit

.loopexit:                                        ; preds = %select.unfold, %bb.ac, %.thread136, %.thread143, %bb.i, %bb.f
  %.8 = phi i32 [ %i.s, %bb.f ], [ %i.x, %bb.i ], [ %.587.ph, %.thread143 ], [ %.385.ph, %.thread136 ], [ 0, %bb.ac ], [ 0, %select.unfold ] ; 2 uses
  %i.dq = load i64, ptr %i.d, align 8, !tbaa !164 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !821
  %i.dt = add i64 %i.ds, %i.dq
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !821
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  store i64 %i.dq, ptr %3, align 8, !tbaa !164
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.loopexit
  %i.du = icmp eq i32 %.8, 0
  %i.dv = icmp eq i64 %i.dq, 0
  %or.cond7 = select i1 %i.du, i1 %i.dv, i1 false
  %spec.store.select = select i1 %or.cond7, i32 -17, i32 %.8
end_hunk_3
begin_hunk_4_@ma_resource_manager_data_buffer_node_unacquire:bb.a
  br i1 %.not9.i22.i, label %ma_resource_manager_data_buffer_bst_unlock.exit, label %bb.ai

bb.ai:                                            ; preds = %.thread.i
  %i.gc = load ptr, ptr %0, align 8, !tbaa !126
  tail call void %i.gb(ptr noundef nonnull %.0, ptr noundef %i.gc) #55, !inline_history !2668
  br label %ma_resource_manager_data_buffer_bst_unlock.exit

ma_resource_manager_data_buffer_bst_unlock.exit:  ; preds = %bb.m, %bb.ai, %.thread.i, %bb.l, %.loopexit, %bb.q, %bb.c, %bb.a
  %.1 = phi i32 [ %spec.select, %.loopexit ], [ -2, %bb.a ], [ -2, %bb.c ], [ 0, %bb.q ], [ 0, %bb.ai ], [ -7, %bb.l ], [ 0, %.thread.i ], [ -7, %bb.m ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @ma_resource_manager_data_stream_init_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.ma_job, align 8             ; 14 uses
  %4 = alloca %struct.ma_resource_manager_inline_notification, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.b = icmp eq ptr %2, null
  br i1 %i.b, label %bb.b, label %ma_zero_memory_default.exit

bb.b:                                             ; preds = %bb.a
  %.not83 = icmp eq ptr %1, null
  br i1 %.not83, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !893  ; 3 uses
  %.not84 = icmp eq ptr %i.d, null
  br i1 %.not84, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !895  ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %ma_async_notification_signal.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_async_notification_signal.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.f(ptr noundef nonnull %i.e) #55, !inline_history !78
  br label %ma_async_notification_signal.exit.i

ma_async_notification_signal.exit.i:              ; preds = %bb.f, %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !896  ; 3 uses
  %.not7.i = icmp eq ptr %i.i, null
  br i1 %.not7.i, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.g

bb.g:                                             ; preds = %ma_async_notification_signal.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.j(ptr noundef nonnull %i.i) #55, !inline_history !78
  br label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(728) %2, i8 0, i64 728, i1 false)
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.i

bb.i:                                             ; preds = %ma_zero_memory_default.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !893  ; 5 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0122.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !134
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !134
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !134
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !134
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.17.0 = phi ptr [ %.sroa.17.0.copyload, %bb.j ], [ null, %bb.i ] ; 3 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.0.copyload, %bb.j ], [ null, %bb.i ] ; 9 uses
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload, %bb.j ], [ null, %bb.i ] ; 4 uses
  %.sroa.0122.0 = phi ptr [ %.sroa.0122.0.copyload, %bb.j ], [ null, %bb.i ] ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  store ptr @g_ma_resource_manager_data_stream_vtable, ptr %2, align 8, !tbaa !358
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i64 -1, ptr %i.p, align 8, !tbaa !359
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store i64 -1, ptr %i.q, align 8, !tbaa !360
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %2, ptr %i.r, align 8, !tbaa !361
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !898  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !892
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %0, ptr %i.x, align 8, !tbaa !928
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.u, ptr %i.y, align 8, !tbaa !929
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 704 ; 2 uses
  store i32 -19, ptr %i.z, align 8, !tbaa !2670
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !888 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !889 ; 5 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_ma_resource_manager_data_stream_vtable, i64 24), align 8, !tbaa !593 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = call i32 %i.af(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #55, !inline_history !930
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !590
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !359
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.aj, align 8, !tbaa !592
  store i64 -1, ptr %i.q, align 8, !tbaa !360
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.o:                                             ; preds = %bb.m
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !164
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.an = call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.am) ; 2 uses
  store i64 %i.ab, ptr %i.al, align 8, !tbaa !590
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !359
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.ao, align 8, !tbaa !592
  store i64 -1, ptr %i.q, align 8, !tbaa !360
  %i.ap = icmp ult i64 %i.an, %i.ab
  br i1 %i.ap, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %2, align 8, !tbaa !358
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !589 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = call i32 %i.as(ptr noundef nonnull %2, i64 noundef %i.ab) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.r:                                             ; preds = %bb.o
  %i.av = icmp ugt i64 %i.an, %i.ad
  br i1 %i.av, label %bb.s, label %ma_data_source_set_range_in_pcm_frames.exit

bb.s:                                             ; preds = %bb.r
  %i.aw = load ptr, ptr %2, align 8, !tbaa !358
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !589 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = call i32 %i.ay(ptr noundef nonnull %2, i64 noundef %i.ad) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

ma_data_source_set_range_in_pcm_frames.exit:      ; preds = %bb.k, %bb.n, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !890 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !891 ; 4 uses
  %i.bf = icmp ult i64 %i.be, %i.bc
  br i1 %i.bf, label %bb.w, label %bb.u

bb.u:                                             ; preds = %ma_data_source_set_range_in_pcm_frames.exit
  %i.bg = load i64, ptr %i.p, align 8, !tbaa !359 ; 2 uses
  %i.bh = icmp ugt i64 %i.be, %i.bg
  %i.bi = icmp ne i64 %i.be, -1                   ; 2 uses
  %or.cond.i91 = and i1 %i.bi, %i.bh
  br i1 %or.cond.i91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bc, ptr %i.bj, align 8, !tbaa !592
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !590
  %i.bm = sub i64 %i.bg, %i.bl
  %i.bn = call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bm)
  %spec.store.select.i = select i1 %i.bi, i64 %i.bn, i64 -1
  store i64 %spec.store.select.i, ptr %i.q, align 8, !tbaa !360
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %ma_data_source_set_range_in_pcm_frames.exit
  %i.bo = and i32 %i.u, 32
  %i.bp = or i32 %i.bo, %i.w
  %.narrow = icmp ne i32 %i.bp, 0
  %.lobit = zext i1 %.narrow to i32               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = atomicrmw xchg ptr %i.bq, i32 %.lobit seq_cst, align 8 ; 0 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !358
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !597 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %ma_data_source_set_looping.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = call i32 %i.bu(ptr noundef nonnull %2, i32 noundef %.lobit) #55, !inline_history !918 ; 0 uses
  br label %ma_data_source_set_looping.exit

ma_data_source_set_looping.exit:                  ; preds = %bb.w, %bb.x
  %i.bx = icmp eq ptr %0, null
  br i1 %i.bx, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %ma_data_source_set_looping.exit
  %i.by = load ptr, ptr %1, align 8, !tbaa !900   ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !901 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z, %ma_data_source_set_looping.exit
  %.not.i94 = icmp eq ptr %.sroa.0122.0, null
  br i1 %.not.i94, label %ma_async_notification_signal.exit.i95, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load ptr, ptr %.sroa.0122.0, align 8, !tbaa !147 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %ma_async_notification_signal.exit.i95, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void %i.cd(ptr noundef nonnull %.sroa.0122.0) #55, !inline_history !78
  br label %ma_async_notification_signal.exit.i95

ma_async_notification_signal.exit.i95:            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.not7.i96 = icmp eq ptr %.sroa.13.0, null
  br i1 %.not7.i96, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.ad

bb.ad:                                            ; preds = %ma_async_notification_signal.exit.i95
  %i.cf = load ptr, ptr %.sroa.13.0, align 8, !tbaa !147 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void %i.cf(ptr noundef nonnull %.sroa.13.0) #55, !inline_history !78
  br label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit

bb.af:                                            ; preds = %bb.y
  %i.ch = call ptr @ma_copy_string(ptr noundef nonnull %i.by, ptr noundef nonnull %0)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.z
  %i.ci = call ptr @ma_copy_string_w(ptr noundef nonnull %i.cb, ptr noundef nonnull %0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.063 = phi ptr [ %i.ch, %bb.af ], [ null, %bb.ag ] ; 3 uses
  %.062 = phi ptr [ null, %bb.af ], [ %i.ci, %bb.ag ] ; 3 uses
  %i.cj = icmp eq ptr %.063, null                 ; 2 uses
  %i.ck = icmp eq ptr %.062, null                 ; 2 uses
  %or.cond = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %.not.i98 = icmp eq ptr %.sroa.0122.0, null
  br i1 %.not.i98, label %ma_async_notification_signal.exit.i99, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cl = load ptr, ptr %.sroa.0122.0, align 8, !tbaa !147 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %ma_async_notification_signal.exit.i99, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void %i.cl(ptr noundef nonnull %.sroa.0122.0) #55, !inline_history !78
  br label %ma_async_notification_signal.exit.i99

ma_async_notification_signal.exit.i99:            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.not7.i100 = icmp eq ptr %.sroa.13.0, null
  br i1 %.not7.i100, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.al

bb.al:                                            ; preds = %ma_async_notification_signal.exit.i99
  %i.cn = load ptr, ptr %.sroa.13.0, align 8, !tbaa !147 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void %i.cn(ptr noundef nonnull %.sroa.13.0) #55, !inline_history !78
  br label %ma_resource_manager_pipeline_notifications_signal_all_notifications.exit

bb.an:                                            ; preds = %bb.ah
  %i.cp = load i32, ptr %i.t, align 8, !tbaa !898
  %i.cq = and i32 %i.cp, 12
  %or.cond85.not = icmp eq i32 %i.cq, 4           ; 4 uses
  br i1 %or.cond85.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @ma_resource_manager_inline_notification_init(ptr noundef nonnull %0, ptr noundef %4)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.not.i102 = icmp eq ptr %.sroa.10.0, null
  br i1 %.not.i102, label %ma_fence_acquire.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ap
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.10.0, i64 96 ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.preheader.i.i
  %i.cs = load atomic i32, ptr %i.cr seq_cst, align 8 ; 2 uses
  %i.ct = add i32 %i.cs, 1                        ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %ma_fence_acquire.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cv = cmpxchg weak ptr %i.cr, i32 %i.cs, i32 %i.ct seq_cst seq_cst, align 8 ; 2 uses
  %i.cw = extractvalue { i32, i1 } %i.cv, 1
  %i.cx = extractvalue { i32, i1 } %i.cv, 0
  %.not.i.i103 = icmp eq i32 %i.cx, 2147483647
  %or.cond.i104 = select i1 %i.cw, i1 true, i1 %.not.i.i103
  br i1 %or.cond.i104, label %ma_fence_acquire.exit.i, label %bb.aq

ma_fence_acquire.exit.i:                          ; preds = %bb.ar, %bb.aq, %bb.ap
  %.not7.i105 = icmp eq ptr %.sroa.17.0, null
  br i1 %.not7.i105, label %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit, label %.preheader.i8.i

.preheader.i8.i:                                  ; preds = %ma_fence_acquire.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.17.0, i64 96 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.preheader.i8.i
  %i.cz = load atomic i32, ptr %i.cy seq_cst, align 8 ; 2 uses
  %i.da = add i32 %i.cz, 1                        ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dc = cmpxchg weak ptr %i.cy, i32 %i.cz, i32 %i.da seq_cst seq_cst, align 8 ; 2 uses
  %i.dd = extractvalue { i32, i1 } %i.dc, 1
  %i.de = extractvalue { i32, i1 } %i.dc, 0
  %.not.i9.i = icmp eq i32 %i.de, 2147483647
  %or.cond12.i = select i1 %i.dd, i1 true, i1 %.not.i9.i
  br i1 %or.cond12.i, label %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit, label %bb.as

ma_resource_manager_pipeline_notifications_acquire_all_fences.exit: ; preds = %bb.as, %bb.at, %ma_fence_acquire.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !910 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !932 ; 3 uses
  %i.dj = icmp ule i64 %i.dg, %i.di
  %.not.i106 = icmp eq i64 %i.di, 0
  %or.cond.i107 = or i1 %i.dj, %.not.i106
  br i1 %or.cond.i107, label %ma_resource_manager_post_job.exit, label %bb.au

bb.au:                                            ; preds = %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit
  %i.dk = urem i64 %i.dg, %i.di
  br label %ma_resource_manager_post_job.exit

ma_resource_manager_post_job.exit:                ; preds = %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit, %bb.au
  %.0.i108 = phi i64 [ %i.dk, %bb.au ], [ %i.dg, %ma_resource_manager_pipeline_notifications_acquire_all_fences.exit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.dm = atomicrmw xchg ptr %i.dl, i64 %.0.i108 seq_cst, align 8 ; 0 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx, i8 0, i64 88, i1 false)
  store i16 7, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 -1, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !119
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 -1, ptr %.sroa.6121.0..sroa_idx, align 8, !tbaa !164
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 676
  %i.do = atomicrmw add ptr %i.dn, i32 1 seq_cst, align 4
  store i32 %i.do, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !908
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.dp, align 8, !tbaa !119
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.063, ptr %i.dq, align 8, !tbaa !119
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %.062, ptr %i.dr, align 8, !tbaa !119
  %i.ds = load i64, ptr %i.df, align 8, !tbaa !910
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !119
  %i.du = select i1 %or.cond85.not, ptr %.sroa.0122.0, ptr %4
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !119
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %.sroa.10.0, ptr %i.dw, align 8, !tbaa !119
end_hunk_4
begin_hunk_5_@ma_sound_init_from_data_source_internal:bb.a

bb.p:                                             ; preds = %.thread.i, %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 936
  store i8 1, ptr %i.bc, align 8, !tbaa !1027
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1058 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bg = load i32, ptr %i.h, align 8, !tbaa !1057
  %i.bh = and i32 %i.bg, 4096
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bk = call i32 @ma_node_attach_output_bus(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %i.bj, i32 noundef 0)
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !2786
  %i.bn = call i32 @ma_node_attach_output_bus(ptr noundef nonnull %2, i32 noundef 0, ptr noundef nonnull %i.be, i32 noundef %i.bm)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.056 = phi i32 [ %i.bk, %bb.r ], [ %i.bn, %bb.s ] ; 2 uses
  %.not67 = icmp eq i32 %.056, 0
  br i1 %.not67, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @ma_engine_node_uninit(ptr noundef nonnull %2, ptr noundef nonnull %i.ap)
  br label %ma_sound_set_looping.exit

.thread:                                          ; preds = %bb.q, %bb.t
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !1055
  %.not68 = icmp eq ptr %i.bo, null
  br i1 %.not68, label %bb.z, label %ma_node_graph_get_processing_size_in_frames.exit

ma_node_graph_get_processing_size_in_frames.exit: ; preds = %.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 1000
  store i32 0, ptr %i.bp, align 8, !tbaa !1068
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !950 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 1004
  %i.bt = icmp eq i32 %i.br, 0
  %spec.select = select i1 %i.bt, i32 512, i32 %i.br ; 2 uses
  store i32 %spec.select, ptr %i.bs, align 4, !tbaa !1069
  %i.bu = shl i32 %i.ao, 2
  %i.bv = mul i32 %i.bu, %spec.select             ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !125 ; 2 uses
  %.not8.i.i77 = icmp eq ptr %i.by, null
  br i1 %.not8.i.i77, label %bb.y, label %bb.v

bb.v:                                             ; preds = %ma_node_graph_get_processing_size_in_frames.exit
  %i.bz = load ptr, ptr %i.ap, align 8, !tbaa !126
  %i.ca = call ptr %i.by(i64 noundef %i.bw, ptr noundef %i.bz) #55, !inline_history !1070 ; 3 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not8.i = icmp eq i32 %i.bv, 0
  br i1 %.not8.i, label %ma_calloc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ca, i8 0, i64 %i.bw, i1 false)
  br label %ma_calloc.exit

ma_calloc.exit:                                   ; preds = %bb.w, %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 992
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !1052
  br label %bb.z

bb.y:                                             ; preds = %bb.v, %ma_node_graph_get_processing_size_in_frames.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 992
  store ptr null, ptr %i.cc, align 8, !tbaa !1052
  call void @ma_engine_node_uninit(ptr noundef nonnull %2, ptr noundef nonnull %i.ap)
  br label %ma_sound_set_looping.exit

bb.z:                                             ; preds = %ma_calloc.exit, %.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !2787 ; 6 uses
  %.not69 = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !1032 ; 6 uses
  %.not70 = icmp eq i64 %i.cg, -1
  %or.cond = select i1 %.not69, i1 %.not70, i1 false
  br i1 %or.cond, label %ma_data_source_set_range_in_pcm_frames.exit, label %ma_sound_get_data_source.exit

ma_sound_get_data_source.exit:                    ; preds = %bb.z
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !1055 ; 15 uses
  %i.ci = icmp eq ptr %i.ch, null
  %i.cj = icmp ult i64 %i.cg, %i.ce
  %or.cond.i = or i1 %i.ci, %i.cj
  br i1 %or.cond.i, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.aa

bb.aa:                                            ; preds = %ma_sound_get_data_source.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !593 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = call i32 %i.cm(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.a) #55, !inline_history !930
  %.not.i.i79 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i79, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.ce, ptr %i.cp, align 8, !tbaa !590
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.cg, ptr %i.cq, align 8, !tbaa !359
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 0, ptr %i.cr, align 8, !tbaa !592
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 -1, ptr %i.cs, align 8, !tbaa !360
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !164
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.cw = call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cv) ; 2 uses
  store i64 %i.ce, ptr %i.cu, align 8, !tbaa !590
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.cg, ptr %i.cx, align 8, !tbaa !359
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store i64 0, ptr %i.cy, align 8, !tbaa !592
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i64 -1, ptr %i.cz, align 8, !tbaa !360
  %i.da = icmp ult i64 %i.cw, %i.ce
  br i1 %i.da, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !358
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !589 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = call i32 %i.dd(ptr noundef nonnull %i.ch, i64 noundef %i.ce) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.ag:                                            ; preds = %bb.ad
  %i.dg = icmp ugt i64 %i.cw, %i.cg
  br i1 %i.dg, label %bb.ah, label %ma_data_source_set_range_in_pcm_frames.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dh = load ptr, ptr %i.ch, align 8, !tbaa !358
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !589 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = call i32 %i.dj(ptr noundef nonnull %i.ch, i64 noundef %i.cg) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

ma_data_source_set_range_in_pcm_frames.exit:      ; preds = %bb.z, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %ma_sound_get_data_source.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !2788 ; 3 uses
  %.not71 = icmp eq i64 %i.dn, 0
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !1033 ; 5 uses
  %.not72 = icmp eq i64 %i.dp, -1
  %or.cond122 = select i1 %.not71, i1 %.not72, i1 false
  br i1 %or.cond122, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %ma_sound_get_data_source.exit81

ma_sound_get_data_source.exit81:                  ; preds = %ma_data_source_set_range_in_pcm_frames.exit
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !1055 ; 5 uses
  %i.dr = icmp eq ptr %i.dq, null
  %i.ds = icmp ult i64 %i.dp, %i.dn
  %or.cond24.i = or i1 %i.dr, %i.ds
  br i1 %or.cond24.i, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.aj

bb.aj:                                            ; preds = %ma_sound_get_data_source.exit81
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !359 ; 2 uses
  %i.dv = icmp ugt i64 %i.dp, %i.du
  %i.dw = icmp ne i64 %i.dp, -1                   ; 2 uses
  %or.cond.i82 = and i1 %i.dw, %i.dv
  br i1 %or.cond.i82, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store i64 %i.dn, ptr %i.dx, align 8, !tbaa !592
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !590
  %i.eb = sub i64 %i.du, %i.ea
  %i.ec = call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.eb)
  %spec.store.select.i = select i1 %i.dw, i64 %i.ec, i64 -1
  store i64 %spec.store.select.i, ptr %i.dy, align 8, !tbaa !360
  br label %ma_data_source_set_loop_point_in_pcm_frames.exit

ma_data_source_set_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_set_range_in_pcm_frames.exit, %bb.ak, %bb.aj, %ma_sound_get_data_source.exit81
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !1064
  %.not73 = icmp eq i32 %i.ee, 0
  br i1 %.not73, label %bb.al, label %bb.am

bb.al:                                            ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.ef = load i32, ptr %i.h, align 8, !tbaa !1057
  %i.eg = lshr i32 %i.ef, 5
  %.lobit = and i32 %i.eg, 1
  br label %bb.am

bb.am:                                            ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit, %bb.al
  %i.eh = phi i32 [ 1, %ma_data_source_set_loop_point_in_pcm_frames.exit ], [ %.lobit, %bb.al ] ; 2 uses
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !1055 ; 4 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %ma_sound_set_looping.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.el = atomicrmw xchg ptr %i.ek, i32 %i.eh seq_cst, align 8 ; 0 uses
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !358
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !597 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %ma_sound_set_looping.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = call i32 %i.eo(ptr noundef nonnull %i.ei, i32 noundef %i.eh) #55, !inline_history !2789 ; 0 uses
  br label %ma_sound_set_looping.exit

ma_sound_set_looping.exit:                        ; preds = %bb.n, %.thread.i, %bb.k, %bb.l, %bb.o, %ma_engine_node_get_heap_size.exit.i, %bb.ao, %bb.an, %bb.am, %ma_data_source_get_data_format.exit.thread, %bb.f, %bb.y, %bb.u
  %.057 = phi i32 [ 0, %bb.ao ], [ -4, %bb.y ], [ %.0.i.ph, %ma_data_source_get_data_format.exit.thread ], [ -3, %bb.f ], [ %.056, %bb.u ], [ 0, %bb.am ], [ 0, %bb.an ], [ %i.ax, %bb.n ], [ %i.ay, %.thread.i ], [ -4, %bb.k ], [ -4, %bb.l ], [ %i.ax, %bb.o ], [ %i.aq, %ma_engine_node_get_heap_size.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_ex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %ma_sound_preinit.exit.thread, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %2, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 960
  store i64 -1, ptr %i.b, align 8, !tbaa !1060
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %ma_sound_preinit.exit.thread, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 976
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !134
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !134
  %i.h = load ptr, ptr %1, align 8, !tbaa !1056
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1071
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call i32 @ma_sound_init_from_file_internal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %ma_sound_preinit.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @ma_sound_init_from_data_source_internal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %ma_sound_preinit.exit.thread

ma_sound_preinit.exit.thread:                     ; preds = %ma_zero_memory_default.exit.i, %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ %i.l, %bb.e ], [ -2, %ma_zero_memory_default.exit.i ], [ %i.k, %bb.d ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_from_file_w(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 {
bb.a:
  %6 = alloca %struct.ma_sound_config, align 8    ; 18 uses
  %.sroa.9 = alloca [16 x i8], align 4            ; 5 uses
  %.sroa.10 = alloca [20 x i8], align 4           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_sound_init_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1011, !noalias !2792
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.sroa.711.112.copyload = load i32, ptr %i.d, align 8, !tbaa !118
  %.sroa.9.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.112..sroa_idx, i64 16, i1 false), !tbaa.struct !1034
  %.sroa.10.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.112..sroa_idx, i64 20, i1 false), !tbaa.struct !1035
  %.sroa.11.112..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.e = load <2 x i32>, ptr %.sroa.11.112..sroa_idx, align 8
  br label %ma_sound_config_init_2.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i8 0, i64 20, i1 false), !alias.scope !2792
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false), !alias.scope !2792
  br label %ma_sound_config_init_2.exit

ma_sound_config_init_2.exit:                      ; preds = %bb.c, %bb.d
  %.sroa.711.0 = phi i32 [ 5, %bb.d ], [ %.sroa.711.112.copyload, %bb.c ]
  %.sink.i = phi i32 [ 0, %bb.d ], [ %i.c, %bb.c ]
  %i.f = phi <2 x i32> [ zeroinitializer, %bb.d ], [ %i.e, %bb.c ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %6, i8 0, i64 44, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %.sink.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !118
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 -1, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !164
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !164
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 -1, ptr %.sroa.610.0..sroa_idx, align 8, !tbaa !164
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i32 %.sroa.711.0, ptr %.sroa.711.0..sroa_idx, align 8, !tbaa !118
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9, i64 16, i1 false), !tbaa.struct !1062
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !1063
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  store <2 x i32> %i.f, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !1071
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1057
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.h, align 8, !tbaa !1058
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 192
  store ptr %4, ptr %i.i, align 8, !tbaa !1059
  %i.j = icmp eq ptr %5, null
  br i1 %i.j, label %ma_sound_init_ex.exit, label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %ma_sound_config_init_2.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 960
  store i64 -1, ptr %i.k, align 8, !tbaa !1060
  br i1 %.not.i, label %ma_sound_init_ex.exit, label %bb.e

bb.e:                                             ; preds = %ma_zero_memory_default.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 976
  %i.m = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !134
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !134
  %i.n = call i32 @ma_sound_init_from_file_internal(ptr noundef nonnull %0, ptr noundef nonnull readonly %6, ptr noundef nonnull %5)
  br label %ma_sound_init_ex.exit

ma_sound_init_ex.exit:                            ; preds = %bb.e, %ma_zero_memory_default.exit.i.i, %ma_sound_config_init_2.exit, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %ma_sound_config_init_2.exit ], [ -2, %ma_zero_memory_default.exit.i.i ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ma_sound_init_copy(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.ma_resource_manager_data_source_config, align 8 ; 9 uses
  %6 = alloca %struct.ma_sound_config, align 8    ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %ma_free.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %4, i8 0, i64 1024, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 960
  store i64 -1, ptr %i.b, align 8, !tbaa !1060
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1054
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@ma_sound_group_is_playing:bb.a
ma_sound_get_engine.exit.i:                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1051 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %ma_node_get_state.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %ma_sound_get_engine.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.f = load atomic i64, ptr %i.e seq_cst, align 8
  br label %ma_node_get_state.exit.i.i.i

ma_node_get_state.exit.i.i.i:                     ; preds = %bb.b, %ma_sound_get_engine.exit.i
  %.0.i.i.i = phi i64 [ %i.f, %bb.b ], [ 0, %ma_sound_get_engine.exit.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %ma_sound_is_playing.exit, label %ma_node_get_state_time.exit.i.i.i

ma_node_get_state_time.exit.i.i.i:                ; preds = %ma_node_get_state.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load atomic i64, ptr %i.j seq_cst, align 8
  %i.l = icmp ult i64 %i.k, %.0.i.i.i
  br i1 %i.l, label %ma_sound_is_playing.exit, label %ma_node_get_state_time.exit10.i.i.i

ma_node_get_state_time.exit10.i.i.i:              ; preds = %ma_node_get_state_time.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load atomic i64, ptr %i.m seq_cst, align 8
  %i.o = icmp ule i64 %i.n, %.0.i.i.i
  %i.p = zext i1 %i.o to i32
  br label %ma_sound_is_playing.exit

ma_sound_is_playing.exit:                         ; preds = %bb.a, %ma_node_get_state.exit.i.i.i, %ma_node_get_state_time.exit.i.i.i, %ma_node_get_state_time.exit10.i.i.i
  %.0.i = phi i32 [ 0, %bb.a ], [ 0, %ma_node_get_state.exit.i.i.i ], [ 0, %ma_node_get_state_time.exit.i.i.i ], [ %i.p, %ma_node_get_state_time.exit10.i.i.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define i64 @ma_sound_group_get_time_in_pcm_frames(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_sound_get_time_in_pcm_frames.exit, label %ma_node_get_time.exit.i

ma_node_get_time.exit.i:                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  br label %ma_sound_get_time_in_pcm_frames.exit

ma_sound_get_time_in_pcm_frames.exit:             ; preds = %bb.a, %ma_node_get_time.exit.i
  %.0.i = phi i64 [ %i.c, %ma_node_get_time.exit.i ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_dr_wav_version(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 14, ptr %1, align 4, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 5, ptr %2, align 4, !tbaa !118
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @ma_dr_wav_version_string() local_unnamed_addr #1 {
bb.a:
  ret ptr @.str.175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ma_dr_wav_fmt_get_format(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 4, !tbaa !1077   ; 2 uses
  %.not = icmp eq i16 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i16, ptr %i.c, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i16 [ %i.d, %bb.c ], [ 0, %bb.a ], [ %i.b, %bb.b ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i16 @ma_dr_wav_bytes_to_u16(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load i16, ptr %0, align 1
  ret i16 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ma_dr_wav_init_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3.i = or i1 %or.cond.i, %i.c
  br i1 %or.cond3.i, label %ma_dr_wav_preinit.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.d, i8 0, i64 400, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !673
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !674
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.f, align 8, !tbaa !675
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.g, align 8, !tbaa !676
  %.not.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i, label %.thread.i, label %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i

.thread.i:                                        ; preds = %bb.b
  %.sroa.5.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @ma_dr_wav__malloc_default, ptr %.sroa.5.0..sroa_idx36.i, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx37.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @ma_dr_wav__realloc_default, ptr %.sroa.6.0..sroa_idx37.i, align 8, !tbaa !134
  %.sroa.7.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @ma_dr_wav__free_default, ptr %.sroa.7.0..sroa_idx38.i, align 8, !tbaa !134
  br label %ma_dr_wav_preinit.exit

ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.6.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.6.0.copyload27.i = load ptr, ptr %.sroa.6.0..sroa_idx26.i, align 8, !tbaa !134 ; 2 uses
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.7.0.copyload29.i = load ptr, ptr %.sroa.7.0..sroa_idx28.i, align 8, !tbaa !134 ; 2 uses
  %.sroa.5.0.copyload25.i = load ptr, ptr %.sroa.5.0..sroa_idx24.i, align 8, !tbaa !134
  %i.i = load <2 x ptr>, ptr %8, align 8, !tbaa !134
  store <2 x ptr> %i.i, ptr %i.h, align 8, !tbaa !134
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0.copyload27.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !134
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0.copyload29.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !134
  %i.j = icmp eq ptr %.sroa.7.0.copyload29.i, null
  br i1 %i.j, label %ma_dr_wav_preinit.exit.thread, label %bb.c

bb.c:                                             ; preds = %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i
  %i.k = icmp eq ptr %.sroa.5.0.copyload25.i, null
  %i.l = icmp eq ptr %.sroa.6.0.copyload27.i, null
  %or.cond39.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond39.i, label %ma_dr_wav_preinit.exit.thread, label %ma_dr_wav_preinit.exit

ma_dr_wav_preinit.exit:                           ; preds = %bb.c, %.thread.i
  %i.m = tail call fastcc i32 @ma_dr_wav_init__internal(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %6, i32 noundef %7)
  br label %ma_dr_wav_preinit.exit.thread

ma_dr_wav_preinit.exit.thread:                    ; preds = %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i, %bb.c, %bb.a, %ma_dr_wav_preinit.exit
  %.0 = phi i32 [ %i.m, %ma_dr_wav_preinit.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %ma_dr_wav_copy_allocation_callbacks_or_defaults.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ma_dr_wav_init__internal(ptr nofree noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca i64, align 8                      ; 24 uses
  %i.e = alloca [4 x i8], align 1                 ; 13 uses
  %4 = alloca %struct.ma_dr_wav_fmt, align 4      ; 20 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %5 = alloca %struct.ma_dr_wav__metadata_parser, align 8 ; 14 uses
  %i.g = alloca [12 x i8], align 8                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [4 x i8], align 1                 ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [16 x i8], align 16               ; 5 uses
  %i.l = alloca [4 x i8], align 4                 ; 7 uses
  %i.m = alloca [4 x i8], align 1                 ; 10 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %6 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 7 uses
  %7 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 21 uses
  %i.o = alloca [16 x i8], align 16               ; 22 uses
  %i.p = alloca [2 x i8], align 2                 ; 7 uses
  %i.q = alloca [22 x i8], align 16               ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 6 uses
  %i.s = alloca [24 x i8], align 16               ; 15 uses
  %i.t = alloca [8 x i8], align 4                 ; 7 uses
  %8 = alloca %struct.ma_dr_wav_chunk_header, align 8 ; 10 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca [4096 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  store i64 0, ptr %i.f, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.w = trunc i32 %3 to i1                       ; 2 uses
  %i.x = and i32 %3, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !673
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 43 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ab = call i64 %i.y(ptr noundef %i.aa, ptr noundef nonnull %i.e, i64 noundef 4) #55, !inline_history !2818
  %.not = icmp eq i64 %i.ab, 4
  br i1 %.not, label %bb.b, label %ma_dr_wav_free.exit779

bb.b:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %i.e, align 1, !tbaa !119
  switch i8 %i.ac, label %ma_dr_wav_free.exit779 [
    i8 82, label %bb.c
    i8 114, label %bb.d
    i8 70, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !119 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 70
  %or.cond1022 = select i1 %i.af, i1 %i.ai, i1 false ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.ak = load i8, ptr %i.aj, align 1             ; 3 uses
  %.not1212 = icmp eq i8 %i.ak, 70
  %or.cond1240 = select i1 %or.cond1022, i1 %.not1212, i1 false
  br i1 %or.cond1240, label %.thread1552, label %.thread

.thread:                                          ; preds = %bb.c
  %.not1213 = icmp eq i8 %i.ak, 88
  %or.cond1243 = select i1 %or.cond1022, i1 %.not1213, i1 false
  br i1 %or.cond1243, label %.thread1552, label %.thread805

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !119
  %i.an = icmp eq i8 %i.am, 105
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 102
  %or.cond1030 = select i1 %i.an, i1 %i.aq, i1 false
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.as = load i8, ptr %i.ar, align 1
  %.not1211 = icmp eq i8 %i.as, 102
  %or.cond1246 = select i1 %or.cond1030, i1 %.not1211, i1 false
  br i1 %or.cond1246, label %bb.e, label %ma_dr_wav_free.exit779

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 2, ptr %i.at, align 8, !tbaa !683
  %i.au = load ptr, ptr %0, align 8, !tbaa !673
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.aw = call i64 %i.au(ptr noundef %i.av, ptr noundef nonnull %i.g, i64 noundef 12) #55, !inline_history !2818
  %.not468 = icmp eq i64 %i.aw, 12
  %i.ax = load <8 x i8>, ptr %i.g, align 8
  %.fr1828 = freeze <8 x i8> %i.ax
  %i.ay = icmp eq <8 x i8> %.fr1828, <i8 46, i8 -111, i8 -49, i8 17, i8 -91, i8 -42, i8 40, i8 -37> ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load <4 x i8>, ptr %i.az, align 8
  %.fr1829 = freeze <4 x i8> %i.ba
  %i.bb = icmp eq <4 x i8> %.fr1829, <i8 4, i8 -63, i8 0, i8 0>
  %i.bc = shufflevector <8 x i1> %i.ay, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1826 = and <4 x i1> %i.bc, %i.bb
  %i.bd = shufflevector <4 x i1> %rdx.op1826, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <8 x i1> %i.bd, <8 x i1> %i.ay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bf = bitcast <8 x i1> %i.be to i8
  %i.bg = icmp eq i8 %i.bf, -1
  %op.rdx1827 = select i1 %.not468, i1 %i.bg, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  br i1 %op.rdx1827, label %bb.g, label %ma_dr_wav_free.exit779

.thread805:                                       ; preds = %.thread
  %i.bh = icmp eq i8 %i.ae, 70
  %i.bi = icmp eq i8 %i.ah, 54
  %or.cond1034 = select i1 %i.bh, i1 %i.bi, i1 false
  %.not1214 = icmp eq i8 %i.ak, 52
  %or.cond1249 = select i1 %or.cond1034, i1 %.not1214, i1 false
  br i1 %or.cond1249, label %.thread1552, label %ma_dr_wav_free.exit779

bb.f:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !119
  %i.bl = icmp eq i8 %i.bk, 79
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 82
  %or.cond1038 = select i1 %i.bl, i1 %i.bo, i1 false
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.bq = load i8, ptr %i.bp, align 1
  %.not1210 = icmp eq i8 %i.bq, 77
  %or.cond1252 = select i1 %or.cond1038, i1 %.not1210, i1 false
  br i1 %or.cond1252, label %.thread1553, label %ma_dr_wav_free.exit779

.thread1553:                                      ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 4, ptr %i.br, align 8, !tbaa !683
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.o

.thread1552:                                      ; preds = %.thread805, %.thread, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %.thread ], [ 3, %.thread805 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink, ptr %i.bt, align 8, !tbaa !683
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.pre = load i32, ptr %i.at, align 8, !tbaa !683
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  switch i32 %.pre, label %ma_dr_wav_free.exit779 [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 3, label %bb.h
    i32 2, label %bb.l
    i32 4, label %bb.o
  ]

bb.h:                                             ; preds = %.thread1552, %bb.g, %bb.g, %bb.g
  %i.bw = phi ptr [ %i.bu, %.thread1552 ], [ %i.bv, %bb.g ], [ %i.bv, %bb.g ], [ %i.bv, %bb.g ] ; 2 uses
  %i.bx = phi i64 [ 4, %.thread1552 ], [ 16, %bb.g ], [ 16, %bb.g ], [ 16, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #55
  %i.by = load ptr, ptr %0, align 8, !tbaa !673
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ca = call i64 %i.by(ptr noundef %i.bz, ptr noundef nonnull %i.h, i64 noundef 4) #55, !inline_history !2818 ; 2 uses
  %i.cb = add i64 %i.bx, %i.ca
  %.not477 = icmp eq i64 %i.ca, 4
  br i1 %.not477, label %bb.i, label %.critedge537

bb.i:                                             ; preds = %bb.h
  %i.cc = load i32, ptr %i.bw, align 8, !tbaa !683
  switch i32 %i.cc, label %.critedge537 [
    i32 3, label %bb.j
    i32 1, label %ma_dr_wav_bytes_to_u32_ex.exit590
    i32 0, label %ma_dr_wav_bytes_to_u32_ex.exit590
  ]

bb.j:                                             ; preds = %bb.i
  %i.cd = load i32, ptr %i.h, align 4
  %.not478 = icmp eq i32 %i.cd, -1
  br i1 %.not478, label %ma_dr_wav_bytes_to_u32_ex.exit590, label %.critedge537

ma_dr_wav_bytes_to_u32_ex.exit590:                ; preds = %bb.i, %bb.i, %bb.j
  %i.ce = load ptr, ptr %0, align 8, !tbaa !673
  %i.cf = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.cg = call i64 %i.ce(ptr noundef %i.cf, ptr noundef nonnull %i.i, i64 noundef 4) #55, !inline_history !2818 ; 2 uses
  %i.ch = add i64 %i.cg, %i.cb                    ; 2 uses
  store i64 %i.ch, ptr %i.d, align 8, !tbaa !164
  %.not479 = icmp eq i64 %i.cg, 4
  br i1 %.not479, label %bb.k, label %.critedge537

bb.k:                                             ; preds = %ma_dr_wav_bytes_to_u32_ex.exit590
  %i.ci = load i8, ptr %i.i, align 1, !tbaa !119
  %i.cj = icmp eq i8 %i.ci, 87
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = icmp eq i8 %i.cl, 65
  %or.cond1042 = select i1 %i.cj, i1 %i.cm, i1 false
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 86
  %or.cond1046 = select i1 %or.cond1042, i1 %i.cp, i1 false
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.cr = load i8, ptr %i.cq, align 1
  %.fr = freeze i8 %i.cr
  %.not1217 = icmp eq i8 %.fr, 69
  %or.cond1255 = and i1 %or.cond1046, %.not1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #55
  br i1 %or.cond1255, label %.thread821, label %ma_dr_wav_free.exit779

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #55
  %i.cs = load ptr, ptr %0, align 8, !tbaa !673
  %i.ct = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.cu = call i64 %i.cs(ptr noundef %i.ct, ptr noundef nonnull %i.j, i64 noundef 8) #55, !inline_history !2818
  %.not474 = icmp ne i64 %i.cu, 8
  %i.cv = load i64, ptr %i.j, align 8
  %i.cw = icmp ult i64 %i.cv, 80
end_hunk_6
begin_hunk_7_@ma_dr_wav_init__internal:bb.a
  br i1 %or.cond1258, label %.thread830, label %.thread823

.thread830:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %.thread821

.thread823:                                       ; preds = %bb.s
  br i1 %or.cond1052, label %bb.t, label %.thread834

.thread827:                                       ; preds = %bb.q, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %ma_dr_wav_free.exit779

.thread834:                                       ; preds = %.thread823, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br label %ma_dr_wav_free.exit779

bb.t:                                             ; preds = %.thread823
  %.not1216.not = icmp eq i8 %i.dy, 67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #55
  br i1 %.not1216.not, label %.thread821, label %ma_dr_wav_free.exit779

.thread821:                                       ; preds = %bb.k, %.thread830, %bb.n, %bb.t
  %i.dz = phi ptr [ %i.dc, %.thread830 ], [ %i.bv, %bb.n ], [ %i.dc, %bb.t ], [ %i.bw, %bb.k ] ; 15 uses
  %i.ea = phi i64 [ %i.do, %.thread830 ], [ %i.da, %bb.n ], [ %i.do, %bb.t ], [ %i.ch, %bb.k ] ; 2 uses
  %.2405 = phi i1 [ true, %.thread830 ], [ true, %bb.n ], [ false, %bb.t ], [ true, %bb.k ] ; 3 uses
  %i.eb = load i32, ptr %i.dz, align 8, !tbaa !683 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 3
  br i1 %i.ec, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %.thread821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.ed = load ptr, ptr %0, align 8, !tbaa !673   ; 2 uses
  %i.ee = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  %i.ef = call i64 %i.ed(ptr noundef %i.ee, ptr noundef nonnull %6, i64 noundef 4) #55, !inline_history !2820
  %.not35.i = icmp eq i64 %i.ef, 4
  br i1 %.not35.i, label %bb.v, label %ma_dr_wav__read_chunk_header.exit

bb.v:                                             ; preds = %bb.u
  %i.eg = call i64 %i.ed(ptr noundef %i.ee, ptr noundef nonnull %i.c, i64 noundef 4) #55, !inline_history !2820
  %.not36.i = icmp eq i64 %i.eg, 4
  br i1 %.not36.i, label %bb.w, label %ma_dr_wav__read_chunk_header.exit

ma_dr_wav__read_chunk_header.exit:                ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %.thread849

bb.w:                                             ; preds = %bb.v
  %i.eh = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !1079
  %i.ek = and i32 %i.eh, 1                        ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !1080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  %i.em = load <4 x i8>, ptr %6, align 8
  %.fr1830 = freeze <4 x i8> %i.em
  %.fr1830.scalar = bitcast <4 x i8> %.fr1830 to i32
  %i.en = icmp eq i32 %.fr1830.scalar, 875983716
  br i1 %i.en, label %ma_dr_wav__seek_forward.exit, label %.thread849

ma_dr_wav__seek_forward.exit:                     ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !674
  %i.eq = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.er = call i32 %i.ep(ptr noundef %i.eq, i32 noundef 8, i32 noundef 1) #55, !inline_history !2819
  %.not10.i.not = icmp eq i32 %i.er, 0
  br i1 %.not10.i.not, label %.thread849, label %bb.x

bb.x:                                             ; preds = %ma_dr_wav__seek_forward.exit
  %i.es = load ptr, ptr %0, align 8, !tbaa !673
  %i.et = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.eu = call i64 %i.es(ptr noundef %i.et, ptr noundef nonnull %i.n, i64 noundef 8) #55, !inline_history !2818 ; 2 uses
  %.not484 = icmp eq i64 %i.eu, 8
  br i1 %.not484, label %bb.y, label %.thread849

bb.y:                                             ; preds = %bb.x
  %i.ev = add nsw i64 %i.ea, 16
  %i.ew = add nsw i64 %i.eu, %i.ev
  %i.ex = load i64, ptr %i.n, align 8
  %i.ey = load ptr, ptr %0, align 8, !tbaa !673
  %i.ez = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.fa = call i64 %i.ey(ptr noundef %i.ez, ptr noundef nonnull %i.n, i64 noundef 8) #55, !inline_history !2818 ; 2 uses
  %i.fb = add i64 %i.fa, %i.ew
  %.not485 = icmp eq i64 %i.fa, 8
  br i1 %.not485, label %bb.z, label %.thread849

bb.z:                                             ; preds = %bb.y
  %i.fc = zext nneg i32 %i.ek to i64
  %i.fd = add nsw i64 %i.ei, -24
  %i.fe = add nsw i64 %i.fd, %i.fc                ; 5 uses
  %i.ff = load i64, ptr %i.n, align 8
  store i64 %i.ff, ptr %i.f, align 8, !tbaa !164
  %i.fg = load ptr, ptr %i.eo, align 8, !tbaa !674 ; 2 uses
  %i.fh = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i = icmp eq i64 %i.fe, 0
  br i1 %.not12.i, label %ma_dr_wav__seek_forward.exit660.thread845, label %.lr.ph.i654.preheader

.lr.ph.i654.preheader:                            ; preds = %bb.z
  %i.fi = icmp ugt i64 %i.fe, 2147483647
  br i1 %i.fi, label %.lr.ph1386, label %ma_dr_wav__seek_forward.exit660

.lr.ph1386:                                       ; preds = %.lr.ph.i654.preheader, %.lr.ph.i654
  %.013.i6551385 = phi i64 [ %i.fk, %.lr.ph.i654 ], [ %i.fe, %.lr.ph.i654.preheader ]
  %i.fj = call i32 %i.fg(ptr noundef %i.fh, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i659 = icmp eq i32 %i.fj, 0
  br i1 %.not11.i659, label %.thread849, label %.lr.ph.i654

.lr.ph.i654:                                      ; preds = %.lr.ph1386
  %i.fk = add i64 %.013.i6551385, -2147483647     ; 3 uses
  %i.fl = icmp ugt i64 %i.fk, 2147483647
  br i1 %i.fl, label %.lr.ph1386, label %ma_dr_wav__seek_forward.exit660

ma_dr_wav__seek_forward.exit660:                  ; preds = %.lr.ph.i654, %.lr.ph.i654.preheader
  %.013.i655.lcssa = phi i64 [ %i.fe, %.lr.ph.i654.preheader ], [ %i.fk, %.lr.ph.i654 ]
  %i.fm = trunc nuw nsw i64 %.013.i655.lcssa to i32
  %i.fn = call i32 %i.fg(ptr noundef %i.fh, i32 noundef %i.fm, i32 noundef 1) #55, !inline_history !2819
  %.not10.i656.not = icmp eq i32 %i.fn, 0
  br i1 %.not10.i656.not, label %.thread849, label %ma_dr_wav__seek_forward.exit660.thread845

.thread849:                                       ; preds = %.lr.ph1386, %ma_dr_wav__read_chunk_header.exit, %ma_dr_wav__seek_forward.exit, %bb.x, %bb.y, %ma_dr_wav__seek_forward.exit660, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #55
  br label %ma_dr_wav_free.exit779

ma_dr_wav__seek_forward.exit660.thread845:        ; preds = %bb.z, %ma_dr_wav__seek_forward.exit660
  %i.fo = add i64 %i.fb, %i.fe                    ; 2 uses
  store i64 %i.fo, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #55
  %.pr = load i32, ptr %i.dz, align 8, !tbaa !683
  br label %bb.aa

bb.aa:                                            ; preds = %ma_dr_wav__seek_forward.exit660.thread845, %.thread821
  %i.fp = phi i64 [ %i.fo, %ma_dr_wav__seek_forward.exit660.thread845 ], [ %i.ea, %.thread821 ] ; 2 uses
  %i.fq = phi i32 [ %.pr, %ma_dr_wav__seek_forward.exit660.thread845 ], [ %i.eb, %.thread821 ] ; 2 uses
  %.1412 = phi i64 [ %i.ex, %ma_dr_wav__seek_forward.exit660.thread845 ], [ 0, %.thread821 ]
  switch i32 %i.fq, label %.thread852 [
    i32 0, label %bb.ab
    i32 3, label %bb.ab
  ]

.thread852:                                       ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.fr = and i32 %3, 3
  %i.fs = icmp eq i32 %i.fr, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  br i1 %i.fs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load ptr, ptr %0, align 8, !tbaa !673
  store ptr %i.ft, ptr %5, align 8, !tbaa !1082
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !674
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !1083
  %i.fx = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !1084
  br label %bb.ad

bb.ad:                                            ; preds = %.thread852, %bb.ac, %bb.ab
  %.0410.shrunk854 = phi i1 [ false, %.thread852 ], [ true, %bb.ac ], [ false, %bb.ab ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 8 uses
  %i.gb = icmp eq i32 %i.x, 0                     ; 2 uses
  %i.gc = icmp ne ptr %1, null
  %or.cond = and i1 %i.gc, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 2 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 3 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.s, i64 6 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  %i.gm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.go = getelementptr inbounds nuw i8, ptr %i.s, i64 19 ; 9 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 9 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.s, i64 21 ; 9 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 405
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 7 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 11
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 15
  %or.cond13 = and i1 %i.gb, %.0410.shrunk854
  %i.hc = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.he = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.hf = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.o, i64 7
  %i.hh = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.hi = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.o, i64 11
  %i.hl = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.hm = getelementptr inbounds nuw i8, ptr %i.o, i64 9
  %i.hn = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.o, i64 13
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 14 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  br label %bb.ae

bb.ae:                                            ; preds = %.backedge, %bb.ad
  %i.hz = phi i64 [ %i.fp, %bb.ad ], [ %i.wv, %.backedge ] ; 2 uses
  %i.ia = phi i32 [ %i.fq, %bb.ad ], [ %.pre1479, %.backedge ] ; 2 uses
  %.2413 = phi i64 [ %.1412, %bb.ad ], [ %.6417.jt6, %.backedge ] ; 14 uses
  %.0408 = phi i8 [ 0, %bb.ad ], [ %.1409.jt6, %.backedge ] ; 17 uses
  %.0406 = phi i8 [ 0, %bb.ad ], [ %.1407.jt6, %.backedge ] ; 13 uses
  %.0400 = phi i64 [ 0, %bb.ad ], [ %.2402.jt6, %.backedge ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #55
  %i.ib = load ptr, ptr %0, align 8, !tbaa !673   ; 4 uses
  %i.ic = load ptr, ptr %i.z, align 8, !tbaa !676 ; 4 uses
  switch i32 %i.ia, label %.loopexit1323 [
    i32 4, label %bb.af
    i32 3, label %bb.af
    i32 1, label %bb.af
    i32 0, label %bb.af
    i32 2, label %bb.al
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.id = call i64 %i.ib(ptr noundef %i.ic, ptr noundef nonnull %7, i64 noundef 4) #55, !inline_history !2820
  %.not35.i666 = icmp eq i64 %i.id, 4
  br i1 %.not35.i666, label %bb.ag, label %.thread.i667

bb.ag:                                            ; preds = %bb.af
  %i.ie = call i64 %i.ib(ptr noundef %i.ic, ptr noundef nonnull %i.a, i64 noundef 4) #55, !inline_history !2820
  %.not36.i669 = icmp eq i64 %i.ie, 4
  br i1 %.not36.i669, label %bb.ah, label %.thread.i667

bb.ah:                                            ; preds = %bb.ag
  switch i32 %i.ia, label %bb.aj [
    i32 4, label %bb.ai
    i32 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.if = load i32, ptr %i.a, align 4
  %i.ig = call i32 @llvm.bswap.i32(i32 %i.if)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ih = load i32, ptr %i.a, align 4
  br label %bb.ak

.thread.i667:                                     ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %.loopexit1323

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.i.i670 = phi i32 [ %i.ig, %bb.ai ], [ %i.ih, %bb.aj ] ; 2 uses
  %i.ii = zext i32 %.0.i.i670 to i64              ; 2 uses
  store i64 %i.ii, ptr %i.fz, align 8, !tbaa !1079
  %i.ij = and i32 %.0.i.i670, 1
  store i32 %i.ij, ptr %i.ga, align 8, !tbaa !1080
  %i.ik = add i64 %i.hz, 8                        ; 2 uses
  store i64 %i.ik, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %ma_dr_wav__read_chunk_header.exit671

bb.al:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.il = call i64 %i.ib(ptr noundef %i.ic, ptr noundef nonnull %7, i64 noundef 16) #55, !inline_history !2820
  %.not.i661 = icmp eq i64 %i.il, 16
  br i1 %.not.i661, label %bb.am, label %.thread40.i662

bb.am:                                            ; preds = %bb.al
  %i.im = call i64 %i.ib(ptr noundef %i.ic, ptr noundef nonnull %i.b, i64 noundef 8) #55, !inline_history !2820
  %.not34.i665 = icmp eq i64 %i.im, 8
  br i1 %.not34.i665, label %bb.an, label %.thread40.i662

.thread40.i662:                                   ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %.loopexit1323

bb.an:                                            ; preds = %bb.am
  %i.in = load i64, ptr %i.b, align 8             ; 2 uses
  %i.io = add i64 %i.in, -24                      ; 2 uses
  store i64 %i.io, ptr %i.fz, align 8, !tbaa !1079
  %i.ip = trunc i64 %i.in to i32
  %i.iq = and i32 %i.ip, 7
  store i32 %i.iq, ptr %i.ga, align 8, !tbaa !1080
  %i.ir = add i64 %i.hz, 24                       ; 2 uses
  store i64 %i.ir, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  br label %ma_dr_wav__read_chunk_header.exit671

ma_dr_wav__read_chunk_header.exit671:             ; preds = %bb.an, %bb.ak
  %i.is = phi i64 [ %i.io, %bb.an ], [ %i.ii, %bb.ak ] ; 9 uses
  %i.it = phi i64 [ %i.ir, %bb.an ], [ %i.ik, %bb.ak ] ; 14 uses
  br i1 %or.cond, label %bb.ao, label %.critedge542

bb.ao:                                            ; preds = %ma_dr_wav__read_chunk_header.exit671
  %i.iu = load ptr, ptr %0, align 8, !tbaa !673
  %i.iv = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.iw = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ix = load i32, ptr %i.dz, align 8, !tbaa !683
  %i.iy = call i64 %1(ptr noundef %2, ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef %i.iw, ptr noundef nonnull %7, i32 noundef %i.ix, ptr noundef nonnull %4) #55
  %.not490 = icmp eq i64 %i.iy, 0
  br i1 %.not490, label %.critedge542, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iz = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 3 uses
  %i.ja = load ptr, ptr %i.z, align 8, !tbaa !676 ; 3 uses
  %i.jb = icmp ult i64 %i.it, 2147483648
  br i1 %i.jb, label %ma_dr_wav__seek_from_start.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jc = call i32 %i.iz(ptr noundef %i.ja, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !2821
  %.not.i672 = icmp eq i32 %i.jc, 0
  br i1 %.not.i672, label %.thread988, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.aq
  %.014.i1817 = add i64 %i.it, -2147483647        ; 3 uses
  %i.jd = icmp ult i64 %.014.i1817, 2147483648
  br i1 %i.jd, label %ma_dr_wav__seek_from_start.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %.014.i = add i64 %.014.i1818, -2147483647      ; 3 uses
  %i.je = icmp ult i64 %.014.i, 2147483648
  br i1 %i.je, label %ma_dr_wav__seek_from_start.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.014.i1818 = phi i64 [ %.014.i, %.preheader.i ], [ %.014.i1817, %.preheader.i.preheader ]
  %i.jf = call i32 %i.iz(ptr noundef %i.ja, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2821
  %.not16.i = icmp eq i32 %i.jf, 0
  br i1 %.not16.i, label %.thread988, label %.preheader.i

ma_dr_wav__seek_from_start.exit:                  ; preds = %.preheader.i, %.preheader.i.preheader, %bb.ap
  %.014.lcssa.sink.i = phi i64 [ %i.it, %bb.ap ], [ %.014.i1817, %.preheader.i.preheader ], [ %.014.i, %.preheader.i ]
  %.sink21.i = phi i32 [ 0, %bb.ap ], [ 1, %.preheader.i.preheader ], [ 1, %.preheader.i ]
  %i.jg = trunc nuw nsw i64 %.014.lcssa.sink.i to i32
  %i.jh = call i32 %i.iz(ptr noundef %i.ja, i32 noundef %i.jg, i32 noundef %.sink21.i) #55, !inline_history !2821
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %.thread988, label %.critedge542

.critedge542:                                     ; preds = %bb.ao, %ma_dr_wav__seek_from_start.exit, %ma_dr_wav__read_chunk_header.exit671
  %i.jj = load i32, ptr %i.dz, align 8, !tbaa !683 ; 5 uses
  switch i32 %i.jj, label %ma_dr_wav_fourcc_equal.exit713.thread [
    i32 0, label %bb.ar
    i32 1, label %bb.ar
    i32 3, label %bb.ar
    i32 2, label %.critedge542._crit_edge1484
    i32 4, label %.critedge542._crit_edge
  ]

.critedge542._crit_edge1484:                      ; preds = %.critedge542
  %.pre1485 = load i8, ptr %7, align 8, !tbaa !119
  %.pre1486.pre = load i8, ptr %i.ge, align 1
  %.pre1487.pre = load i8, ptr %i.gf, align 2
  %.pre1488.pre = load i8, ptr %i.gg, align 1
  br label %bb.as

.critedge542._crit_edge:                          ; preds = %.critedge542
  %.pre1480 = load i8, ptr %7, align 8, !tbaa !119 ; 2 uses
  %.pre1481 = load i8, ptr %i.ge, align 1         ; 2 uses
  %.pre1482 = load i8, ptr %i.gf, align 2         ; 2 uses
  %.pre1483 = load i8, ptr %i.gg, align 1         ; 2 uses
  %i.jk = icmp eq i8 %.pre1480, 67
  %i.jl = icmp eq i8 %.pre1481, 79
  %or.cond1146 = select i1 %i.jk, i1 %i.jl, i1 false
  %i.jm = icmp eq i8 %.pre1482, 77
  %or.cond1150 = select i1 %or.cond1146, i1 %i.jm, i1 false
  %.not1221 = icmp eq i8 %.pre1483, 77
  %or.cond1279 = select i1 %or.cond1150, i1 %.not1221, i1 false
  br i1 %or.cond1279, label %bb.cc, label %.thread964

bb.ar:                                            ; preds = %.critedge542, %.critedge542, %.critedge542
  %i.jn = load i8, ptr %7, align 8, !tbaa !119    ; 3 uses
  %i.jo = icmp eq i8 %i.jn, 102                   ; 2 uses
  %i.jp = load i8, ptr %i.ge, align 1             ; 3 uses
  %i.jq = icmp eq i8 %i.jp, 109
  %or.cond1068 = select i1 %i.jo, i1 %i.jq, i1 false
  %i.jr = load i8, ptr %i.gf, align 2             ; 3 uses
  %i.js = icmp eq i8 %i.jr, 116                   ; 2 uses
  %or.cond1072 = select i1 %or.cond1068, i1 %i.js, i1 false
  %i.jt = load i8, ptr %i.gg, align 1             ; 4 uses
  %.not1219 = icmp eq i8 %i.jt, 32
  %or.cond1264 = select i1 %or.cond1072, i1 %.not1219, i1 false
  br i1 %or.cond1264, label %bb.au, label %ma_dr_wav_fourcc_equal.exit674.thread

ma_dr_wav_fourcc_equal.exit674.thread:            ; preds = %bb.ar
  %i.ju = icmp eq i32 %i.jj, 2
  br i1 %i.ju, label %bb.as, label %bb.bp

bb.as:                                            ; preds = %ma_dr_wav_fourcc_equal.exit674.thread, %.critedge542._crit_edge1484
  %.pre1488 = phi i8 [ %.pre1488.pre, %.critedge542._crit_edge1484 ], [ %i.jt, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1487 = phi i8 [ %.pre1487.pre, %.critedge542._crit_edge1484 ], [ %i.jr, %ma_dr_wav_fourcc_equal.exit674.thread ]
  %.pre1486 = phi i8 [ %.pre1486.pre, %.critedge542._crit_edge1484 ], [ %i.jp, %ma_dr_wav_fourcc_equal.exit674.thread ]
  %.pr1009 = phi i8 [ %.pre1485, %.critedge542._crit_edge1484 ], [ %i.jn, %ma_dr_wav_fourcc_equal.exit674.thread ] ; 2 uses
  %.pre1486.fr = freeze i8 %.pre1486              ; 2 uses
  %.pre1487.fr = freeze i8 %.pre1487              ; 2 uses
  %.not.i675 = icmp eq i8 %.pr1009, 102
  %9 = load <8 x i8>, ptr %i.gz, align 4
  %i.jv = load <4 x i8>, ptr %i.ha, align 1
  %.fr1832 = freeze <4 x i8> %i.jv                ; 2 uses
  %.pre1500 = load i8, ptr %i.hb, align 1         ; 2 uses
  br i1 %.not.i675, label %bb.at, label %ma_dr_wav_guid_equal.exit.thread

bb.at:                                            ; preds = %bb.as
  %10 = load <8 x i8>, ptr %i.gz, align 4
  %.not.1.i = icmp eq i8 %.pre1486.fr, 109
  %.not.2.i = icmp eq i8 %.pre1487.fr, 116
  %11 = insertelement <8 x i8> poison, i8 %.pre1488, i64 0
  %12 = shufflevector <8 x i8> %11, <8 x i8> %10, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %.fr1831 = freeze <8 x i8> %12
  %i.jw = icmp eq <8 x i8> %.fr1831, <i8 32, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.jx = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i.not = icmp eq i8 %.pre1500, -118
  %i.jy = shufflevector <8 x i1> %i.jw, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1822 = and <4 x i1> %i.jy, %i.jx
  %i.jz = shufflevector <4 x i1> %rdx.op1822, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %.fr1948 = freeze <8 x i1> %i.jz
  %i.ka = shufflevector <8 x i1> %.fr1948, <8 x i1> %i.jw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.kb = bitcast <8 x i1> %i.ka to i8
  %i.kc = icmp eq i8 %i.kb, -1
  %op.rdx1823 = and i1 %.not.1.i, %i.kc
  %i.kd = and i1 %op.rdx1823, %.not.2.i
  %op.rdx1825 = select i1 %i.kd, i1 %.not.15.i.not, i1 false
  br i1 %op.rdx1825, label %bb.au, label %ma_dr_wav_guid_equal.exit.thread

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #55
  %i.ke = load ptr, ptr %0, align 8, !tbaa !673
  %i.kf = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.kg = call i64 %i.ke(ptr noundef %i.kf, ptr noundef nonnull %i.o, i64 noundef 16) #55
  %.not519 = icmp eq i64 %i.kg, 16
  br i1 %.not519, label %bb.av, label %ma_dr_wav__seek_forward.exit684.thread.jt1

bb.av:                                            ; preds = %bb.au
  %i.kh = add i64 %i.it, 16                       ; 2 uses
  store i64 %i.kh, ptr %i.d, align 8, !tbaa !164
  %i.ki = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.ki, label %bb.ax [
    i32 4, label %bb.aw
    i32 1, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.kj = load i8, ptr %i.hc, align 1, !tbaa !119
  %i.kk = zext i8 %i.kj to i16
  %i.kl = load i8, ptr %i.o, align 16, !tbaa !119
  %i.km = zext i8 %i.kl to i16
  %i.kn = shl nuw i16 %i.km, 8
  %i.ko = or disjoint i16 %i.kn, %i.kk
  store i16 %i.ko, ptr %4, align 4, !tbaa !1077
  %i.kp = load i8, ptr %i.he, align 1, !tbaa !119
  %i.kq = zext i8 %i.kp to i16
  %i.kr = load i8, ptr %i.hd, align 2, !tbaa !119
  %i.ks = zext i8 %i.kr to i16
  %i.kt = shl nuw i16 %i.ks, 8
  %i.ku = or disjoint i16 %i.kt, %i.kq
  store i16 %i.ku, ptr %i.gt, align 2, !tbaa !2822
  %i.kv = load i8, ptr %i.hg, align 1, !tbaa !119
  %i.kw = zext i8 %i.kv to i32
  %i.kx = load i8, ptr %i.hh, align 2, !tbaa !119
  %i.ky = zext i8 %i.kx to i32
  %i.kz = shl nuw nsw i32 %i.ky, 8
  %i.la = or disjoint i32 %i.kz, %i.kw
  %i.lb = load i8, ptr %i.hi, align 1, !tbaa !119
  %i.lc = zext i8 %i.lb to i32
  %i.ld = shl nuw nsw i32 %i.lc, 16
  %i.le = or disjoint i32 %i.la, %i.ld
  %i.lf = load i8, ptr %i.hf, align 4, !tbaa !119
  %i.lg = zext i8 %i.lf to i32
  %i.lh = shl nuw i32 %i.lg, 24
  %i.li = or disjoint i32 %i.le, %i.lh
  store i32 %i.li, ptr %i.gu, align 4, !tbaa !2823
  %i.lj = load i8, ptr %i.hk, align 1, !tbaa !119
  %i.lk = zext i8 %i.lj to i32
  %i.ll = load i8, ptr %i.hl, align 2, !tbaa !119
  %i.lm = zext i8 %i.ll to i32
  %i.ln = shl nuw nsw i32 %i.lm, 8
  %i.lo = or disjoint i32 %i.ln, %i.lk
  %i.lp = load i8, ptr %i.hm, align 1, !tbaa !119
  %i.lq = zext i8 %i.lp to i32
  %i.lr = shl nuw nsw i32 %i.lq, 16
  %i.ls = or disjoint i32 %i.lo, %i.lr
  %i.lt = load i8, ptr %i.hj, align 8, !tbaa !119
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw i32 %i.lu, 24
  %i.lw = or disjoint i32 %i.ls, %i.lv
  store i32 %i.lw, ptr %i.gx, align 4, !tbaa !2824
  %i.lx = load i8, ptr %i.ho, align 1, !tbaa !119
  %i.ly = zext i8 %i.lx to i16
  %i.lz = load i8, ptr %i.hn, align 4, !tbaa !119
  %i.ma = zext i8 %i.lz to i16
  %i.mb = shl nuw i16 %i.ma, 8
  %i.mc = or disjoint i16 %i.mb, %i.ly
  store i16 %i.mc, ptr %i.gw, align 4, !tbaa !2825
  %i.md = load i8, ptr %i.hq, align 1, !tbaa !119
  %i.me = zext i8 %i.md to i16
  %i.mf = load i8, ptr %i.hp, align 2, !tbaa !119
  %i.mg = zext i8 %i.mf to i16
  %i.mh = shl nuw i16 %i.mg, 8
  %i.mi = or disjoint i16 %i.mh, %i.me
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

bb.ax:                                            ; preds = %bb.av
  %i.mj = load <2 x i16>, ptr %i.o, align 16
  store <2 x i16> %i.mj, ptr %4, align 4, !tbaa !122
  %i.mk = load <2 x i32>, ptr %i.hf, align 4
  store <2 x i32> %i.mk, ptr %i.gu, align 4, !tbaa !118
  %i.ml = load i16, ptr %i.hn, align 4
  store i16 %i.ml, ptr %i.gw, align 4, !tbaa !2825
  %i.mm = load i16, ptr %i.hp, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit625

ma_dr_wav_bytes_to_u16_ex.exit625:                ; preds = %bb.aw, %bb.ax
  %.0.i624 = phi i16 [ %i.mi, %bb.aw ], [ %i.mm, %bb.ax ]
  store i16 %.0.i624, ptr %i.gv, align 2, !tbaa !2826
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.hr, i8 0, i64 24, i1 false)
  %i.mn = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.mo = icmp ugt i64 %i.mn, 16
  br i1 %i.mo, label %bb.ay, label %bb.bm

bb.ay:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #55
  %i.mp = load ptr, ptr %0, align 8, !tbaa !673
  %i.mq = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.mr = call i64 %i.mp(ptr noundef %i.mq, ptr noundef nonnull %i.p, i64 noundef 2) #55
  %.not520 = icmp eq i64 %i.mr, 2
  br i1 %.not520, label %bb.az, label %.critedge546

bb.az:                                            ; preds = %bb.ay
  %i.ms = add i64 %i.it, 18                       ; 2 uses
  %i.mt = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.mt, label %bb.bb [
    i32 4, label %bb.ba
    i32 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.mu = load i8, ptr %i.hv, align 1, !tbaa !119
  %i.mv = zext i8 %i.mu to i16
  %i.mw = load i8, ptr %i.p, align 2, !tbaa !119
  %i.mx = zext i8 %i.mw to i16
  %i.my = shl nuw i16 %i.mx, 8
  %i.mz = or disjoint i16 %i.my, %i.mv
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

bb.bb:                                            ; preds = %bb.az
  %i.na = load i16, ptr %i.p, align 2
  br label %ma_dr_wav_bytes_to_u16_ex.exit619

ma_dr_wav_bytes_to_u16_ex.exit619:                ; preds = %bb.ba, %bb.bb
  %.0.i618 = phi i16 [ %i.mz, %bb.ba ], [ %i.na, %bb.bb ] ; 5 uses
  store i16 %.0.i618, ptr %i.hr, align 4, !tbaa !2827
  %i.nb = zext i16 %.0.i618 to i32
  %.not521 = icmp eq i16 %.0.i618, 0
  br i1 %.not521, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.nc = load i16, ptr %4, align 4, !tbaa !1077
  %i.nd = icmp eq i16 %i.nc, -2                   ; 2 uses
  %i.ne = icmp ne i16 %.0.i618, 22
  %or.cond53 = and i1 %i.ne, %i.nd
  br i1 %or.cond53, label %.critedge546, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.nd, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #55
  %i.nf = load ptr, ptr %0, align 8, !tbaa !673
  %i.ng = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.nh = zext i16 %.0.i618 to i64
  %i.ni = call i64 %i.nf(ptr noundef %i.ng, ptr noundef nonnull %i.q, i64 noundef %i.nh) #55
  %i.nj = load i16, ptr %i.hr, align 4, !tbaa !2827
  %i.nk = zext i16 %i.nj to i64                   ; 2 uses
  %.not522 = icmp eq i64 %i.ni, %i.nk
  br i1 %.not522, label %bb.bf, label %.critedge544

bb.bf:                                            ; preds = %bb.be
  %i.nl = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.nl, label %bb.bh [
    i32 4, label %bb.bg
    i32 1, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.nm = load i8, ptr %i.hw, align 1, !tbaa !119
  %i.nn = zext i8 %i.nm to i16
  %i.no = load i8, ptr %i.q, align 16, !tbaa !119
  %i.np = zext i8 %i.no to i16
  %i.nq = shl nuw i16 %i.np, 8
  %i.nr = or disjoint i16 %i.nq, %i.nn
  store i16 %i.nr, ptr %i.hs, align 2, !tbaa !2828
  %i.ns = load i32, ptr %i.hx, align 2
  %i.nt = call i32 @llvm.bswap.i32(i32 %i.ns)
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

bb.bh:                                            ; preds = %bb.bf
  %i.nu = load i16, ptr %i.q, align 16
  store i16 %i.nu, ptr %i.hs, align 2, !tbaa !2828
  %i.nv = load i32, ptr %i.hx, align 2
  br label %ma_dr_wav_bytes_to_u32_ex.exit572

ma_dr_wav_bytes_to_u32_ex.exit572:                ; preds = %bb.bg, %bb.bh
  %.0.i571 = phi i32 [ %i.nt, %bb.bg ], [ %i.nv, %bb.bh ]
  store i32 %.0.i571, ptr %i.ht, align 4, !tbaa !2829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hu, ptr noundef nonnull align 2 dereferenceable(16) %i.hy, i64 16, i1 false), !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.nw = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.nx = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.ny = call i32 %i.nw(ptr noundef %i.nx, i32 noundef %i.nb, i32 noundef 1) #55
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %.critedge546, label %._crit_edge1501

._crit_edge1501:                                  ; preds = %bb.bi
  %.pre1502 = load i16, ptr %i.hr, align 4, !tbaa !2827
  %.pre1507 = zext i16 %.pre1502 to i64
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge1501, %ma_dr_wav_bytes_to_u32_ex.exit572
  %.pre-phi = phi i64 [ %.pre1507, %._crit_edge1501 ], [ %i.nk, %ma_dr_wav_bytes_to_u32_ex.exit572 ] ; 2 uses
  %i.oa = add i64 %i.ms, %.pre-phi
  %i.ob = add nuw nsw i64 %.pre-phi, 18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %ma_dr_wav_bytes_to_u16_ex.exit619
  %i.oc = phi i64 [ %i.oa, %bb.bj ], [ %i.ms, %ma_dr_wav_bytes_to_u16_ex.exit619 ]
  %.0393 = phi i64 [ %i.ob, %bb.bj ], [ 18, %ma_dr_wav_bytes_to_u16_ex.exit619 ] ; 2 uses
  %i.od = load ptr, ptr %i.gd, align 8, !tbaa !674
  %i.oe = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.of = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.og = sub i64 %i.of, %.0393
  %i.oh = trunc i64 %i.og to i32
  %i.oi = call i32 %i.od(ptr noundef %i.oe, i32 noundef %i.oh, i32 noundef 1) #55
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %.critedge546, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ok = load i64, ptr %i.fz, align 8, !tbaa !1079
  %i.ol = sub i64 %i.ok, %.0393
  %i.om = add i64 %i.ol, %i.oc                    ; 2 uses
  store i64 %i.om, ptr %i.d, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %bb.bm

.critedge544:                                     ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #55
  br label %.critedge546

bb.bm:                                            ; preds = %bb.bl, %ma_dr_wav_bytes_to_u16_ex.exit625
  %i.on = phi i64 [ %i.om, %bb.bl ], [ %i.kh, %ma_dr_wav_bytes_to_u16_ex.exit625 ] ; 2 uses
  %i.oo = load i32, ptr %i.ga, align 8, !tbaa !1080 ; 4 uses
  %.not523 = icmp eq i32 %i.oo, 0
  br i1 %.not523, label %ma_dr_wav__seek_forward.exit684.thread.jt6, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.op = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.oq = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %i.or = icmp slt i32 %i.oo, 0
  br i1 %i.or, label %.lr.ph1405.preheader, label %ma_dr_wav__seek_forward.exit684

.lr.ph1405.preheader:                             ; preds = %bb.bn
  %i.os = zext i32 %i.oo to i64
  br label %.lr.ph1405

.lr.ph1405:                                       ; preds = %.lr.ph1405.preheader, %.lr.ph.i678
  %.013.i6791404 = phi i64 [ %i.ou, %.lr.ph.i678 ], [ %i.os, %.lr.ph1405.preheader ]
  %i.ot = call i32 %i.op(ptr noundef %i.oq, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i683 = icmp eq i32 %i.ot, 0
  br i1 %.not11.i683, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %.lr.ph.i678

.lr.ph.i678:                                      ; preds = %.lr.ph1405
  %i.ou = add i64 %.013.i6791404, -2147483647     ; 3 uses
  %i.ov = icmp ugt i64 %i.ou, 2147483647
  br i1 %i.ov, label %.lr.ph1405, label %ma_dr_wav__seek_forward.exit684.loopexit

ma_dr_wav__seek_forward.exit684.loopexit:         ; preds = %.lr.ph.i678
  %i.ow = trunc nuw nsw i64 %i.ou to i32
  br label %ma_dr_wav__seek_forward.exit684

ma_dr_wav__seek_forward.exit684:                  ; preds = %ma_dr_wav__seek_forward.exit684.loopexit, %bb.bn
  %.013.i679.lcssa = phi i32 [ %i.oo, %bb.bn ], [ %i.ow, %ma_dr_wav__seek_forward.exit684.loopexit ]
  %i.ox = call i32 %i.op(ptr noundef %i.oq, i32 noundef %.013.i679.lcssa, i32 noundef 1) #55, !inline_history !2819
  %.not10.i680.not = icmp eq i32 %i.ox, 0
  br i1 %.not10.i680.not, label %ma_dr_wav__seek_forward.exit684.thread.jt5, label %bb.bo

bb.bo:                                            ; preds = %ma_dr_wav__seek_forward.exit684
  %i.oy = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.oz = zext i32 %i.oy to i64
  %i.pa = add i64 %i.on, %i.oz                    ; 2 uses
  store i64 %i.pa, ptr %i.d, align 8, !tbaa !164
  br label %ma_dr_wav__seek_forward.exit684.thread.jt6

.critedge546:                                     ; preds = %bb.bk, %bb.bc, %bb.bi, %bb.ay, %.critedge544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #55
  br label %ma_dr_wav__seek_forward.exit684.thread.jt1

ma_dr_wav__seek_forward.exit684.thread.jt6:       ; preds = %bb.bm, %bb.bo
  %i.pb = phi i64 [ %i.pa, %bb.bo ], [ %i.on, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.backedge

ma_dr_wav__seek_forward.exit684.thread.jt5:       ; preds = %ma_dr_wav__seek_forward.exit684, %.lr.ph1405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %.loopexit1323

ma_dr_wav__seek_forward.exit684.thread.jt1:       ; preds = %bb.au, %.critedge546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #55
  br label %bb.dj

bb.bp:                                            ; preds = %ma_dr_wav_fourcc_equal.exit674.thread
  %i.pc = icmp eq i8 %i.jn, 100
  %i.pd = icmp eq i8 %i.jp, 97                    ; 2 uses
  %or.cond1102 = select i1 %i.pc, i1 %i.pd, i1 false
  %or.cond1106 = select i1 %or.cond1102, i1 %i.js, i1 false
  %.not1220 = icmp eq i8 %i.jt, 97
  %or.cond1270 = select i1 %or.cond1106, i1 %.not1220, i1 false
  br i1 %or.cond1270, label %bb.bq, label %ma_dr_wav_fourcc_equal.exit685.thread

ma_dr_wav_guid_equal.exit.thread:                 ; preds = %bb.at, %bb.as
  %.not.i686 = icmp eq i8 %.pr1009, 100
  %.not.1.i688 = icmp eq i8 %.pre1486.fr, 97
  %.not.2.i689 = icmp eq i8 %.pre1487.fr, 116
  %13 = insertelement <8 x i8> poison, i8 %.pre1488, i64 0
  %14 = shufflevector <8 x i8> %13, <8 x i8> %9, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %.fr1833 = freeze <8 x i8> %14
  %i.pe = icmp eq <8 x i8> %.fr1833, <i8 97, i8 -13, i8 -84, i8 -45, i8 17, i8 -116, i8 -47, i8 0> ; 2 uses
  %i.pf = icmp eq <4 x i8> %.fr1832, <i8 -64, i8 79, i8 -114, i8 -37>
  %.not.15.i702.not = icmp eq i8 %.pre1500, -118
  %i.pg = shufflevector <8 x i1> %i.pe, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.pg, %i.pf
  %i.ph = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pi = shufflevector <8 x i1> %i.ph, <8 x i1> %i.pe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.pj = bitcast <8 x i1> %i.pi to i8
  %i.pk = icmp eq i8 %i.pj, -1
  %op.rdx = select i1 %.not.i686, i1 %i.pk, i1 false
  %op.rdx1819 = and i1 %.not.1.i688, %.not.2.i689
  %i.pl = freeze i1 %op.rdx
  %op.rdx1820 = and i1 %i.pl, %op.rdx1819
  %op.rdx1821 = select i1 %op.rdx1820, i1 %.not.15.i702.not, i1 false
  br i1 %op.rdx1821, label %bb.bq, label %ma_dr_wav_guid_equal.exit704.thread

bb.bq:                                            ; preds = %ma_dr_wav_guid_equal.exit.thread, %bb.bp
  store i64 %i.it, ptr %i.gh, align 8, !tbaa !688
  %.not518 = icmp eq i32 %i.jj, 3
  %spec.select = select i1 %.not518, i64 %.2413, i64 %i.is ; 4 uses
  br i1 %or.cond13, label %bb.br, label %.loopexit1323

bb.br:                                            ; preds = %bb.bq
  %i.pm = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.pn = zext i32 %i.pm to i64
  %i.po = add i64 %i.is, %i.pn                    ; 5 uses
  %i.pp = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.pq = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i705 = icmp eq i64 %i.po, 0
  br i1 %.not12.i705, label %ma_dr_wav__seek_forward.exit712.thread876, label %.lr.ph.i706.preheader

.lr.ph.i706.preheader:                            ; preds = %bb.br
  %i.pr = icmp ugt i64 %i.po, 2147483647
  br i1 %i.pr, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

.lr.ph1401:                                       ; preds = %.lr.ph.i706.preheader, %.lr.ph.i706
  %.013.i7071400 = phi i64 [ %i.pt, %.lr.ph.i706 ], [ %i.po, %.lr.ph.i706.preheader ]
  %i.ps = call i32 %i.pp(ptr noundef %i.pq, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i711 = icmp eq i32 %i.ps, 0
  br i1 %.not11.i711, label %.loopexit1323, label %.lr.ph.i706

.lr.ph.i706:                                      ; preds = %.lr.ph1401
  %i.pt = add i64 %.013.i7071400, -2147483647     ; 3 uses
  %i.pu = icmp ugt i64 %i.pt, 2147483647
  br i1 %i.pu, label %.lr.ph1401, label %ma_dr_wav__seek_forward.exit712

ma_dr_wav__seek_forward.exit712:                  ; preds = %.lr.ph.i706, %.lr.ph.i706.preheader
  %.013.i707.lcssa = phi i64 [ %i.po, %.lr.ph.i706.preheader ], [ %i.pt, %.lr.ph.i706 ]
  %i.pv = trunc nuw nsw i64 %.013.i707.lcssa to i32
  %i.pw = call i32 %i.pp(ptr noundef %i.pq, i32 noundef %i.pv, i32 noundef 1) #55, !inline_history !2819
  %.not10.i708.not = icmp eq i32 %i.pw, 0
  br i1 %.not10.i708.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit712.thread876

ma_dr_wav__seek_forward.exit712.thread876:        ; preds = %bb.br, %ma_dr_wav__seek_forward.exit712
  %i.px = add i64 %i.po, %i.it                    ; 2 uses
  store i64 %i.px, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

ma_dr_wav_fourcc_equal.exit685.thread:            ; preds = %bb.bp
  switch i32 %i.jj, label %ma_dr_wav_fourcc_equal.exit713.thread [
    i32 0, label %bb.bs
    i32 1, label %bb.bs
    i32 3, label %bb.bs
  ]

bb.bs:                                            ; preds = %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread, %ma_dr_wav_fourcc_equal.exit685.thread
  %or.cond1138 = select i1 %i.jo, i1 %i.pd, i1 false
  %i.py = icmp eq i8 %i.jr, 99
  %or.cond1142 = select i1 %or.cond1138, i1 %i.py, i1 false
  %.not1234 = icmp eq i8 %i.jt, 116
  %or.cond1276 = select i1 %or.cond1142, i1 %.not1234, i1 false
  br i1 %or.cond1276, label %bb.bt, label %ma_dr_wav_fourcc_equal.exit713.thread

ma_dr_wav_guid_equal.exit704.thread:              ; preds = %ma_dr_wav_guid_equal.exit.thread
  %i.pz = call i32 @ma_dr_wav_guid_equal(ptr noundef nonnull %7, ptr noundef nonnull @ma_dr_wavGUID_W64_FACT)
  %.not496 = icmp eq i32 %i.pz, 0
  br i1 %.not496, label %ma_dr_wav_fourcc_equal.exit713.thread, label %.thread883

bb.bt:                                            ; preds = %bb.bs
  switch i32 %i.jj, label %bb.cb [
    i32 0, label %bb.bu
    i32 1, label %bb.bu
    i32 2, label %.thread883
  ]

bb.bu:                                            ; preds = %bb.bt, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #55
  %i.qa = load ptr, ptr %0, align 8, !tbaa !673
  %i.qb = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.qc = call i64 %i.qa(ptr noundef %i.qb, ptr noundef nonnull %i.r, i64 noundef 4) #55, !inline_history !2818 ; 2 uses
  %i.qd = add i64 %i.it, %i.qc                    ; 2 uses
  store i64 %i.qd, ptr %i.d, align 8, !tbaa !164
  %.not517 = icmp eq i64 %i.qc, 4
  br i1 %.not517, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.qe = add i64 %i.is, -4
  %i.qf = load i16, ptr %i.gy, align 4, !tbaa !693
  %i.qg = icmp eq i16 %i.qf, 2
  br i1 %i.qg, label %bb.bw, label %.thread884

bb.bw:                                            ; preds = %bb.bv
  %i.qh = load i32, ptr %i.dz, align 8, !tbaa !683
  switch i32 %i.qh, label %bb.by [
    i32 4, label %bb.bx
    i32 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw
  %i.qi = load i32, ptr %i.r, align 4
  %i.qj = call i32 @llvm.bswap.i32(i32 %i.qi)
  br label %.thread884

bb.by:                                            ; preds = %bb.bw
  %i.qk = load i32, ptr %i.r, align 4
  br label %.thread884

.thread884:                                       ; preds = %bb.by, %bb.bx, %bb.bv
  %storemerge.shrunk = phi i32 [ 0, %bb.bv ], [ %i.qj, %bb.bx ], [ %i.qk, %bb.by ]
  %storemerge = zext i32 %storemerge.shrunk to i64
  store i64 %storemerge, ptr %i.f, align 8, !tbaa !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #55
  br label %.thread988

.thread883:                                       ; preds = %ma_dr_wav_guid_equal.exit704.thread, %bb.bt
  %i.ql = load ptr, ptr %0, align 8, !tbaa !673
  %i.qm = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.qn = call i64 %i.ql(ptr noundef %i.qm, ptr noundef nonnull %i.f, i64 noundef 8) #55, !inline_history !2818 ; 2 uses
  %i.qo = add i64 %i.it, %i.qn                    ; 2 uses
  store i64 %i.qo, ptr %i.d, align 8, !tbaa !164
  %.not516 = icmp eq i64 %i.qn, 8
  br i1 %.not516, label %bb.ca, label %.thread988

bb.ca:                                            ; preds = %.thread883
  %i.qp = add i64 %i.is, -8
  br label %bb.cb

bb.cb:                                            ; preds = %.thread884, %bb.bt, %bb.ca
  %i.qq = phi i64 [ %i.qd, %.thread884 ], [ %i.qo, %bb.ca ], [ %i.it, %bb.bt ]
  %.1395 = phi i64 [ %i.qe, %.thread884 ], [ %i.qp, %bb.ca ], [ %i.is, %bb.bt ]
  %i.qr = load i32, ptr %i.ga, align 8, !tbaa !1080
  %i.qs = zext i32 %i.qr to i64
  %i.qt = add i64 %.1395, %i.qs                   ; 5 uses
  %i.qu = load ptr, ptr %i.gd, align 8, !tbaa !674 ; 2 uses
  %i.qv = load ptr, ptr %i.z, align 8, !tbaa !676 ; 2 uses
  %.not12.i714 = icmp eq i64 %i.qt, 0
  br i1 %.not12.i714, label %ma_dr_wav__seek_forward.exit721.thread887, label %.lr.ph.i715.preheader

.lr.ph.i715.preheader:                            ; preds = %bb.cb
  %i.qw = icmp ugt i64 %i.qt, 2147483647
  br i1 %i.qw, label %.lr.ph1398, label %ma_dr_wav__seek_forward.exit721

.lr.ph1398:                                       ; preds = %.lr.ph.i715.preheader, %.lr.ph.i715
  %.013.i7161397 = phi i64 [ %i.qy, %.lr.ph.i715 ], [ %i.qt, %.lr.ph.i715.preheader ]
  %i.qx = call i32 %i.qu(ptr noundef %i.qv, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !2819
  %.not11.i720 = icmp eq i32 %i.qx, 0
  br i1 %.not11.i720, label %.loopexit1323, label %.lr.ph.i715

.lr.ph.i715:                                      ; preds = %.lr.ph1398
  %i.qy = add i64 %.013.i7161397, -2147483647     ; 3 uses
  %i.qz = icmp ugt i64 %i.qy, 2147483647
  br i1 %i.qz, label %.lr.ph1398, label %ma_dr_wav__seek_forward.exit721

ma_dr_wav__seek_forward.exit721:                  ; preds = %.lr.ph.i715, %.lr.ph.i715.preheader
  %.013.i716.lcssa = phi i64 [ %i.qt, %.lr.ph.i715.preheader ], [ %i.qy, %.lr.ph.i715 ]
  %i.ra = trunc nuw nsw i64 %.013.i716.lcssa to i32
  %i.rb = call i32 %i.qu(ptr noundef %i.qv, i32 noundef %i.ra, i32 noundef 1) #55, !inline_history !2819
  %.not10.i717.not = icmp eq i32 %i.rb, 0
  br i1 %.not10.i717.not, label %.loopexit1323, label %ma_dr_wav__seek_forward.exit721.thread887

ma_dr_wav__seek_forward.exit721.thread887:        ; preds = %bb.cb, %ma_dr_wav__seek_forward.exit721
  %i.rc = add i64 %i.qq, %i.qt                    ; 2 uses
  store i64 %i.rc, ptr %i.d, align 8, !tbaa !164
  br label %.backedge

bb.cc:                                            ; preds = %.critedge542._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #55
  %i.rd = load i64, ptr %i.fz, align 8, !tbaa !1079 ; 2 uses
  br i1 %.2405, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.re = icmp ult i64 %i.rd, 24
  br i1 %i.re, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1, label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %.not502 = icmp eq i64 %i.rd, 18
  br i1 %.not502, label %bb.cf, label %ma_dr_wav_fourcc_equal.exit734.thread.jt1

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0392 = phi i64 [ 24, %bb.cd ], [ 18, %bb.ce ] ; 3 uses
  %i.rf = load ptr, ptr %0, align 8, !tbaa !673
  %i.rg = load ptr, ptr %i.z, align 8, !tbaa !676
  %i.rh = call i64 %i.rf(ptr noundef %i.rg, ptr noundef nonnull %i.s, i64 noundef range(i64 0, -602) %.0392) #55, !inline_history !2818 ; 2 uses
  %i.ri = add i64 %i.it, %i.rh                    ; 3 uses
  store i64 %i.ri, ptr %i.d, align 8, !tbaa !164
  %.not503 = icmp eq i64 %i.rh, %.0392
end_hunk_7
begin_hunk_8_@ma_resource_manager_data_buffer_init_connector:bb.a
  store ptr %i.p, ptr %i.u, align 8, !tbaa !361
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  store <2 x i32> %i.l, ptr %i.w, align 8, !tbaa !118
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.aa, align 8
  store ptr @ma__malloc_default, ptr %.sroa.17.32..sroa_idx, align 8, !tbaa !134
  %.sroa.20.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @ma__realloc_default, ptr %.sroa.20.32..sroa_idx, align 8, !tbaa !134
  %.sroa.23.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @ma__free_default, ptr %.sroa.23.32..sroa_idx, align 8, !tbaa !134
  store i64 0, ptr %i.x, align 8, !tbaa !601
  store i64 %i.n, ptr %i.y, align 8, !tbaa !602
  store ptr %i.o, ptr %i.z, align 8, !tbaa !603
  br label %ma_audio_buffer_init.exit.thread

ma_paged_audio_buffer_init.exit:                  ; preds = %bb.b
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !906 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  store ptr @g_ma_paged_audio_buffer_data_source_vtable, ptr %i.ad, align 8, !tbaa !358
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -1, ptr %i.af, align 8, !tbaa !359
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 -1, ptr %i.ag, align 8, !tbaa !360
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !361
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !624
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !625
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %ma_audio_buffer_init.exit.thread

ma_audio_buffer_init.exit:                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !904 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1137, !noalias !3082
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.666.0..sroa_idx, i8 0, i64 20, i1 false)
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.868.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !878, !noalias !3082
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.av = load i32, ptr %i.au, align 8, !tbaa !879, !noalias !3082
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !880, !noalias !3082
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.767.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i64 48, i1 false)
  %i.az = load <2 x i32>, ptr %i.ap, align 8, !tbaa !118, !noalias !3082
  store <2 x i32> %i.az, ptr %4, align 8, !tbaa !118
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ar, ptr %.sroa.565.0..sroa_idx, align 8, !tbaa !118
  %.sroa.969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 112
  store i32 0, ptr %.sroa.969.0..sroa_idx, align 8, !tbaa !118
  %.sroa.1070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i32 0, ptr %.sroa.1070.0..sroa_idx, align 4, !tbaa !118
  %.sroa.1171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 120
  store ptr %i.at, ptr %.sroa.1171.0..sroa_idx, align 8, !tbaa !657
  %.sroa.1272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 128
  store i32 %i.av, ptr %.sroa.1272.0..sroa_idx, align 8, !tbaa !118
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 132
  store i32 0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.1373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr %i.ax, ptr %.sroa.1373.0..sroa_idx, align 8, !tbaa !134
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !906 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !119
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !119
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = call i32 @ma_decoder_init_memory(ptr noundef %i.bc, i64 noundef %i.be, ptr noundef nonnull %4, ptr noundef nonnull %i.bf) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %ma_audio_buffer_init.exit.thread, label %ma_fence_release.exit

ma_audio_buffer_init.exit.thread:                 ; preds = %ma_allocation_callbacks_init_copy.exit.i.i, %ma_paged_audio_buffer_init.exit, %ma_audio_buffer_init.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !888 ; 6 uses
  %.not = icmp eq i64 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !889 ; 6 uses
  %.not42 = icmp eq i64 %i.bl, -1
  %or.cond = select i1 %.not, i1 %.not42, i1 false
  %i.bm = icmp ult i64 %i.bl, %i.bj
  %or.cond98 = select i1 %or.cond, i1 true, i1 %i.bm
  br i1 %or.cond98, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.d

bb.d:                                             ; preds = %ma_audio_buffer_init.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.bn = load ptr, ptr %0, align 8, !tbaa !358
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !593 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = call i32 %i.bp(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #55, !inline_history !930
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bj, ptr %i.bs, align 8, !tbaa !590
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bl, ptr %i.bt, align 8, !tbaa !359
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !592
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.bv, align 8, !tbaa !360
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.g:                                             ; preds = %bb.e
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !164
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.bz = call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.by) ; 2 uses
  store i64 %i.bj, ptr %i.bx, align 8, !tbaa !590
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bl, ptr %i.ca, align 8, !tbaa !359
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.cb, align 8, !tbaa !592
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %i.cc, align 8, !tbaa !360
  %i.cd = icmp ult i64 %i.bz, %i.bj
  br i1 %i.cd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ce = load ptr, ptr %0, align 8, !tbaa !358
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !589 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ci = call i32 %i.cg(ptr noundef nonnull %0, i64 noundef %i.bj) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

bb.j:                                             ; preds = %bb.g
  %i.cj = icmp ugt i64 %i.bz, %i.bl
  br i1 %i.cj, label %bb.k, label %ma_data_source_set_range_in_pcm_frames.exit

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %0, align 8, !tbaa !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !589 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %ma_data_source_set_range_in_pcm_frames.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = call i32 %i.cm(ptr noundef nonnull %0, i64 noundef %i.bl) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_set_range_in_pcm_frames.exit

ma_data_source_set_range_in_pcm_frames.exit:      ; preds = %ma_audio_buffer_init.exit.thread, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !890 ; 3 uses
  %.not43 = icmp eq i64 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !891 ; 5 uses
  %.not44 = icmp eq i64 %i.cs, -1
  %or.cond99 = select i1 %.not43, i1 %.not44, i1 false
  %i.ct = icmp ult i64 %i.cs, %i.cq
  %or.cond100 = select i1 %or.cond99, i1 true, i1 %i.ct
  br i1 %or.cond100, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.m

bb.m:                                             ; preds = %ma_data_source_set_range_in_pcm_frames.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !359 ; 2 uses
  %i.cw = icmp ugt i64 %i.cs, %i.cv
  %i.cx = icmp ne i64 %i.cs, -1                   ; 2 uses
  %or.cond.i48 = and i1 %i.cx, %i.cw
  br i1 %or.cond.i48, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cq, ptr %i.cy, align 8, !tbaa !592
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !590
  %i.dc = sub i64 %i.cv, %i.db
  %i.dd = call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.dc)
  %spec.store.select.i = select i1 %i.cx, i64 %i.dd, i64 -1
  store i64 %spec.store.select.i, ptr %i.cz, align 8, !tbaa !360
  br label %ma_data_source_set_loop_point_in_pcm_frames.exit

ma_data_source_set_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_set_range_in_pcm_frames.exit, %bb.n, %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.df = load i32, ptr %i.de, align 4, !tbaa !892 ; 3 uses
  %.not45 = icmp eq i32 %i.df, 0
  br i1 %.not45, label %ma_data_source_set_looping.exit, label %bb.o

bb.o:                                             ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = atomicrmw xchg ptr %i.dg, i32 %i.df seq_cst, align 8 ; 0 uses
  %i.di = load ptr, ptr %0, align 8, !tbaa !358
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !597 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %ma_data_source_set_looping.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = call i32 %i.dk(ptr noundef nonnull %0, i32 noundef %i.df) #55, !inline_history !918 ; 0 uses
  br label %ma_data_source_set_looping.exit

ma_data_source_set_looping.exit:                  ; preds = %bb.p, %bb.o, %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 124
  store atomic i32 1, ptr %i.dn seq_cst, align 4
  %.not46 = icmp eq ptr %2, null
  br i1 %.not46, label %ma_async_notification_signal.exit, label %bb.q

bb.q:                                             ; preds = %ma_data_source_set_looping.exit
  %i.do = load ptr, ptr %2, align 8, !tbaa !147   ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %ma_async_notification_signal.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %i.do(ptr noundef nonnull %2) #55, !inline_history !909
  br label %ma_async_notification_signal.exit

ma_async_notification_signal.exit:                ; preds = %bb.r, %bb.q, %ma_data_source_set_looping.exit
  %.not47 = icmp eq ptr %3, null
  br i1 %.not47, label %ma_fence_release.exit, label %.preheader.i

.preheader.i:                                     ; preds = %ma_async_notification_signal.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.preheader.i
  %i.dr = load atomic i32, ptr %i.dq seq_cst, align 8 ; 3 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %ma_fence_release.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = add i32 %i.dr, -1                       ; 2 uses
  %i.du = cmpxchg weak ptr %i.dq, i32 %i.dr, i32 %i.dt seq_cst seq_cst, align 8 ; 2 uses
  %i.dv = extractvalue { i32, i1 } %i.du, 1
  br i1 %i.dv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dw = icmp eq i32 %i.dt, 0
  br i1 %i.dw, label %ma_event_signal.exit.i, label %ma_fence_release.exit

ma_event_signal.exit.i:                           ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dy = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.dx) #55 ; 0 uses
  store i32 1, ptr %3, align 8, !tbaa !145
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ea = call i32 @pthread_cond_signal(ptr noundef nonnull %i.dz) #55 ; 0 uses
  %i.eb = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.dx) #55 ; 0 uses
  br label %ma_fence_release.exit

bb.v:                                             ; preds = %bb.t
  %i.ec = extractvalue { i32, i1 } %i.du, 0
  %.not.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i, label %ma_fence_release.exit, label %bb.s

ma_fence_release.exit:                            ; preds = %bb.v, %bb.s, %bb.c, %ma_event_signal.exit.i, %bb.u, %ma_audio_buffer_init.exit, %ma_async_notification_signal.exit, %bb.b, %bb.a
  %.0 = phi i32 [ -2, %bb.b ], [ %i.e, %bb.a ], [ 0, %ma_async_notification_signal.exit ], [ 0, %ma_event_signal.exit.i ], [ %i.bg, %ma_audio_buffer_init.exit ], [ -2, %bb.c ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.v ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_resource_manager_data_stream_fill_page(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
ma_resource_manager_data_stream_is_looping.exit:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 0, ptr %i.b, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !936
  %i.e = getelementptr i8, ptr %0, i64 232
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !939
  %.fr.i.i = freeze i32 %.val.i                   ; 2 uses
  %i.f = urem i32 %.fr.i.i, 1000
  %i.g = sub nuw i32 %.fr.i.i, %i.f               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.i = load i32, ptr %i.h, align 8, !tbaa !937
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.k = load i32, ptr %i.j, align 4, !tbaa !938
  %i.l = zext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !118
  %i.o = mul i32 %i.k, %1
  %i.p = mul i32 %i.o, %i.n
  %i.q = mul i32 %i.p, %i.g
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  %i.t = zext i32 %i.g to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.w = load atomic i32, ptr %i.v seq_cst, align 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = atomicrmw xchg ptr %i.x, i32 %i.w seq_cst, align 8 ; 0 uses
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !358
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !597 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %ma_data_source_get_range_in_pcm_frames.exit, label %bb.a

bb.a:                                             ; preds = %ma_resource_manager_data_stream_is_looping.exit
  %i.ad = tail call i32 %i.ab(ptr noundef nonnull %i.u, i32 noundef %i.w) #55, !inline_history !918 ; 0 uses
  br label %ma_data_source_get_range_in_pcm_frames.exit

ma_data_source_get_range_in_pcm_frames.exit:      ; preds = %ma_resource_manager_data_stream_is_looping.exit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !590 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !359 ; 5 uses
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %ma_data_source_get_loop_point_in_pcm_frames.exit, label %bb.b

bb.b:                                             ; preds = %ma_data_source_get_range_in_pcm_frames.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !358
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !593 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = call i32 %i.al(ptr noundef nonnull %i.u, ptr noundef nonnull %i.a) #55, !inline_history !930
  %.not.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.af, ptr %i.ao, align 8, !tbaa !590
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ah, ptr %i.ap, align 8, !tbaa !359
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.aq, align 8, !tbaa !592
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -1, ptr %i.ar, align 8, !tbaa !360
  br label %ma_data_source_get_loop_point_in_pcm_frames.exit

bb.e:                                             ; preds = %bb.c
  %i.as = load i64, ptr %i.a, align 8, !tbaa !164
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.av = call i64 @llvm.umax.i64(i64 %i.as, i64 %i.au) ; 2 uses
  store i64 %i.af, ptr %i.at, align 8, !tbaa !590
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ah, ptr %i.aw, align 8, !tbaa !359
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.ax, align 8, !tbaa !592
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 -1, ptr %i.ay, align 8, !tbaa !360
  %i.az = icmp ult i64 %i.av, %i.af
  br i1 %i.az, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !358
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !589 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %ma_data_source_get_loop_point_in_pcm_frames.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = call i32 %i.bc(ptr noundef nonnull %i.u, i64 noundef %i.af) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_get_loop_point_in_pcm_frames.exit

bb.h:                                             ; preds = %bb.e
  %i.bf = icmp ugt i64 %i.av, %i.ah
  br i1 %i.bf, label %bb.i, label %ma_data_source_get_loop_point_in_pcm_frames.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !358
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !589 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %ma_data_source_get_loop_point_in_pcm_frames.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = call i32 %i.bi(ptr noundef nonnull %i.u, i64 noundef %i.ah) #55, !inline_history !931 ; 0 uses
  br label %ma_data_source_get_loop_point_in_pcm_frames.exit

ma_data_source_get_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_get_range_in_pcm_frames.exit, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !592 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !360 ; 4 uses
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.k

bb.k:                                             ; preds = %ma_data_source_get_loop_point_in_pcm_frames.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !359 ; 2 uses
  %i.bs = icmp ugt i64 %i.bo, %i.br
  %i.bt = icmp ne i64 %i.bo, -1                   ; 2 uses
  %or.cond.i = and i1 %i.bt, %i.bs
  br i1 %or.cond.i, label %ma_data_source_set_loop_point_in_pcm_frames.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bm, ptr %i.bu, align 8, !tbaa !592
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !590
  %i.by = sub i64 %i.br, %i.bx
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.by)
  %spec.store.select.i = select i1 %i.bt, i64 %i.bz, i64 -1
  store i64 %spec.store.select.i, ptr %i.bv, align 8, !tbaa !360
  br label %ma_data_source_set_loop_point_in_pcm_frames.exit

ma_data_source_set_loop_point_in_pcm_frames.exit: ; preds = %ma_data_source_get_loop_point_in_pcm_frames.exit, %bb.k, %bb.l
  %i.ca = call i32 @ma_data_source_read_pcm_frames(ptr noundef nonnull %i.u, ptr noundef %i.s, i64 noundef %i.t, ptr noundef nonnull %i.b)
  %i.cb = icmp eq i32 %i.ca, -17
  %i.cc = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.t
  %or.cond = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.cf = atomicrmw xchg ptr %i.ce, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %ma_data_source_set_loop_point_in_pcm_frames.exit, %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ch = zext i32 %1 to i64                      ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = trunc i64 %i.cc to i32
  %i.ck = atomicrmw xchg ptr %i.ci, i32 %i.cj seq_cst, align 4 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = atomicrmw xchg ptr %i.cm, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -51, 1) i32 @ma_thread_create__posix(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %union.pthread_attr_t, align 8      ; 10 uses
  %5 = alloca %struct.sched_param, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #55
  %i.a = call i32 @pthread_attr_init(ptr noundef nonnull %4) #55
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, -5                       ; 2 uses
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %1, 1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @pthread_attr_setschedpolicy(ptr noundef nonnull %4, i32 noundef 1) #55
  %i.f = icmp eq i32 %i.e, 0
  %spec.select = select i1 %i.f, i32 1, i32 -1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = call i32 @sched_getscheduler(i32 noundef 0) #55
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.g, %bb.e ], [ %spec.select, %bb.d ] ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call i32 @pthread_attr_setstacksize(ptr noundef nonnull %4, i64 noundef %2) #55 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not45 = icmp eq i32 %.0, -1
  br i1 %.not45, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = call i32 @sched_get_priority_min(i32 noundef %.0) #55 ; 4 uses
  %i.j = call i32 @sched_get_priority_max(i32 noundef %.0) #55 ; 4 uses
  %i.k = sub nsw i32 %i.j, %i.i
  %i.l = sdiv i32 %i.k, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #55
  %i.m = icmp ne i32 %i.i, -1
  %i.n = icmp ne i32 %i.j, -1
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.o = call i32 @pthread_attr_getschedparam(ptr noundef nonnull %4, ptr noundef nonnull %5) #55
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %i.c, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq i32 %1, 1
  %i.r = add nsw i32 %1, 5
  %i.s = mul nsw i32 %i.l, %i.r
  %i.t = load i32, ptr %5, align 4
  %i.u = add nsw i32 %i.t, %i.s
  %.sink = select i1 %i.q, i32 %i.j, i32 %i.u     ; 2 uses
  %i.v = icmp slt i32 %.sink, %i.i
  br i1 %i.v, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %bb.l, %bb.k
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %storemerge = phi i32 [ %i.i, %.sink.split ], [ %.sink, %bb.l ]
  %spec.select11 = call i32 @llvm.smin.i32(i32 %storemerge, i32 %i.j)
  store i32 %spec.select11, ptr %5, align 4, !tbaa !3084
  %i.w = call i32 @pthread_attr_setschedparam(ptr noundef nonnull %4, ptr noundef nonnull %5) #55
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = call i32 @pthread_attr_setinheritsched(ptr noundef nonnull %4, i32 noundef 1) #55 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  %i.z = call i32 @pthread_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @ma_thread_entry_proxy, ptr noundef nonnull %3) #55
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.h
  %i.aa = call i32 @pthread_create(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull @ma_thread_entry_proxy, ptr noundef nonnull %3) #55
  %i.ab = call i32 @pthread_attr_destroy(ptr noundef nonnull %4) #55 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ac = phi i32 [ %i.aa, %bb.q ], [ %i.z, %bb.p ] ; 3 uses
  %.not47 = icmp eq i32 %i.ac, 0
  br i1 %.not47, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ad = icmp eq i32 %i.ac, 1
  %i.ae = icmp eq i32 %1, 1
  %or.cond3 = and i1 %i.ae, %i.ad
  br i1 %or.cond3, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.af = call fastcc i32 @ma_thread_create__posix(ptr noundef %0, i32 noundef -2, i64 noundef %2, ptr noundef %3)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ag = call fastcc i32 @ma_result_from_errno(i32 noundef %i.ac)
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.t
  %.039 = phi i32 [ %i.af, %bb.t ], [ %i.ag, %bb.u ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #55
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal ptr @ma_thread_entry_proxy(ptr noundef %0) #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !268
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !269
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132  ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef %i.g) #55, !inline_history !133
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.a, %bb.b
  %i.h = tail call ptr %i.a(ptr noundef %i.c) #55
  ret ptr %i.h
}

; Function Attrs: nounwind
declare i32 @pthread_attr_init(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedpolicy(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sched_getscheduler(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sched_get_priority_min(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sched_get_priority_max(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_getschedparam(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_setschedparam(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @pthread_attr_setinheritsched(ptr noundef, i32 noundef) local_unnamed_addr #13

end_hunk_8
begin_hunk_9_@ma_device_init_by_type__alsa:bb.a

bb.z:                                             ; preds = %bb.y
  %i.ev = load ptr, ptr %0, align 8, !tbaa !219
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 648
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !119
  %i.ey = tail call i32 %i.ex(ptr noundef %i.bj, ptr noundef nonnull %i.ai, i32 noundef 1) #55
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.z
  %i.fa = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 312
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !132 ; 2 uses
  %.not9.i370 = icmp eq ptr %i.fc, null
  br i1 %.not9.i370, label %ma_device_get_context.exit.i372, label %bb.aa

bb.aa:                                            ; preds = %.thread
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 288
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !126
  tail call void %i.fc(ptr noundef nonnull %i.ai, ptr noundef %i.fe) #55, !inline_history !133
  %.pre = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i372

ma_device_get_context.exit.i372:                  ; preds = %bb.aa, %.thread
  %i.ff = phi ptr [ %.pre, %bb.aa ], [ %i.fa, %.thread ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 440
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !119
  %i.fi = tail call i32 %i.fh(ptr noundef %i.bj) #55 ; 0 uses
  %i.fj = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %ma_log_post.exit, label %ma_device_get_log.exit374

ma_device_get_log.exit374:                        ; preds = %ma_device_get_context.exit.i372
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 112
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !275 ; 4 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %ma_log_post.exit, label %bb.ab

bb.ab:                                            ; preds = %ma_device_get_log.exit374
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 104 ; 2 uses
  %i.fp = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fo) #55 ; 0 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 64 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !138 ; 2 uses
  %.not21.i375 = icmp eq i32 %i.fr, 0
  br i1 %.not21.i375, label %._crit_edge.i381, label %.lr.ph.i376

.lr.ph.i376:                                      ; preds = %bb.ab, %bb.ad
  %i.fs = phi i32 [ %i.fx, %bb.ad ], [ %i.fr, %bb.ab ]
  %indvars.iv.i377 = phi i64 [ %indvars.iv.next.i380, %bb.ad ], [ 0, %bb.ab ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.i377 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !140 ; 2 uses
  %.not.i378 = icmp eq ptr %i.fu, null
  br i1 %.not.i378, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i376
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !141
  tail call void %i.fu(ptr noundef %i.fw, i32 noundef 1, ptr noundef nonnull @.str.402) #55, !inline_history !142
  %.pre.i379 = load i32, ptr %i.fq, align 8, !tbaa !138
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i376
  %i.fx = phi i32 [ %i.fs, %.lr.ph.i376 ], [ %.pre.i379, %bb.ac ] ; 2 uses
  %indvars.iv.next.i380 = add nuw nsw i64 %indvars.iv.i377, 1 ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = icmp samesign ult i64 %indvars.iv.next.i380, %i.fy
  br i1 %i.fz, label %.lr.ph.i376, label %._crit_edge.i381, !llvm.loop !0

._crit_edge.i381:                                 ; preds = %bb.ad, %bb.ab
  %i.ga = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fo) #55 ; 0 uses
  br label %ma_log_post.exit

.critedge:                                        ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.u
  %.1301 = phi i32 [ %i.l, %bb.u ], [ 2, %bb.v ], [ 14, %bb.w ], [ 10, %bb.x ], [ 32, %bb.y ], [ 1, %bb.z ] ; 2 uses
  %i.gb = load ptr, ptr %0, align 8, !tbaa !219
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 464
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !119
  %i.ge = tail call i32 %i.gd(ptr noundef %i.bj, ptr noundef nonnull %i.ai, i32 noundef %.1301) #55 ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %.critedge
  %i.gg = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 312
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !132 ; 2 uses
  %.not9.i385 = icmp eq ptr %i.gi, null
  br i1 %.not9.i385, label %ma_device_get_context.exit.i387, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 288
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !126
  tail call void %i.gi(ptr noundef nonnull %i.ai, ptr noundef %i.gk) #55, !inline_history !133
  %.pre608 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i387

ma_device_get_context.exit.i387:                  ; preds = %bb.af, %bb.ae
  %i.gl = phi ptr [ %.pre608, %bb.af ], [ %i.gg, %bb.ae ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 440
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !119
  %i.go = tail call i32 %i.gn(ptr noundef %i.bj) #55 ; 0 uses
  %i.gp = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %ma_log_post.exit398, label %ma_device_get_log.exit389

ma_device_get_log.exit389:                        ; preds = %ma_device_get_context.exit.i387
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 112
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !275 ; 4 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %ma_log_post.exit398, label %bb.ag

bb.ag:                                            ; preds = %ma_device_get_log.exit389
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 104 ; 2 uses
  %i.gv = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.gu) #55 ; 0 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 64 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !138 ; 2 uses
  %.not21.i390 = icmp eq i32 %i.gx, 0
  br i1 %.not21.i390, label %._crit_edge.i396, label %.lr.ph.i391

.lr.ph.i391:                                      ; preds = %bb.ag, %bb.ai
  %i.gy = phi i32 [ %i.hd, %bb.ai ], [ %i.gx, %bb.ag ]
  %indvars.iv.i392 = phi i64 [ %indvars.iv.next.i395, %bb.ai ], [ 0, %bb.ag ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %indvars.iv.i392 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !140 ; 2 uses
  %.not.i393 = icmp eq ptr %i.ha, null
  br i1 %.not.i393, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i391
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !141
  tail call void %i.ha(ptr noundef %i.hc, i32 noundef 1, ptr noundef nonnull @.str.403) #55, !inline_history !142
  %.pre.i394 = load i32, ptr %i.gw, align 8, !tbaa !138
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i391
  %i.hd = phi i32 [ %i.gy, %.lr.ph.i391 ], [ %.pre.i394, %bb.ah ] ; 2 uses
  %indvars.iv.next.i395 = add nuw nsw i64 %indvars.iv.i392, 1 ; 2 uses
  %i.he = zext i32 %i.hd to i64
  %i.hf = icmp samesign ult i64 %indvars.iv.next.i395, %i.he
  br i1 %i.hf, label %.lr.ph.i391, label %._crit_edge.i396, !llvm.loop !0

._crit_edge.i396:                                 ; preds = %bb.ai, %bb.ag
  %i.hg = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gu) #55 ; 0 uses
  br label %ma_log_post.exit398

ma_log_post.exit398:                              ; preds = %ma_device_get_context.exit.i387, %ma_device_get_log.exit389, %._crit_edge.i396
  %i.hh = sub nsw i32 0, %i.ge
  %i.hi = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.hh)
  br label %ma_log_post.exit

bb.aj:                                            ; preds = %.critedge
  %switch.tableidx = add i32 %.1301, -1           ; 3 uses
  %i.hj = icmp ult i32 %switch.tableidx, 32
  %switch.shifted = lshr i32 -2147474941, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.hj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hk = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 312
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !132 ; 2 uses
  %.not9.i400 = icmp eq ptr %i.hm, null
  br i1 %.not9.i400, label %ma_device_get_context.exit.i402, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 288
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !126
  tail call void %i.hm(ptr noundef nonnull %i.ai, ptr noundef %i.ho) #55, !inline_history !133
  %.pre607 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i402

ma_device_get_context.exit.i402:                  ; preds = %bb.al, %bb.ak
  %i.hp = phi ptr [ %.pre607, %bb.al ], [ %i.hk, %bb.ak ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 440
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !119
  %i.hs = tail call i32 %i.hr(ptr noundef %i.bj) #55 ; 0 uses
  %i.ht = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %ma_device_get_log.exit404, label %bb.am

bb.am:                                            ; preds = %ma_device_get_context.exit.i402
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 112
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !275
  br label %ma_device_get_log.exit404

ma_device_get_log.exit404:                        ; preds = %ma_device_get_context.exit.i402, %bb.am
  %.0.i1.i403 = phi ptr [ %i.hw, %bb.am ], [ null, %ma_device_get_context.exit.i402 ]
  %i.hx = tail call i32 @ma_log_post(ptr noundef %.0.i1.i403, i32 noundef 1, ptr noundef nonnull @.str.404) ; 0 uses
  br label %ma_log_post.exit

switch.lookup:                                    ; preds = %bb.aj
  %i.hy = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ma_device_init_by_type__alsa, i64 %i.hy
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !190 ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  %spec.store.select = select i1 %i.ib, i32 2, i32 %i.ia
  store i32 %spec.store.select, ptr %i.d, align 4, !tbaa !118
  %i.ic = load ptr, ptr %0, align 8, !tbaa !219
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 496
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !119
  %i.if = call i32 %i.ie(ptr noundef %i.bj, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.d) #55 ; 2 uses
  %i.ig = icmp sgt i32 %i.if, -1
  br i1 %i.ig, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %switch.lookup
  %i.ih = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 312
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !132 ; 2 uses
  %.not9.i406 = icmp eq ptr %i.ij, null
  br i1 %.not9.i406, label %ma_device_get_context.exit.i408, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 288
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !126
  call void %i.ij(ptr noundef nonnull %i.ai, ptr noundef %i.il) #55, !inline_history !133
  %.pre590 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i408

ma_device_get_context.exit.i408:                  ; preds = %bb.ao, %bb.an
  %i.im = phi ptr [ %.pre590, %bb.ao ], [ %i.ih, %bb.an ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 440
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !119
  %i.ip = call i32 %i.io(ptr noundef %i.bj) #55   ; 0 uses
  %i.iq = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %ma_device_get_context.exit.i408
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 112
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !275
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %ma_device_get_context.exit.i408
  %.0.i1.i409 = phi ptr [ %i.it, %bb.ap ], [ null, %ma_device_get_context.exit.i408 ]
  %i.iu = call i32 @ma_log_post(ptr noundef %.0.i1.i409, i32 noundef 1, ptr noundef nonnull @.str.405) ; 0 uses
  %i.iv = sub nsw i32 0, %i.if
  %i.iw = call fastcc i32 @ma_result_from_errno(i32 noundef %i.iv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  br label %ma_log_post.exit

bb.ar:                                            ; preds = %switch.lookup
  %i.ix = load i32, ptr %i.d, align 4, !tbaa !118 ; 16 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #55
  %i.iy = load ptr, ptr %0, align 8, !tbaa !219
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 512
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !119
  %i.jb = call i32 %i.ja(ptr noundef %i.bj, ptr noundef nonnull %i.ai, i32 noundef 0) #55 ; 0 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !191 ; 2 uses
  %i.je = icmp eq i32 %i.jd, 0
  %spec.store.select5 = select i1 %i.je, i32 48000, i32 %i.jd
  store i32 %spec.store.select5, ptr %i.e, align 4, !tbaa !118
  %i.jf = load ptr, ptr %0, align 8, !tbaa !219
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 528
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !119
  %i.ji = call i32 %i.jh(ptr noundef %i.bj, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.e, ptr noundef null) #55 ; 2 uses
  %i.jj = icmp sgt i32 %i.ji, -1
  br i1 %i.jj, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jk = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 312
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !132 ; 2 uses
  %.not9.i412 = icmp eq ptr %i.jm, null
  br i1 %.not9.i412, label %ma_device_get_context.exit.i414, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 288
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !126
  call void %i.jm(ptr noundef nonnull %i.ai, ptr noundef %i.jo) #55, !inline_history !133
  %.pre591 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i414

ma_device_get_context.exit.i414:                  ; preds = %bb.at, %bb.as
  %i.jp = phi ptr [ %.pre591, %bb.at ], [ %i.jk, %bb.as ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 440
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !119
  %i.js = call i32 %i.jr(ptr noundef %i.bj) #55   ; 0 uses
  %i.jt = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.av, label %bb.au

bb.au:                                            ; preds = %ma_device_get_context.exit.i414
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 112
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !275
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %ma_device_get_context.exit.i414
  %.0.i1.i415 = phi ptr [ %i.jw, %bb.au ], [ null, %ma_device_get_context.exit.i414 ]
  %i.jx = call i32 @ma_log_post(ptr noundef %.0.i1.i415, i32 noundef 1, ptr noundef nonnull @.str.406) ; 0 uses
  %i.jy = sub nsw i32 0, %i.ji
  %i.jz = call fastcc i32 @ma_result_from_errno(i32 noundef %i.jy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  br label %ma_log_post.exit

bb.aw:                                            ; preds = %bb.ar
  %i.ka = load i32, ptr %i.e, align 4, !tbaa !118 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #55
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !211
  store i32 %i.kc, ptr %i.f, align 4, !tbaa !118
  %i.kd = load ptr, ptr %0, align 8, !tbaa !219
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 552
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !119
  %i.kg = call i32 %i.kf(ptr noundef %i.bj, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.f, ptr noundef null) #55 ; 2 uses
  %i.kh = icmp sgt i32 %i.kg, -1
  br i1 %i.kh, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ki = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 312
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !132 ; 2 uses
  %.not9.i418 = icmp eq ptr %i.kk, null
  br i1 %.not9.i418, label %ma_device_get_context.exit.i420, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 288
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !126
  call void %i.kk(ptr noundef nonnull %i.ai, ptr noundef %i.km) #55, !inline_history !133
  %.pre592 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i420

ma_device_get_context.exit.i420:                  ; preds = %bb.ay, %bb.ax
  %i.kn = phi ptr [ %.pre592, %bb.ay ], [ %i.ki, %bb.ax ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 440
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !119
  %i.kq = call i32 %i.kp(ptr noundef %i.bj) #55   ; 0 uses
  %i.kr = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %ma_device_get_context.exit.i420
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 112
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !275
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %ma_device_get_context.exit.i420
  %.0.i1.i421 = phi ptr [ %i.ku, %bb.az ], [ null, %ma_device_get_context.exit.i420 ]
  %i.kv = call i32 @ma_log_post(ptr noundef %.0.i1.i421, i32 noundef 1, ptr noundef nonnull @.str.407) ; 0 uses
  %i.kw = sub nsw i32 0, %i.kg
  %i.kx = call fastcc i32 @ma_result_from_errno(i32 noundef %i.kw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  br label %ma_log_post.exit

bb.bb:                                            ; preds = %bb.aw
  %i.ky = load i32, ptr %i.f, align 4, !tbaa !118 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #55
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !1151
  %i.lb = call i32 @ma_calculate_buffer_size_in_frames_from_descriptor(ptr noundef nonnull %2, i32 noundef %i.ka, i32 noundef %i.la)
  %i.lc = mul i32 %i.lb, %i.ky
  %i.ld = zext i32 %i.lc to i64
  store i64 %i.ld, ptr %i.g, align 8, !tbaa !154
  %i.le = load ptr, ptr %0, align 8, !tbaa !219
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 544
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !119
  %i.lh = call i32 %i.lg(ptr noundef %i.bj, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.g) #55 ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1
  br i1 %i.li, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lj = load ptr, ptr %0, align 8, !tbaa !219   ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 312
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !132 ; 2 uses
  %.not9.i424 = icmp eq ptr %i.ll, null
  br i1 %.not9.i424, label %ma_device_get_context.exit.i426, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 288
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !126
  call void %i.ll(ptr noundef nonnull %i.ai, ptr noundef %i.ln) #55, !inline_history !133
  %.pre593 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i426

ma_device_get_context.exit.i426:                  ; preds = %bb.bd, %bb.bc
  %i.lo = phi ptr [ %.pre593, %bb.bd ], [ %i.lj, %bb.bc ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 440
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !119
  %i.lr = call i32 %i.lq(ptr noundef %i.bj) #55   ; 0 uses
  %i.ls = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %ma_device_get_context.exit.i426
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 112
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !275
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %ma_device_get_context.exit.i426
  %.0.i1.i427 = phi ptr [ %i.lv, %bb.be ], [ null, %ma_device_get_context.exit.i426 ]
  %i.lw = call i32 @ma_log_post(ptr noundef %.0.i1.i427, i32 noundef 1, ptr noundef nonnull @.str.408) ; 0 uses
  %i.lx = sub nsw i32 0, %i.lh
  %i.ly = call fastcc i32 @ma_result_from_errno(i32 noundef %i.lx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  br label %ma_log_post.exit

bb.bg:                                            ; preds = %bb.bb
  %i.lz = load i64, ptr %i.g, align 8, !tbaa !154
  %i.ma = zext i32 %i.ky to i64
  %i.mb = udiv i64 %i.lz, %i.ma                   ; 2 uses
  %i.mc = trunc i64 %i.mb to i32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #55
  %i.md = load ptr, ptr %0, align 8, !tbaa !219
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 672
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !119
  %i.mg = call i32 %i.mf(ptr noundef %i.bj, ptr noundef nonnull %i.ai) #55 ; 2 uses
  %i.mh = icmp slt i32 %i.mg, 0
  %i.mi = load ptr, ptr %0, align 8, !tbaa !219   ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 312
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !132 ; 3 uses
  %.not9.i430 = icmp eq ptr %i.mk, null           ; 2 uses
  br i1 %i.mh, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not9.i430, label %ma_device_get_context.exit.i432, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 288
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !126
  call void %i.mk(ptr noundef nonnull %i.ai, ptr noundef %i.mm) #55, !inline_history !133
  %.pre606 = load ptr, ptr %0, align 8, !tbaa !219
  br label %ma_device_get_context.exit.i432

ma_device_get_context.exit.i432:                  ; preds = %bb.bi, %bb.bh
  %i.mn = phi ptr [ %.pre606, %bb.bi ], [ %i.mi, %bb.bh ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 440
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !119
  %i.mq = call i32 %i.mp(ptr noundef %i.bj) #55   ; 0 uses
  %i.mr = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %ma_device_get_log.exit434, label %bb.bj

bb.bj:                                            ; preds = %ma_device_get_context.exit.i432
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 112
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !275
  br label %ma_device_get_log.exit434

ma_device_get_log.exit434:                        ; preds = %ma_device_get_context.exit.i432, %bb.bj
  %.0.i1.i433 = phi ptr [ %i.mu, %bb.bj ], [ null, %ma_device_get_context.exit.i432 ]
  %i.mv = call i32 @ma_log_post(ptr noundef %.0.i1.i433, i32 noundef 1, ptr noundef nonnull @.str.409) ; 0 uses
  %i.mw = sub nsw i32 0, %i.mg
  %i.mx = call fastcc i32 @ma_result_from_errno(i32 noundef %i.mw)
  br label %ma_log_post.exit

bb.bk:                                            ; preds = %bb.bg
  br i1 %.not9.i430, label %ma_free.exit437, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.my = getelementptr inbounds nuw i8, ptr %i.mi, i64 288
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !126
end_hunk_9
