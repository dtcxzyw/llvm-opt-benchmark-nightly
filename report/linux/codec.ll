Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/codec?download=true
inline.NumInlined: 288
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@snd_hda_mixer_amp_volume_put:bb.a
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %1, i64 80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.031 = phi ptr [ %i.s, %bb.c ], [ %i.m, %bb.a ]
  %.0 = phi i32 [ %i.q, %bb.c ], [ 0, %bb.a ]     ; 2 uses
  %i.t = and i32 %i.f, 131072
  %.not37 = icmp eq i32 %i.t, 0
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %.031, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = tail call fastcc i32 @update_amp_value(ptr noundef %i.b, i16 noundef zeroext %i.e, i32 noundef 1, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.v) #24, !srcloc !43 ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 0, i32 %.0
  %spec.select = or i32 %i.y, %i.w
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.032 = phi i32 [ %spec.select, %bb.e ], [ %i.q, %bb.b ], [ %.0, %bb.d ]
  ret i32 %.032
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @update_amp_value(ptr noundef %0, i16 noundef zeroext %1, i32 noundef range(i32 0, 2) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 16) %4, i32 noundef range(i32 0, 64) %5, i32 noundef %6) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %6, 0
  %i.c = add i32 %6, %5
  %spec.select = select i1 %.not, i32 0, i32 %i.c ; 2 uses
  %i.d = zext i16 %1 to i32                       ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 860        ; 2 uses
  %i.f = load i16, ptr %i.e, align 4              ; 2 uses
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = icmp ult i16 %1, %i.f
  br i1 %i.h, label %get_wcaps.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 856
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.g
  %.not.i.i.i = icmp ugt i32 %i.k, %i.d
  br i1 %.not.i.i.i, label %get_wcaps.exit.i.i, label %get_wcaps.exit.thread.i.i

get_wcaps.exit.i.i:                               ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 1080
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = sub nuw nsw i32 %i.d, %i.g
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 8
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %get_wcaps.exit.thread.i.i, label %get_amp_max_value.exit

get_wcaps.exit.thread.i.i:                        ; preds = %get_wcaps.exit.i.i, %bb.b, %bb.a
  %i.s = getelementptr i8, ptr %0, i64 800
  %i.t = load i16, ptr %i.s, align 8
  br label %get_amp_max_value.exit

get_amp_max_value.exit:                           ; preds = %get_wcaps.exit.i.i, %get_wcaps.exit.thread.i.i
  %.0.i.i = phi i16 [ %1, %get_wcaps.exit.i.i ], [ %i.t, %get_wcaps.exit.thread.i.i ]
  %.not.i = icmp eq i32 %3, 0                     ; 2 uses
  %i.u = select i1 %.not.i, i32 13, i32 18        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !annotation !25
  %i.v = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %.0.i.i, i32 noundef range(i32 12, 19) %i.u, ptr noundef nonnull %i.b) #21
  %i.w = load i32, ptr %i.b, align 4
  %.inv.i.i.i = icmp sgt i32 %i.v, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.x = lshr i32 %i.w, 8
  %i.y = and i32 %i.x, 127
  %i.z = select i1 %.inv.i.i.i, i32 %i.y, i32 127
  %i.aa = icmp ugt i32 %spec.select, %i.z
  br i1 %i.aa, label %bb.e, label %bb.c

bb.c:                                             ; preds = %get_amp_max_value.exit
  %i.ab = load i16, ptr %i.e, align 4             ; 2 uses
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = icmp ult i16 %1, %i.ab
  br i1 %i.ad, label %get_wcaps.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %0, i64 856
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add i32 %i.af, %i.ac
  %.not.i.i.i.i = icmp ugt i32 %i.ag, %i.d
  br i1 %.not.i.i.i.i, label %get_wcaps.exit.i.i.i, label %get_wcaps.exit.thread.i.i.i

get_wcaps.exit.i.i.i:                             ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %0, i64 1080
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = sub nuw nsw i32 %i.d, %i.ac
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 8
  %.not.i.i.i17 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i17, label %get_wcaps.exit.thread.i.i.i, label %snd_hda_codec_amp_update.exit

get_wcaps.exit.thread.i.i.i:                      ; preds = %get_wcaps.exit.i.i.i, %bb.d, %bb.c
  %i.ao = getelementptr i8, ptr %0, i64 800
  %i.ap = load i16, ptr %i.ao, align 8
  br label %snd_hda_codec_amp_update.exit

snd_hda_codec_amp_update.exit:                    ; preds = %get_wcaps.exit.i.i.i, %get_wcaps.exit.thread.i.i.i
  %.0.i.i.i = phi i16 [ %1, %get_wcaps.exit.i.i.i ], [ %i.ap, %get_wcaps.exit.thread.i.i.i ]
  %i.aq = shl i32 %i.d, 20
  %.not.i.i16 = icmp eq i32 %2, 0
  %i.ar = select i1 %.not.i.i16, i32 8192, i32 0
  %i.as = or disjoint i32 %i.ar, %i.aq
  %i.at = select i1 %.not.i, i32 0, i32 32768
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = or disjoint i32 %i.au, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !annotation !25
  %i.aw = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %.0.i.i.i, i32 noundef range(i32 12, 19) %i.u, ptr noundef nonnull %i.a) #21
  %i.ax = load i32, ptr %i.a, align 4
  %.inv.i.i.i.i = icmp sgt i32 %i.aw, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ay = and i32 %i.ax, -1073741824
  %i.az = icmp eq i32 %i.ay, 1073741824
  %i.ba = select i1 %.inv.i.i.i.i, i1 %i.az, i1 false
  %spec.select.v.i.i = select i1 %i.ba, i32 720912, i32 720896
  %spec.select.i.i = or disjoint i32 %spec.select.v.i.i, %i.av
  %i.bb = call i32 @snd_hdac_regmap_update_raw(ptr noundef %0, i32 noundef %spec.select.i.i, i32 noundef 127, i32 noundef %spec.select) #21
  br label %bb.e

bb.e:                                             ; preds = %get_amp_max_value.exit, %snd_hda_codec_amp_update.exit
  %.014 = phi i32 [ %i.bb, %snd_hda_codec_amp_update.exit ], [ -22, %get_amp_max_value.exit ]
  ret i32 %.014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -14, 1) i32 @snd_hda_mixer_amp_tlv(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 noundef %2, ptr noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = icmp ult i32 %2, 16
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 120
  %.val = load i64, ptr %i.d, align 8             ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 128
  %.val3 = load ptr, ptr %i.e, align 8            ; 5 uses
  %i.f = trunc i64 %.val to i16                   ; 2 uses
  %i.g = trunc i64 %.val to i32                   ; 3 uses
  %i.h = and i32 %i.g, 65535                      ; 2 uses
  %i.i = getelementptr i8, ptr %.val3, i64 860
  %i.j = load i16, ptr %i.i, align 4              ; 2 uses
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = icmp ugt i16 %i.j, %i.f
  br i1 %i.l, label %get_wcaps.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val3, i64 856
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, %i.k
  %.not.i.i.i = icmp ugt i32 %i.o, %i.h
  br i1 %.not.i.i.i, label %get_wcaps.exit.i.i, label %get_wcaps.exit.thread.i.i

get_wcaps.exit.i.i:                               ; preds = %bb.c
  %i.p = getelementptr i8, ptr %.val3, i64 1080
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = sub nuw nsw i32 %i.h, %i.k
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 8
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %get_wcaps.exit.thread.i.i, label %get_ctl_amp_tlv.exit

get_wcaps.exit.thread.i.i:                        ; preds = %get_wcaps.exit.i.i, %bb.c, %bb.b
  %i.w = getelementptr i8, ptr %.val3, i64 800
  %i.x = load i16, ptr %i.w, align 8
  br label %get_ctl_amp_tlv.exit

get_ctl_amp_tlv.exit:                             ; preds = %get_wcaps.exit.i.i, %get_wcaps.exit.thread.i.i
  %.0.i.i = phi i16 [ %i.f, %get_wcaps.exit.i.i ], [ %i.x, %get_wcaps.exit.thread.i.i ]
  %i.y = and i64 %.val, 536870912
  %.not.i = icmp eq i64 %i.y, 0
  %i.z = and i32 %i.g, 262144
  %.not1.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not1.i, i32 13, i32 18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !annotation !25
  %i.ab = call i32 @_snd_hdac_read_parm(ptr noundef %.val3, i16 noundef zeroext %.0.i.i, i32 noundef range(i32 12, 19) %i.aa, ptr noundef nonnull %i.a) #21
  %i.ac = load i32, ptr %i.a, align 4
  %.inv.i.i.i = icmp sgt i32 %i.ab, -1
  %i.ad = select i1 %.inv.i.i.i, i32 %i.ac, i32 -1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ae = lshr i32 %i.ad, 16
  %i.af = and i32 %i.ae, 127
  %i.ag = mul nuw nsw i32 %i.af, 25
  %i.ah = add nuw nsw i32 %i.ag, 25               ; 3 uses
  %i.ai = and i32 %i.ad, 1073741824
  %.not23.i = icmp eq i32 %i.ai, 0
  %or.cond.i = select i1 %.not.i, i1 %.not23.i, i1 false
  %4 = or disjoint i32 %i.ah, 65536
  %.0.i4 = select i1 %or.cond.i, i32 %i.ah, i32 %4
  %i.aj = lshr i32 %i.g, 23
  %i.ak = and i32 %i.aj, 63
  %i.al = and i32 %i.ad, 127
  %i.am = sub nsw i32 %i.ak, %i.al
  %i.an = mul nsw i32 %i.ah, %i.am
  store i32 1, ptr %i.b, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 8, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.an, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.0.i4, ptr %i.aq, align 4
  %i.ar = call i64 @_copy_to_user(ptr noundef %3, ptr noundef nonnull %i.b, i64 noundef 16) #21
  %.fr = freeze i64 %i.ar
  %.not = icmp eq i64 %.fr, 0
  %spec.select = select i1 %.not, i32 0, i32 -14
  br label %bb.d

bb.d:                                             ; preds = %get_ctl_amp_tlv.exit, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ %spec.select, %get_ctl_amp_tlv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_hda_set_vmaster_tlv(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = zext i16 %1 to i32                       ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 860
  %i.d = load i16, ptr %i.c, align 4              ; 2 uses
  %i.e = zext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp ult i16 %1, %i.d
  br i1 %i.f, label %get_wcaps.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 856
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, %i.e
  %.not.i.i = icmp ugt i32 %i.i, %i.b
  br i1 %.not.i.i, label %get_wcaps.exit.i, label %get_wcaps.exit.thread.i

get_wcaps.exit.i:                                 ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 1080
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = sub nuw nsw i32 %i.b, %i.e
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 8
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %get_wcaps.exit.thread.i, label %query_amp_caps.exit

get_wcaps.exit.thread.i:                          ; preds = %get_wcaps.exit.i, %bb.b, %bb.a
  %i.q = getelementptr i8, ptr %0, i64 800
  %i.r = load i16, ptr %i.q, align 8
  br label %query_amp_caps.exit

query_amp_caps.exit:                              ; preds = %get_wcaps.exit.i, %get_wcaps.exit.thread.i
  %.0.i = phi i16 [ %1, %get_wcaps.exit.i ], [ %i.r, %get_wcaps.exit.thread.i ]
  %i.s = icmp eq i32 %2, 1
  %i.t = select i1 %i.s, i32 18, i32 13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !annotation !25
  %i.u = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %.0.i, i32 noundef range(i32 12, 19) %i.t, ptr noundef nonnull %i.a) #21
  %i.v = load i32, ptr %i.a, align 4
  %.inv.i.i = icmp sgt i32 %i.u, -1
  %i.w = select i1 %.inv.i.i, i32 %i.v, i32 -1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.x = lshr i32 %i.w, 8
  %i.y = and i32 %i.x, 127
  %i.z = lshr i32 %i.w, 16
  %i.aa = and i32 %i.z, 127
  %i.ab = mul nuw nsw i32 %i.aa, 25
  %i.ac = add nuw nsw i32 %i.ab, 25               ; 2 uses
  store i32 1, ptr %3, align 4
  %i.ad = getelementptr i8, ptr %3, i64 4
  store i32 8, ptr %i.ad, align 4
  %i.ae = mul nuw nsw i32 %i.y, %i.ac
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = getelementptr i8, ptr %3, i64 8
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr i8, ptr %3, i64 12
  store i32 %i.ac, ptr %i.ah, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @snd_hda_find_mixer_ctl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.snd_ctl_elem_id, align 4    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %2, i8 0, i64 60, i1 false)
  store i32 2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 0, ptr %i.b, align 4
  %i.c = tail call i64 @strlen(ptr noundef %1) #21
  %i.d = icmp ugt i64 %i.c, 43
  br i1 %i.d, label %find_mixer_ctl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = call i64 @sized_strscpy(ptr noundef nonnull %i.e, ptr noundef %1, i64 noundef 44) #21 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 976
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr @snd_ctl_find_id(ptr noundef %i.h, ptr noundef nonnull %2) #21
  br label %find_mixer_ctl.exit

find_mixer_ctl.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @snd_hda_ctl_add(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 28         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 6 uses
  %i.c = and i32 %i.b, 1073741824
  %.not29 = icmp eq i32 %i.c, 0
  br i1 %.not29, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i16 %1, 0
  br i1 %i.d, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 120
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i16
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.025.ph = phi i16 [ %1, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp slt i32 %i.b, 0
  %i.i = icmp eq i16 %.025.ph, 0
  %or.cond34 = select i1 %i.h, i1 %i.i, i1 false
  %i.j = trunc i32 %i.b to i16
  %spec.select35 = select i1 %or.cond34, i16 %i.j, i16 %.025.ph
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.b, 0
  %i.l = icmp eq i16 %1, 0
  %or.cond = and i1 %i.l, %i.k
  %i.m = trunc i32 %i.b to i16
  %spec.select = select i1 %or.cond, i16 %i.m, i16 %1 ; 2 uses
  %.not30 = icmp ult i32 %i.b, 1073741824
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %spec.select39 = phi i16 [ %spec.select35, %.thread ], [ %spec.select, %bb.e ]
  %.037 = phi i16 [ 1, %.thread ], [ 0, %bb.e ]
  store i32 0, ptr %i.a, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %spec.select40 = phi i16 [ %spec.select39, %bb.f ], [ %spec.select, %bb.e ]
  %.038 = phi i16 [ %.037, %bb.f ], [ 0, %bb.e ]
  %i.n = getelementptr i8, ptr %0, i64 976
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 @snd_ctl_add(ptr noundef %i.o, ptr noundef nonnull %2) #21 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 1088
  %i.s = tail call ptr @snd_array_new(ptr noundef %i.r) #21 ; 4 uses
  %.not31 = icmp eq ptr %i.s, null
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %2, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 12
  store i16 %spec.select40, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.s, i64 14
  store i16 %.038, ptr %i.u, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.a, %bb.i
  %.024 = phi i32 [ -22, %bb.a ], [ 0, %bb.i ], [ %i.p, %bb.g ], [ -12, %bb.h ]
  ret i32 %.024
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @snd_hda_lock_devices(ptr nofree noundef readonly captures(address) %0) #0 align 16 prefalign(16) {
bb.a:
end_hunk_0
begin_hunk_1_@__snd_hda_add_vmaster:bb.a
.loopexit.us.i60:                                 ; preds = %bb.s, %bb.t, %.preheader.us.i61, %bb.q, %.lr.ph52.split.us.i56
  %i.br = phi i32 [ %i.be, %.lr.ph52.split.us.i56 ], [ %i.be, %.preheader.us.i61 ], [ %.pre.i69, %bb.t ], [ %i.be, %bb.q ], [ %i.be, %bb.s ] ; 2 uses
  %i.bs = add nuw i32 %.02651.us.i57, 1           ; 2 uses
  %i.bt = icmp ult i32 %i.bs, %i.br
  br i1 %i.bt, label %.lr.ph52.split.us.i56, label %map_followers.exit70.thread, !llvm.loop !45

.lr.ph52.split.i40:                               ; preds = %.lr.ph52.i38, %.loopexit.i44
  %.02651.i41 = phi i32 [ %i.ch, %.loopexit.i44 ], [ 0, %.lr.ph52.i38 ] ; 2 uses
  %i.bu = sext i32 %.02651.i41 to i64
  %i.bv = getelementptr [16 x i8], ptr %i.bc, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8            ; 4 uses
  %.not.i42 = icmp eq ptr %i.bw, null
  br i1 %.not.i42, label %.loopexit.i44, label %bb.u

bb.u:                                             ; preds = %.lr.ph52.split.i40
  %i.bx = getelementptr i8, ptr %i.bw, i64 20
  %i.by = load i32, ptr %i.bx, align 4
  %.not33.i43 = icmp eq i32 %i.by, 2
  br i1 %.not33.i43, label %.preheader.i46, label %.loopexit.i44

.preheader.i46:                                   ; preds = %bb.u
  %i.bz = load ptr, ptr %3, align 8               ; 2 uses
  %.not3449.i47 = icmp eq ptr %i.bz, null
  br i1 %.not3449.i47, label %.loopexit.i44, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.preheader.i46
  %i.ca = getelementptr i8, ptr %i.bw, i64 32
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i48
  %i.cb = phi ptr [ %i.bz, %.lr.ph.i48 ], [ %i.cg, %bb.w ]
  %.02750.i49 = phi ptr [ %3, %.lr.ph.i48 ], [ %i.cf, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.a, i8 0, i64 44, i1 false), !annotation !25
  %i.cc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 44, ptr noundef @.str.28, ptr noundef nonnull %i.cb, ptr noundef nonnull %4) #21 ; 0 uses
  %i.cd = call i32 @strcmp(ptr noundef %i.ca, ptr noundef nonnull dereferenceable(1) %i.a) #21
  %.not36.i50 = icmp eq i32 %i.cd, 0
  br i1 %.not36.i50, label %.split.i52, label %bb.w

.split.i52:                                       ; preds = %bb.v
  %i.ce = tail call i32 @_snd_ctl_add_follower(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.bw, i32 noundef 0) #21 ; 2 uses
  %.not37.i53 = icmp eq i32 %i.ce, 0
  br i1 %.not37.i53, label %bb.x, label %map_followers.exit70

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.cf = getelementptr i8, ptr %.02750.i49, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not34.i51 = icmp eq ptr %i.cg, null
  br i1 %.not34.i51, label %.loopexit.i44, label %bb.v, !llvm.loop !44

bb.x:                                             ; preds = %.split.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit.i44

.loopexit.i44:                                    ; preds = %bb.w, %bb.x, %.preheader.i46, %bb.u, %.lr.ph52.split.i40
  %i.ch = add nuw i32 %.02651.i41, 1              ; 2 uses
  %i.ci = load i32, ptr %i.c, align 8
  %i.cj = icmp ult i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph52.split.i40, label %map_followers.exit70.thread, !llvm.loop !45

map_followers.exit70:                             ; preds = %.split.i52, %.split.us.us.i67
  %.us-phi.i55 = phi i32 [ %i.bq, %.split.us.us.i67 ], [ %i.ce, %.split.i52 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ck = icmp slt i32 %.us-phi.i55, 0
  br i1 %i.ck, label %map_followers.exit.thread, label %map_followers.exit70.thread

map_followers.exit70.thread:                      ; preds = %.loopexit.i44, %.loopexit.us.i60, %bb.p, %map_followers.exit70
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 88), align 8
  %i.cm = tail call noalias align 8 dereferenceable_or_null(1224) ptr @__kmalloc_cache_noprof(ptr noundef %i.cl, i32 noundef 3520, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) 1224) #26 ; 5 uses
  %.not.i71 = icmp eq ptr %i.cm, null
  br i1 %.not.i71, label %put_kctl_with_value.exit, label %bb.y

bb.y:                                             ; preds = %map_followers.exit70.thread
  %i.cn = getelementptr i8, ptr %i.cm, i64 72
  %i.co = getelementptr i8, ptr %i.ai, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call i32 %i.cp(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.cm) #21, !inline_history !9 ; 0 uses
  %i.cr = icmp ugt ptr %i.cm, inttoptr (i64 -4096 to ptr)
  br i1 %i.cr, label %put_kctl_with_value.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @kfree(ptr noundef nonnull %i.cm) #21
  br label %put_kctl_with_value.exit

put_kctl_with_value.exit:                         ; preds = %map_followers.exit70.thread, %bb.y, %bb.z
  br i1 %5, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %put_kctl_with_value.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %0, ptr %8, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.ct, align 4
  %.not35 = icmp eq ptr %2, null
  %i.cu = select i1 %.not35, ptr @init_follower_unmute, ptr @init_follower_0dB
  %i.cv = call i32 @snd_ctl_apply_vmaster_followers(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.cu, ptr noundef nonnull %8) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %put_kctl_with_value.exit
  br i1 %.not, label %map_followers.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ai, ptr %7, align 8
  br label %map_followers.exit.thread

map_followers.exit.thread:                        ; preds = %.loopexit.i, %.loopexit.us.i, %bb.n, %bb.o, %bb.c, %bb.ab, %bb.ac, %map_followers.exit70, %.loopexit
  %.0 = phi i32 [ 0, %bb.ab ], [ -12, %.loopexit ], [ 0, %.loopexit.us.i ], [ %.us-phi.i55, %map_followers.exit70 ], [ 0, %bb.ac ], [ 0, %bb.c ], [ -12, %bb.o ], [ %i.ax, %bb.n ], [ 0, %.loopexit.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @snd_ctl_make_virtual_master(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_ctl_apply_vmaster_followers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, -2147483648) i32 @init_follower_0dB(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !annotation !25
  %i.c = getelementptr i8, ptr %1, i64 152
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = and i32 %i.d, 268435456
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 112
  %i.g = load ptr, ptr %i.f, align 8
  %.not33 = icmp eq ptr %i.g, @snd_hda_mixer_amp_tlv
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %2, align 8
  %i.i = getelementptr i8, ptr %1, i64 32
  %i.j = getelementptr i8, ptr %1, i64 76
  %i.k = load i32, ptr %i.j, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.h, ptr noundef @.str.29, ptr noundef %i.i, i32 noundef %i.k) #25
  br label %put_kctl_with_value.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %1, i64 120
  %.val = load i64, ptr %i.l, align 8             ; 3 uses
  %i.m = getelementptr i8, ptr %1, i64 128
  %.val39 = load ptr, ptr %i.m, align 8           ; 5 uses
  %i.n = trunc i64 %.val to i16                   ; 2 uses
  %i.o = trunc i64 %.val to i32                   ; 3 uses
  %i.p = and i32 %i.o, 65535                      ; 2 uses
  %i.q = getelementptr i8, ptr %.val39, i64 860
  %i.r = load i16, ptr %i.q, align 4              ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = icmp ugt i16 %i.r, %i.n
  br i1 %i.t, label %get_wcaps.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %.val39, i64 856
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add i32 %i.v, %i.s
  %.not.i.i.i = icmp ugt i32 %i.w, %i.p
  br i1 %.not.i.i.i, label %get_wcaps.exit.i.i, label %get_wcaps.exit.thread.i.i

get_wcaps.exit.i.i:                               ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.val39, i64 1080
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = sub nuw nsw i32 %i.p, %i.s
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 8
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %get_wcaps.exit.thread.i.i, label %.thread

get_wcaps.exit.thread.i.i:                        ; preds = %get_wcaps.exit.i.i, %bb.e, %bb.d
  %i.ae = getelementptr i8, ptr %.val39, i64 800
  %i.af = load i16, ptr %i.ae, align 8
  br label %.thread

.thread:                                          ; preds = %get_wcaps.exit.i.i, %get_wcaps.exit.thread.i.i
  %.0.i.i = phi i16 [ %i.n, %get_wcaps.exit.i.i ], [ %i.af, %get_wcaps.exit.thread.i.i ]
  %i.ag = and i64 %.val, 536870912
  %.not.i = icmp eq i64 %i.ag, 0
  %i.ah = and i32 %i.o, 262144
  %.not1.i = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not1.i, i32 13, i32 18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !annotation !25
  %i.aj = call i32 @_snd_hdac_read_parm(ptr noundef %.val39, i16 noundef zeroext %.0.i.i, i32 noundef range(i32 12, 19) %i.ai, ptr noundef nonnull %i.a) #21
  %i.ak = load i32, ptr %i.a, align 4
  %.inv.i.i.i = icmp sgt i32 %i.aj, -1
  %i.al = select i1 %.inv.i.i.i, i32 %i.ak, i32 -1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.am = lshr i32 %i.al, 16
  %i.an = and i32 %i.am, 127
  %i.ao = mul nuw nsw i32 %i.an, 25
  %i.ap = add nuw nsw i32 %i.ao, 25               ; 3 uses
  %i.aq = and i32 %i.al, 1073741824
  %.not23.i = icmp eq i32 %i.aq, 0
  %or.cond.i = select i1 %.not.i, i1 %.not23.i, i1 false
  %3 = or disjoint i32 %i.ap, 65536
  %.0.i = select i1 %or.cond.i, i32 %i.ap, i32 %3
  %i.ar = lshr i32 %i.o, 23
  %i.as = and i32 %i.ar, 63
  %i.at = and i32 %i.al, 127
  %i.au = sub nsw i32 %i.as, %i.at
  %i.av = mul nsw i32 %i.ap, %i.au
  store i32 1, ptr %i.b, align 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 8, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.0.i, ptr %i.ay, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.az = and i32 %i.d, 16
  %.not32 = icmp eq i32 %i.az, 0
  br i1 %.not32, label %put_kctl_with_value.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %1, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %.not34 = icmp eq ptr %i.bb, null
  br i1 %.not34, label %put_kctl_with_value.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.pre = load i32, ptr %i.bb, align 4
  %i.bc = icmp eq i32 %.pre, 1
  br i1 %i.bc, label %bb.i, label %put_kctl_with_value.exit

bb.i:                                             ; preds = %.thread, %bb.h
  %.04655 = phi ptr [ %i.b, %.thread ], [ %i.bb, %bb.h ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.04655, i64 12
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = and i32 %i.be, -65537                   ; 5 uses
  %.not36 = icmp eq i32 %i.bf, 0
  br i1 %.not36, label %put_kctl_with_value.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8            ; 3 uses
  %.not37 = icmp eq i32 %i.bh, 0
  %.not38 = icmp eq i32 %i.bh, %i.bf
  %or.cond = or i1 %.not37, %.not38
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bi, ptr noundef @.str.30, i32 noundef %i.bh, i32 noundef %i.bf) #25
  br label %put_kctl_with_value.exit

bb.l:                                             ; preds = %bb.j
  store i32 %i.bf, ptr %i.bg, align 8
  %i.bj = getelementptr i8, ptr %.04655, i64 8
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = sub i32 0, %i.bk
  %i.bm = sdiv i32 %i.bl, %i.bf                   ; 5 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %put_kctl_with_value.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 88), align 8
  %i.bp = call noalias align 8 dereferenceable_or_null(1224) ptr @__kmalloc_cache_noprof(ptr noundef %i.bo, i32 noundef 3520, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) 1224) #26 ; 6 uses
  %.not.i40 = icmp eq ptr %i.bp, null
  br i1 %.not.i40, label %put_kctl_with_value.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 72
  store i64 %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.bp, i64 80
  store i64 %i.bq, ptr %i.bs, align 8
  %i.bt = getelementptr i8, ptr %0, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call i32 %i.bu(ptr noundef %0, ptr noundef nonnull %i.bp) #21, !inline_history !9 ; 0 uses
  %i.bw = icmp ugt ptr %i.bp, inttoptr (i64 -4096 to ptr)
  br i1 %i.bw, label %put_kctl_with_value.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @kfree(ptr noundef nonnull %i.bp) #21
  br label %put_kctl_with_value.exit

put_kctl_with_value.exit:                         ; preds = %bb.f, %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.g, %bb.h, %bb.k, %bb.c
  %.028 = phi i32 [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.k ], [ %i.bm, %bb.o ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.l ], [ %i.bm, %bb.m ], [ %i.bm, %bb.n ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i32 %.028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -12, 1) i32 @init_follower_unmute(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 88), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(1224) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) 1224) #26 ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %put_kctl_with_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 72
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 80
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %0, ptr noundef nonnull %i.b) #21, !inline_history !9 ; 0 uses
  %i.h = icmp ugt ptr %i.b, inttoptr (i64 -4096 to ptr)
  br i1 %i.h, label %put_kctl_with_value.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @kfree(ptr noundef nonnull %i.b) #21
  br label %put_kctl_with_value.exit

put_kctl_with_value.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.015.i = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.015.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @snd_hda_add_vmaster_hook(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 16
  store ptr %0, ptr %i.d, align 8
  %i.e = tail call i32 @snd_ctl_add_vmaster_hook(ptr noundef nonnull %i.c, ptr noundef @vmaster_hook, ptr noundef %1) #21 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_ctl_add_vmaster_hook(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vmaster_hook(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.b(ptr noundef %i.d, i32 noundef %1) #21
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_hda_sync_vmaster_hook(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 968
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 1368
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 2
  %.not5 = icmp eq i8 %i.i, 0
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8
  tail call void @snd_ctl_sync_vmaster(ptr noundef %i.j, i1 noundef zeroext true) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @snd_ctl_sync_vmaster(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local noundef i32 @snd_hda_mixer_amp_switch_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((64, 68), (72, 76), (80, 96)) %1) #10 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 64
  store i32 1, ptr %i.c, align 8
  %i.d = and i64 %i.b, 196608
  %i.e = icmp eq i64 %i.d, 196608
  %i.f = select i1 %i.e, i32 2, i32 1
  %i.g = getelementptr i8, ptr %1, i64 72
end_hunk_1
