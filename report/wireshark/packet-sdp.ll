Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-sdp?download=true
inline.NumInlined: 70
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@call_sdp_subdissector:bb.a

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.d, align 4
  %i.dw = load i32, ptr @ett_sdp_time, align 4
  %i.dx = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.dw) ; 3 uses
  %i.dy = call fastcc i32 @find_next_optional_token_in_line(ptr noundef %0, ptr noundef %i.dx, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i1 noundef zeroext false) ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %dissect_sdp_time.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = load i32, ptr @hf_time_start, align 4
  %i.eb = load i32, ptr %i.d, align 4
  %i.ec = tail call ptr @proto_tree_add_item(ptr noundef %i.dx, i32 noundef %i.ea, ptr noundef %0, i32 noundef %i.eb, i32 noundef %i.dy, i32 noundef 2) ; 0 uses
  %i.ed = load i32, ptr %i.e, align 4
  %i.ee = add i32 %i.ed, 1
  %i.ef = load i32, ptr @hf_time_stop, align 4
  %i.eg = tail call ptr @proto_tree_add_item(ptr noundef %i.dx, i32 noundef %i.ef, ptr noundef %0, i32 noundef %i.ee, i32 noundef -1, i32 noundef 2) ; 0 uses
  br label %dissect_sdp_time.exit

dissect_sdp_time.exit:                            ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.aw

bb.ag:                                            ; preds = %bb.ad
  %i.eh = load i32, ptr @hf_repeat_time, align 4
  %i.ei = icmp eq i32 %2, %i.eh
  br i1 %i.ei, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.b, align 4
  %i.ej = load i32, ptr @ett_sdp_time, align 4
  %i.ek = tail call ptr @proto_item_add_subtree(ptr noundef %3, i32 noundef %i.ej) ; 8 uses
  %i.el = call fastcc i32 @find_next_optional_token_in_line(ptr noundef %0, ptr noundef %i.ek, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i1 noundef zeroext false) ; 2 uses
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %dissect_sdp_repeat_time.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.en = load i32, ptr @hf_repeat_time_interval, align 4
  %i.eo = load i32, ptr %i.b, align 4
  %i.ep = tail call ptr @proto_tree_add_item(ptr noundef %i.ek, i32 noundef %i.en, ptr noundef %0, i32 noundef %i.eo, i32 noundef %i.el, i32 noundef 2) ; 0 uses
  %i.eq = load i32, ptr %i.c, align 4
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr %i.b, align 4
  %i.es = call fastcc i32 @find_next_optional_token_in_line(ptr noundef %0, ptr noundef %i.ek, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i1 noundef zeroext false) ; 2 uses
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %dissect_sdp_repeat_time.exit, label %.peel.begin.i

.peel.begin.i:                                    ; preds = %bb.ai
  %i.eu = load i32, ptr @hf_repeat_time_duration, align 4
  %i.ev = load i32, ptr %i.b, align 4
  %i.ew = tail call ptr @proto_tree_add_item(ptr noundef %i.ek, i32 noundef %i.eu, ptr noundef %0, i32 noundef %i.ev, i32 noundef %i.es, i32 noundef 2) ; 0 uses
  %i.ex = load i32, ptr %i.c, align 4
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.b, align 4
  %i.ez = call fastcc i32 @find_next_optional_token_in_line(ptr noundef %0, ptr noundef %i.ek, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i1 noundef zeroext false) ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %dissect_sdp_repeat_time.exit, label %bb.aj

bb.aj:                                            ; preds = %.peel.begin.i
  %i.fb = load i32, ptr @hf_repeat_time_offset, align 4
  %i.fc = load i32, ptr %i.b, align 4
  %i.fd = tail call ptr @proto_tree_add_item(ptr noundef %i.ek, i32 noundef %i.fb, ptr noundef %0, i32 noundef %i.fc, i32 noundef %i.ez, i32 noundef 2) ; 0 uses
  %i.fe = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ff = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.fe)
  %.not.peel.i = icmp eq i32 %i.ff, 0
  br i1 %.not.peel.i, label %dissect_sdp_repeat_time.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.aj, %bb.al
  %i.fg = phi i32 [ %i.fw, %bb.al ], [ %i.fe, %bb.aj ]
  %i.fh = add i32 %i.fg, 1                        ; 5 uses
  store i32 %i.fh, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.fi = call i32 @tvb_reported_length(ptr noundef %0)
  store i32 %i.fi, ptr %i.a, align 4
  %i.fj = call zeroext i1 @tvb_offset_exists(ptr noundef %0, i32 noundef %i.fh)
  br i1 %i.fj, label %.preheader.i, label %find_next_optional_token_in_line.exit.thread

find_next_optional_token_in_line.exit.thread:     ; preds = %.peel.next.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %dissect_sdp_repeat_time.exit

.preheader.i:                                     ; preds = %.peel.next.i
  %i.fk = call zeroext i1 @tvb_find_uint8_remaining(ptr noundef %0, i32 noundef %i.fh, i8 noundef zeroext 32, ptr noundef nonnull %i.a)
  br i1 %i.fk, label %.lr.ph.i, label %find_next_optional_token_in_line.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ak
  %.036.i = phi i32 [ %i.fr, %bb.ak ], [ %i.fh, %.preheader.i ] ; 4 uses
  %i.fl = load i32, ptr %i.a, align 4             ; 3 uses
  %i.fm = sub i32 %i.fl, %.036.i                  ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.ak, label %find_next_optional_token_in_line.exit.thread44

find_next_optional_token_in_line.exit.thread44:   ; preds = %.lr.ph.i
  store i32 %i.fl, ptr %i.c, align 4
  store i32 %.036.i, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i
  %i.fo = add i32 %.036.i, -1
  %i.fp = call ptr @proto_tree_add_expert(ptr noundef %i.ek, ptr noundef null, ptr noundef nonnull @ei_sdp_invalid_line_space, ptr noundef %0, i32 noundef %i.fo, i32 noundef 2) ; 0 uses
  %i.fq = load i32, ptr %i.a, align 4
  %i.fr = add i32 %i.fq, 1                        ; 3 uses
  %i.fs = call zeroext i1 @tvb_find_uint8_remaining(ptr noundef %0, i32 noundef %i.fr, i8 noundef zeroext 32, ptr noundef nonnull %i.a)
  br i1 %i.fs, label %.lr.ph.i, label %find_next_optional_token_in_line.exit

find_next_optional_token_in_line.exit:            ; preds = %bb.ak, %.preheader.i
  %.0.lcssa.i = phi i32 [ %i.fh, %.preheader.i ], [ %i.fr, %bb.ak ] ; 3 uses
  %i.ft = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.0.lcssa.i) ; 2 uses
  %i.fu = load i32, ptr %i.a, align 4             ; 2 uses
  store i32 %i.fu, ptr %i.c, align 4
  store i32 %.0.lcssa.i, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.fv = icmp eq i32 %i.ft, 0
  br i1 %i.fv, label %dissect_sdp_repeat_time.exit, label %bb.al

bb.al:                                            ; preds = %find_next_optional_token_in_line.exit.thread44, %find_next_optional_token_in_line.exit
  %i.fw = phi i32 [ %i.fl, %find_next_optional_token_in_line.exit.thread44 ], [ %i.fu, %find_next_optional_token_in_line.exit ] ; 2 uses
  %.02533.i48 = phi i32 [ %i.fm, %find_next_optional_token_in_line.exit.thread44 ], [ %i.ft, %find_next_optional_token_in_line.exit ]
  %.234.i47 = phi i32 [ %.036.i, %find_next_optional_token_in_line.exit.thread44 ], [ %.0.lcssa.i, %find_next_optional_token_in_line.exit ]
  %i.fx = load i32, ptr @hf_repeat_time_offset, align 4
  %i.fy = call ptr @proto_tree_add_item(ptr noundef %i.ek, i32 noundef %i.fx, ptr noundef %0, i32 noundef %.234.i47, i32 noundef %.02533.i48, i32 noundef 2) ; 0 uses
  %i.fz = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %i.fw)
  %.not.i41 = icmp eq i32 %i.fz, 0
  br i1 %.not.i41, label %dissect_sdp_repeat_time.exit, label %.peel.next.i, !llvm.loop !13

dissect_sdp_repeat_time.exit:                     ; preds = %find_next_optional_token_in_line.exit, %bb.al, %find_next_optional_token_in_line.exit.thread, %bb.ah, %bb.ai, %.peel.begin.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.aw

bb.am:                                            ; preds = %bb.ag
  %i.ga = load i32, ptr @hf_timezone, align 4
  %i.gb = icmp eq i32 %2, %i.ga
  br i1 %i.gb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @dissect_sdp_timezone(ptr noundef %0, ptr noundef %3)
  br label %bb.aw

bb.ao:                                            ; preds = %bb.am
  %i.gc = load i32, ptr @hf_encryption_key, align 4
  %i.gd = icmp eq i32 %2, %i.gc
  br i1 %i.gd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @dissect_sdp_encryption_key(ptr noundef %0, ptr noundef %3)
  br label %bb.aw

bb.aq:                                            ; preds = %bb.ao
  %i.ge = load i32, ptr @hf_session_attribute, align 4
  %i.gf = icmp eq i32 %2, %i.ge
  br i1 %i.gf, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call fastcc void @dissect_sdp_session_attribute(ptr noundef %0, ptr noundef %1, ptr noundef %3)
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.gg = load i32, ptr @hf_media, align 4
  %i.gh = icmp eq i32 %2, %i.gg
  br i1 %i.gh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call fastcc void @dissect_sdp_media(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %7)
  br label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.gi = load i32, ptr @hf_media_attribute, align 4
  %i.gj = icmp eq i32 %2, %i.gi
  br i1 %i.gj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call fastcc void @dissect_sdp_media_attribute(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  br label %bb.aw

bb.aw:                                            ; preds = %dissect_sdp_connection_info.exit, %dissect_sdp_time.exit, %bb.an, %bb.ar, %bb.au, %bb.av, %bb.at, %bb.ap, %dissect_sdp_repeat_time.exit, %dissect_sdp_bandwidth.exit, %dissect_sdp_owner.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @rtp_dyn_payload_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @complete_descriptions(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 2056       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @wmem_array_get_count(ptr noundef %i.f) ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = tail call ptr @wmem_array_get_raw(ptr noundef %i.h) ; 5 uses
  %i.j = icmp ult i32 %1, %i.g
  br i1 %i.j, label %.lr.ph83.preheader, label %._crit_edge

.lr.ph83.preheader:                               ; preds = %bb.a
  %i.k = zext i32 %1 to i64                       ; 4 uses
  %i.l = zext i32 %i.g to i64                     ; 3 uses
  %indvars.iv.next98125 = add nuw nsw i64 %i.k, 1 ; 2 uses
  %i.m = icmp samesign ult i64 %indvars.iv.next98125, %i.l
  br i1 %i.m, label %.lr.ph, label %.lr.ph90

.critedge2.loopexit:                              ; preds = %bb.b
  %.not = icmp eq ptr %spec.select, null
  br i1 %.not, label %.lr.ph83, label %.lr.ph88, !llvm.loop !14

.lr.ph88:                                         ; preds = %.critedge2.loopexit
  %i.n = getelementptr i8, ptr %i.r, i64 10
  %i.o = getelementptr i8, ptr %i.r, i64 4        ; 2 uses
  %i.p = getelementptr i8, ptr %i.r, i64 136
  br label %bb.c

.lr.ph83:                                         ; preds = %.critedge2.loopexit
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv.next98128, 1 ; 2 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next98, %i.l
  br i1 %i.q, label %.lr.ph, label %.lr.ph90, !llvm.loop !14

.lr.ph:                                           ; preds = %.lr.ph83.preheader, %.lr.ph83
  %indvars.iv.next98128 = phi i64 [ %indvars.iv.next98, %.lr.ph83 ], [ %indvars.iv.next98125, %.lr.ph83.preheader ] ; 2 uses
  %indvars.iv127.in = phi i64 [ %indvars.iv127, %.lr.ph83 ], [ %i.k, %.lr.ph83.preheader ]
  %indvars.iv97126 = phi i64 [ %indvars.iv.next98128, %.lr.ph83 ], [ %i.k, %.lr.ph83.preheader ]
  %indvars.iv127 = add nuw nsw i64 %indvars.iv127.in, 1 ; 2 uses
  %.idx122 = mul i64 %indvars.iv97126, 184        ; 2 uses
  %i.r = getelementptr i8, ptr %i.i, i64 %.idx122 ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 10
  %i.t = load i16, ptr %i.s, align 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv94 = phi i64 [ %indvars.iv127, %.lr.ph ], [ %indvars.iv.next95, %bb.b ] ; 2 uses
  %i.u = getelementptr [184 x i8], ptr %i.i, i64 %indvars.iv94
  %i.v = getelementptr i8, ptr %i.u, i64 10
  %i.w = load i16, ptr %i.v, align 2
  %i.x = icmp eq i16 %i.t, %i.w
  %spec.select = select i1 %i.x, ptr %i.r, ptr null ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next95, %i.l
  %.not76 = icmp eq ptr %spec.select, null
  %or.cond78 = select i1 %i.y, i1 %.not76, i1 false
  br i1 %or.cond78, label %bb.b, label %.critedge2.loopexit, !llvm.loop !15

bb.c:                                             ; preds = %.lr.ph88, %.loopexit
  %indvars.iv100 = phi i64 [ %i.k, %.lr.ph88 ], [ %indvars.iv.next101, %.loopexit ] ; 2 uses
  %.idx = mul i64 %indvars.iv100, 184             ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %.idx    ; 4 uses
  %i.aa = load i16, ptr %i.n, align 2
  %i.ab = getelementptr i8, ptr %i.z, i64 10
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = icmp eq i16 %i.aa, %i.ac
  br i1 %i.ad, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %i.z, i64 8
  store i8 1, ptr %i.ae, align 8
  %.not75 = icmp eq i64 %.idx, %.idx122
  br i1 %.not75, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.z, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = load i32, ptr %i.o, align 4
  %i.ai = or i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.o, align 4
  %i.aj = getelementptr i8, ptr %i.z, i64 136
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %.06486 = phi i32 [ 0, %bb.e ], [ %i.ar, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call zeroext i1 @rtp_dyn_payload_get_full(ptr noundef %i.ak, i32 noundef %.06486, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.p, align 8
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = load i32, ptr %i.b, align 4
  %i.ap = load i32, ptr %i.c, align 4
  %i.aq = load ptr, ptr %i.d, align 8
  call void @rtp_dyn_payload_insert_full(ptr noundef %i.am, i32 noundef %.06486, ptr noundef %i.an, i32 noundef %i.ao, i32 noundef %i.ap, ptr noundef %i.aq)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ar = add nuw nsw i32 %.06486, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, 128
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !16

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.c
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next101 to i32
  %exitcond103.not = icmp eq i32 %i.g, %lftr.wideiv
  br i1 %exitcond103.not, label %.lr.ph90, label %bb.c, !llvm.loop !17

.lr.ph90:                                         ; preds = %.lr.ph83, %.loopexit, %.lr.ph83.preheader
  %.not73 = icmp eq i32 %1, 0
  %i.as = zext i32 %1 to i64                      ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %bb.s, %bb.a
  ret void

bb.i:                                             ; preds = %.lr.ph90, %bb.s
  %indvars.iv104 = phi i64 [ %i.as, %.lr.ph90 ], [ %indvars.iv.next105, %bb.s ] ; 3 uses
  %i.at = getelementptr [184 x i8], ptr %i.i, i64 %indvars.iv104 ; 13 uses
  %i.au = getelementptr i8, ptr %i.at, i64 12     ; 2 uses
  %i.av = load i16, ptr %i.au, align 4
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr i8, ptr %i.at, i64 10
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = add i16 %i.ay, 1
  store i16 %i.az, ptr %i.au, align 4
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i
  br i1 %.not73, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ba = getelementptr i8, ptr %i.at, i64 10
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = sub nuw nsw i64 %indvars.iv104, %i.as
  %i.be = getelementptr [184 x i8], ptr %i.i, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 10
  store i16 0, ptr %i.bf, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.thread
  %i.bg = load i32, ptr %i.at, align 8
  %i.bh = icmp eq i32 %i.bg, 4
  %i.bi = load ptr, ptr @msrp_handle, align 8
  %i.bj = icmp ne ptr %i.bi, null
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.at, i64 152    ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %.not74 = icmp eq i32 %i.bl, 0
  br i1 %.not74, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = call ptr @wmem_file_scope()
  %i.bn = getelementptr i8, ptr %i.at, i64 16     ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %free_address_wmem.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr i8, ptr %i.at, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.q, label %free_address_wmem.exit

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr i8, ptr %i.at, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not6.i = icmp eq ptr %i.bt, null
  br i1 %.not6.i, label %free_address_wmem.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @wmem_free(ptr noundef %i.bm, ptr noundef nonnull %i.bt)
  br label %free_address_wmem.exit

free_address_wmem.exit:                           ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %i.bu = getelementptr i8, ptr %i.at, i64 160
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load <2 x i32>, ptr %i.bk, align 8
  store <2 x i32> %i.bw, ptr %i.bn, align 8
  %i.bx = getelementptr i8, ptr %i.at, i64 24
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %i.at, i64 32
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %i.at, i64 176
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.at, i64 10
  store i16 %i.ca, ptr %i.cb, align 2
  br label %bb.s

bb.s:                                             ; preds = %free_address_wmem.exit, %bb.n, %bb.m
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %lftr.wideiv.a = trunc i64 %indvars.iv.next105 to i32
  %exitcond107.not = icmp eq i32 %i.g, %lftr.wideiv.a
  br i1 %exitcond107.not, label %._crit_edge, label %bb.i, !llvm.loop !18
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @apply_sdp_transport(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @global_sdp_establish_conversation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0130 = phi i32 [ %i.e, %bb.c ], [ %2, %bb.b ] ; 6 uses
  %i.f = getelementptr i8, ptr %1, i64 2056       ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @wmem_array_get_count(ptr noundef %i.g)
  %.not165 = icmp eq i32 %i.h, 0
  br i1 %.not165, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.not147 = icmp eq ptr %3, null                 ; 3 uses
  %i.i = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.j = getelementptr i8, ptr %3, i64 9          ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 2072
  %i.l = getelementptr i8, ptr %1, i64 2076
  %i.m = getelementptr i8, ptr %1, i64 2084
  %i.n = getelementptr i8, ptr %0, i64 20         ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.at, %bb.d
  %i.o = getelementptr i8, ptr %0, i64 416
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i32, ptr @proto_sdp, align 4
  %i.r = tail call ptr @p_get_proto_data(ptr noundef %i.p, ptr noundef %0, i32 noundef %i.q, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.av, label %bb.au

bb.e:                                             ; preds = %.lr.ph, %bb.at
  %.0124164 = phi i32 [ 0, %.lr.ph ], [ %i.do, %bb.at ] ; 2 uses
  %.0125163 = phi i1 [ false, %.lr.ph ], [ %.3, %bb.at ] ; 6 uses
  %.0126162 = phi ptr [ null, %.lr.ph ], [ %.3129, %bb.at ] ; 7 uses
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = tail call ptr @wmem_array_index(ptr noundef %i.s, i32 noundef %.0124164) ; 23 uses
  %i.u = getelementptr i8, ptr %i.t, i64 40       ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not146 = icmp eq ptr %i.v, null
  br i1 %.not146, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.t, i64 144
  store i8 1, ptr %i.w, align 8
  br i1 %.not147, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.i, align 8
  %.not148 = icmp eq ptr %i.x, null
  br i1 %.not148, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call ptr @wmem_file_scope()
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = tail call ptr @determine_http_location_target(ptr noundef %i.y, ptr noundef %i.z, ptr noundef %i.aa) ; 3 uses
  %.not149 = icmp eq ptr %i.ab, null
  br i1 %.not149, label %._crit_edge166, label %bb.i

._crit_edge166:                                   ; preds = %bb.h
  %.pre = load ptr, ptr %i.u, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ab, ptr %i.u, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge166, %bb.i, %bb.g, %bb.f
  %i.ac = phi ptr [ %.pre, %._crit_edge166 ], [ %i.ab, %bb.i ], [ %i.v, %bb.g ], [ %i.v, %bb.f ]
  %i.ad = tail call ptr @ascii_strdown_inplace(ptr noundef %i.ac) ; 0 uses
  %i.ae = load ptr, ptr @sdp_rtsp_control_map, align 8
  %i.af = load ptr, ptr %i.u, align 8
  %i.ag = getelementptr i8, ptr %i.t, i64 136     ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call ptr @wmem_map_insert(ptr noundef %i.ae, ptr noundef %i.af, ptr noundef %i.ah) ; 3 uses
  %.not150 = icmp eq ptr %i.ai, null
  br i1 %.not150, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ag, align 8
  %.not151 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not151, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @rtp_dyn_payload_free(ptr noundef nonnull %i.ai)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.e
end_hunk_0
