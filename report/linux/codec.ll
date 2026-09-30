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
  %i.cc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 44, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.cb, ptr noundef nonnull %4) #21 ; 0 uses
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.h, ptr noundef nonnull @.str.29, ptr noundef %i.i, i32 noundef %i.k) #25
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bi, ptr noundef nonnull @.str.30, i32 noundef %i.bh, i32 noundef %i.bf) #25
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
  %i.e = tail call i32 @snd_ctl_add_vmaster_hook(ptr noundef nonnull %i.c, ptr noundef nonnull @vmaster_hook, ptr noundef %1) #21 ; 0 uses
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
begin_hunk_2_@snd_hda_create_dig_out_ctls:bb.a

.split.us.loopexit:                               ; preds = %bb.aa
  store ptr %i.fo, ptr %i.ge, align 8
  br label %.split.us

bb.ab:                                            ; preds = %.preheader.split.preheader
  %i.gf = getelementptr i8, ptr %i.dj, i64 76
  store i32 %.014.i.lcssa, ptr %i.gf, align 4
  %i.gg = load i32, ptr %i.df, align 8
  %i.gh = add i32 %i.gg, -1
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr i8, ptr %i.dj, i64 120
  store i64 %i.gi, ptr %i.gj, align 8
  %i.gk = getelementptr i8, ptr %i.dj, i64 28     ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4            ; 2 uses
  %i.gm = and i32 %i.gl, 1073741824
  %.not29.i = icmp eq i32 %i.gm, 0
  br i1 %.not29.i, label %bb.ac, label %.thread.i

bb.ac:                                            ; preds = %bb.ab
  %.not30.i = icmp ult i32 %i.gl, 1073741824
  br i1 %.not30.i, label %bb.ad, label %.thread.i

.thread.i:                                        ; preds = %bb.ab, %bb.ac
  %.037.i = phi i16 [ 0, %bb.ac ], [ 1, %bb.ab ]
  store i32 0, ptr %i.gk, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %.thread.i, %bb.ac
  %.038.i = phi i16 [ %.037.i, %.thread.i ], [ 0, %bb.ac ]
  %i.gn = load ptr, ptr %i.at, align 8
  %i.go = call i32 @snd_ctl_add(ptr noundef %i.gn, ptr noundef nonnull %i.dj) #21 ; 2 uses
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %snd_hda_ctl_add.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gq = call ptr @snd_array_new(ptr noundef %i.di) #21 ; 4 uses
  %.not31.i = icmp eq ptr %i.gq, null
  br i1 %.not31.i, label %snd_hda_ctl_add.exit.thread, label %.preheader.split.1

.preheader.split.1:                               ; preds = %bb.ae
  store ptr %i.dj, ptr %i.gq, align 8
  %i.gr = getelementptr i8, ptr %i.gq, i64 12
  store i16 %1, ptr %i.gr, align 4
  %i.gs = getelementptr i8, ptr %i.gq, i64 14
  store i16 %.038.i, ptr %i.gs, align 2
  %i.gt = call ptr @snd_ctl_new1(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @dig_mixes, i64 80), ptr noundef %0) #21 ; 6 uses
  %.not64.1 = icmp eq ptr %i.gt, null
  br i1 %.not64.1, label %snd_hda_ctl_add.exit.thread, label %bb.af

bb.af:                                            ; preds = %.preheader.split.1
  %i.gu = getelementptr i8, ptr %i.gt, i64 76
  store i32 %.014.i.lcssa, ptr %i.gu, align 4
  %i.gv = load i32, ptr %i.df, align 8
  %i.gw = add i32 %i.gv, -1
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr i8, ptr %i.gt, i64 120
  store i64 %i.gx, ptr %i.gy, align 8
  %i.gz = getelementptr i8, ptr %i.gt, i64 28     ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4            ; 2 uses
  %i.hb = and i32 %i.ha, 1073741824
  %.not29.i.1 = icmp eq i32 %i.hb, 0
  br i1 %.not29.i.1, label %bb.ag, label %.thread.i.1

bb.ag:                                            ; preds = %bb.af
  %.not30.i.1 = icmp ult i32 %i.ha, 1073741824
  br i1 %.not30.i.1, label %bb.ah, label %.thread.i.1

.thread.i.1:                                      ; preds = %bb.ag, %bb.af
  %.037.i.1 = phi i16 [ 0, %bb.ag ], [ 1, %bb.af ]
  store i32 0, ptr %i.gz, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %.thread.i.1, %bb.ag
  %.038.i.1 = phi i16 [ %.037.i.1, %.thread.i.1 ], [ 0, %bb.ag ]
  %i.hc = load ptr, ptr %i.at, align 8
  %i.hd = call i32 @snd_ctl_add(ptr noundef %i.hc, ptr noundef nonnull %i.gt) #21 ; 2 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %snd_hda_ctl_add.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hf = call ptr @snd_array_new(ptr noundef %i.di) #21 ; 4 uses
  %.not31.i.1 = icmp eq ptr %i.hf, null
  br i1 %.not31.i.1, label %snd_hda_ctl_add.exit.thread, label %.preheader.split.2

.preheader.split.2:                               ; preds = %bb.ai
  store ptr %i.gt, ptr %i.hf, align 8
  %i.hg = getelementptr i8, ptr %i.hf, i64 12
  store i16 %1, ptr %i.hg, align 4
  %i.hh = getelementptr i8, ptr %i.hf, i64 14
  store i16 %.038.i.1, ptr %i.hh, align 2
  %i.hi = call ptr @snd_ctl_new1(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @dig_mixes, i64 160), ptr noundef %0) #21 ; 6 uses
  %.not64.2 = icmp eq ptr %i.hi, null
  br i1 %.not64.2, label %snd_hda_ctl_add.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %.preheader.split.2
  %i.hj = getelementptr i8, ptr %i.hi, i64 76
  store i32 %.014.i.lcssa, ptr %i.hj, align 4
  %i.hk = load i32, ptr %i.df, align 8
  %i.hl = add i32 %i.hk, -1
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr i8, ptr %i.hi, i64 120
  store i64 %i.hm, ptr %i.hn, align 8
  %i.ho = getelementptr i8, ptr %i.hi, i64 28     ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4            ; 2 uses
  %i.hq = and i32 %i.hp, 1073741824
  %.not29.i.2 = icmp eq i32 %i.hq, 0
  br i1 %.not29.i.2, label %bb.ak, label %.thread.i.2

bb.ak:                                            ; preds = %bb.aj
  %.not30.i.2 = icmp ult i32 %i.hp, 1073741824
  br i1 %.not30.i.2, label %bb.al, label %.thread.i.2

.thread.i.2:                                      ; preds = %bb.ak, %bb.aj
  %.037.i.2 = phi i16 [ 0, %bb.ak ], [ 1, %bb.aj ]
  store i32 0, ptr %i.ho, align 4
  br label %bb.al

bb.al:                                            ; preds = %.thread.i.2, %bb.ak
  %.038.i.2 = phi i16 [ %.037.i.2, %.thread.i.2 ], [ 0, %bb.ak ]
  %i.hr = load ptr, ptr %i.at, align 8
  %i.hs = call i32 @snd_ctl_add(ptr noundef %i.hr, ptr noundef nonnull %i.hi) #21 ; 2 uses
  %i.ht = icmp slt i32 %i.hs, 0
  br i1 %i.ht, label %snd_hda_ctl_add.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hu = call ptr @snd_array_new(ptr noundef %i.di) #21 ; 4 uses
  %.not31.i.2 = icmp eq ptr %i.hu, null
  br i1 %.not31.i.2, label %snd_hda_ctl_add.exit.thread, label %.preheader.split.3

.preheader.split.3:                               ; preds = %bb.am
  store ptr %i.hi, ptr %i.hu, align 8
  %i.hv = getelementptr i8, ptr %i.hu, i64 12
  store i16 %1, ptr %i.hv, align 4
  %i.hw = getelementptr i8, ptr %i.hu, i64 14
  store i16 %.038.i.2, ptr %i.hw, align 2
  %i.hx = call ptr @snd_ctl_new1(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @dig_mixes, i64 240), ptr noundef %0) #21 ; 6 uses
  %.not64.3 = icmp eq ptr %i.hx, null
  br i1 %.not64.3, label %snd_hda_ctl_add.exit.thread, label %bb.an

bb.an:                                            ; preds = %.preheader.split.3
  %i.hy = getelementptr i8, ptr %i.hx, i64 76
  store i32 %.014.i.lcssa, ptr %i.hy, align 4
  %i.hz = load i32, ptr %i.df, align 8
  %i.ia = add i32 %i.hz, -1
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr i8, ptr %i.hx, i64 120
  store i64 %i.ib, ptr %i.ic, align 8
  %i.id = getelementptr i8, ptr %i.hx, i64 28     ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4            ; 2 uses
  %i.if = and i32 %i.ie, 1073741824
  %.not29.i.3 = icmp eq i32 %i.if, 0
  br i1 %.not29.i.3, label %bb.ao, label %.thread.i.3

bb.ao:                                            ; preds = %bb.an
  %.not30.i.3 = icmp ult i32 %i.ie, 1073741824
  br i1 %.not30.i.3, label %bb.ap, label %.thread.i.3

.thread.i.3:                                      ; preds = %bb.ao, %bb.an
  %.037.i.3 = phi i16 [ 0, %bb.ao ], [ 1, %bb.an ]
  store i32 0, ptr %i.id, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %.thread.i.3, %bb.ao
  %.038.i.3 = phi i16 [ %.037.i.3, %.thread.i.3 ], [ 0, %bb.ao ]
  %i.ig = load ptr, ptr %i.at, align 8
  %i.ih = call i32 @snd_ctl_add(ptr noundef %i.ig, ptr noundef nonnull %i.hx) #21 ; 2 uses
  %i.ii = icmp slt i32 %i.ih, 0
  br i1 %i.ii, label %snd_hda_ctl_add.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ij = call ptr @snd_array_new(ptr noundef %i.di) #21 ; 3 uses
  %.not31.i.3 = icmp eq ptr %i.ij, null
  br i1 %.not31.i.3, label %snd_hda_ctl_add.exit.thread, label %.split.us.loopexit87

.split.us.loopexit87:                             ; preds = %bb.aq
  store ptr %i.hx, ptr %i.ij, align 8
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit87, %.split.us.loopexit
  %.sink131 = phi ptr [ %i.ij, %.split.us.loopexit87 ], [ %i.ge, %.split.us.loopexit ] ; 2 uses
  %.sink129 = phi i16 [ %1, %.split.us.loopexit87 ], [ %spec.select40.i.us.3, %.split.us.loopexit ]
  %.038.i.3.sink = phi i16 [ %.038.i.3, %.split.us.loopexit87 ], [ %.038.i.us.3, %.split.us.loopexit ]
  %i.ik = getelementptr i8, ptr %.sink131, i64 12
  store i16 %.sink129, ptr %i.ik, align 4
  %i.il = getelementptr i8, ptr %.sink131, i64 14
  store i16 %.038.i.3.sink, ptr %i.il, align 2
  store i16 %2, ptr %i.dg, align 4
  %i.im = zext i16 %2 to i32
  %i.in = shl i32 %i.im, 20
  %i.io = or disjoint i32 %i.in, 986368
  %i.ip = call i32 @snd_hdac_regmap_read_raw(ptr noundef %0, i32 noundef %i.io, ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.iq = load i32, ptr %i.a, align 4             ; 7 uses
  %i.ir = trunc i32 %i.iq to i16
  %i.is = getelementptr i8, ptr %i.dg, i64 8
  store i16 %i.ir, ptr %i.is, align 4
  %i.it = lshr i32 %i.iq, 4
  %spec.select.i66 = and i32 %i.it, 2             ; 2 uses
  %i.iu = and i32 %i.iq, 64
  %.not17.i = icmp eq i32 %i.iu, 0
  br i1 %.not17.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.split.us
  %7 = and i32 %i.iq, 8
  %.not21.i = icmp eq i32 %7, 0
  %spec.select22.v.i = select i1 %.not21.i, i32 1, i32 13
  %spec.select22.i = or disjoint i32 %spec.select22.v.i, %spec.select.i66
  br label %convert_to_spdif_status.exit

bb.as:                                            ; preds = %.split.us
  %i.iv = lshr i32 %i.iq, 2
  %i.iw = and i32 %i.iv, 4
  %8 = shl i32 %i.iq, 8
  %i.ix = and i32 %8, 32768
  %9 = and i32 %i.iq, 32520
  %10 = or disjoint i32 %i.iw, %9
  %11 = or disjoint i32 %10, %i.ix
  %12 = or disjoint i32 %11, %spec.select.i66
  %13 = xor i32 %12, 4
  br label %convert_to_spdif_status.exit

convert_to_spdif_status.exit:                     ; preds = %bb.ar, %bb.as
  %.5.i = phi i32 [ %13, %bb.as ], [ %spec.select22.i, %bb.ar ]
  %i.iy = getelementptr i8, ptr %i.dg, i64 4
  store i32 %.5.i, ptr %i.iy, align 4
  br label %snd_hda_ctl_add.exit.thread

snd_hda_ctl_add.exit.thread:                      ; preds = %.preheader.split.preheader, %bb.ae, %bb.ad, %.preheader.split.1, %bb.ah, %bb.ai, %.preheader.split.2, %bb.al, %bb.am, %.preheader.split.3, %bb.ap, %bb.aq, %bb.l, %bb.k, %.preheader.split.us.preheader, %.preheader.split.us.1, %bb.p, %bb.q, %.preheader.split.us.2, %bb.u, %bb.v, %.preheader.split.us.3, %bb.z, %bb.aa, %.thread71, %find_empty_mixer_ctl_idx.exit, %convert_to_spdif_status.exit, %find_empty_mixer_ctl_idx.exit.thread
  %.2 = phi i32 [ -16, %find_empty_mixer_ctl_idx.exit.thread ], [ %.lcssa, %.thread71 ], [ -12, %find_empty_mixer_ctl_idx.exit ], [ 0, %convert_to_spdif_status.exit ], [ -12, %bb.aa ], [ %i.dx, %bb.k ], [ -12, %bb.l ], [ -12, %.preheader.split.us.preheader ], [ -12, %.preheader.split.us.1 ], [ %i.eq, %bb.p ], [ -12, %bb.q ], [ -12, %.preheader.split.us.2 ], [ %i.fj, %bb.u ], [ -12, %bb.v ], [ -12, %.preheader.split.us.3 ], [ %i.gc, %bb.z ], [ -12, %.preheader.split.preheader ], [ %i.go, %bb.ad ], [ -12, %bb.ae ], [ -12, %.preheader.split.1 ], [ %i.hd, %bb.ah ], [ -12, %bb.ai ], [ -12, %.preheader.split.2 ], [ %i.hs, %bb.al ], [ -12, %bb.am ], [ -12, %.preheader.split.3 ], [ %i.ih, %bb.ap ], [ -12, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_ctl_rename_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none)
define dso_local noundef ptr @snd_hda_spdif_out_of_nid(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1200
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1216
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 1208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.012 = phi i32 [ 0, %.lr.ph ], [ %i.h, %bb.c ]
  %.0811 = phi ptr [ %i.d, %.lr.ph ], [ %i.k, %bb.c ] ; 2 uses
  %i.f = load i16, ptr %.0811, align 4
  %i.g = icmp eq i16 %i.f, %1
  br i1 %i.g, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i32 %.012, 1                     ; 3 uses
  %.val = load i32, ptr %i.e, align 8
  %i.i = mul i32 %.val, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %i.d, i64 %i.j
  %exitcond.not = icmp eq i32 %i.h, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.09 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.0811, %bb.b ]
  ret ptr %.09
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_hda_spdif_ctls_unassign(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1200
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp ugt i32 %i.b, %1
  br i1 %.not, label %.critedge, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "580: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 580b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 580) #22, !srcloc !47
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 2487, i32 2305, i64 16) #22, !srcloc !48
  tail call void asm sideeffect "581: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 581b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 581) #22, !srcloc !49
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1152       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.c) #21
  %i.d = getelementptr i8, ptr %0, i64 1208
  %.val = load i32, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 1216
  %.val10 = load ptr, ptr %i.e, align 8
  %i.f = mul i32 %.val, %1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %.val10, i64 %i.g
  store i16 -1, ptr %i.h, align 4
  tail call void @mutex_unlock(ptr noundef %i.c) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @snd_hda_spdif_ctls_assign(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1200
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp ugt i32 %i.b, %1
  br i1 %.not, label %.critedge, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "585: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 585b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 585) #22, !srcloc !50
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.11, i32 2508, i32 2305, i64 16) #22, !srcloc !51
  tail call void asm sideeffect "586: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 586b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 586) #22, !srcloc !52
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1152       ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.c) #21
  %i.d = getelementptr i8, ptr %0, i64 1208
  %.val = load i32, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 1216
  %.val19 = load ptr, ptr %i.e, align 8
  %i.f = mul i32 %.val, %1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %.val19, i64 %i.g  ; 3 uses
  %i.i = load i16, ptr %i.h, align 4
  %.not18 = icmp eq i16 %i.i, %2
  br i1 %.not18, label %set_spdif_ctls.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  store i16 %2, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load i16, ptr %i.j, align 4
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = zext i16 %2 to i32                       ; 3 uses
  %i.n = shl i32 %i.m, 20
  %i.o = or disjoint i32 %i.n, 986368
  %i.p = tail call i32 @snd_hdac_regmap_update_raw(ptr noundef %0, i32 noundef %i.o, i32 noundef range(i32 255, 65536) 65535, i32 noundef range(i32 0, 65536) %i.l) #21 ; 0 uses
  %i.q = getelementptr i8, ptr %0, i64 1232
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %set_dig_out_convert.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.s = load i16, ptr %i.r, align 2              ; 2 uses
  %.not1314.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not1314.i.i.i, label %set_dig_out_convert.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %i.t = phi i16 [ %i.z, %.lr.ph.i.i.i ], [ %i.s, %.preheader.i.i.i ]
  %.015.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.r, %.preheader.i.i.i ]
  %i.u = zext i16 %i.t to i32
  %i.v = shl i32 %i.u, 20
  %i.w = or disjoint i32 %i.v, 986368
  %i.x = tail call i32 @snd_hdac_regmap_update_raw(ptr noundef %0, i32 noundef %i.w, i32 noundef range(i32 255, 65536) 65535, i32 noundef range(i32 0, 65536) %i.l) #21 ; 0 uses
  %i.y = getelementptr i8, ptr %.015.i.i.i, i64 2 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %.not13.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not13.i.i.i, label %set_dig_out_convert.exit.i, label %.lr.ph.i.i.i, !llvm.loop !11

set_dig_out_convert.exit.i:                       ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.c
  %i.aa = getelementptr i8, ptr %0, i64 860
  %i.ab = load i16, ptr %i.aa, align 4            ; 2 uses
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = icmp ult i16 %2, %i.ab
  br i1 %i.ad, label %set_spdif_ctls.exit, label %bb.d

bb.d:                                             ; preds = %set_dig_out_convert.exit.i
  %i.ae = getelementptr i8, ptr %0, i64 856
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add i32 %i.af, %i.ac
  %.not.i9.i = icmp ugt i32 %i.ag, %i.m
  br i1 %.not.i9.i, label %get_wcaps.exit.i, label %set_spdif_ctls.exit

get_wcaps.exit.i:                                 ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %0, i64 1080
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = sub nuw nsw i32 %i.m, %i.ac
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 4
  %.not.i = icmp eq i32 %i.an, 0
  %i.ao = and i32 %i.l, 1
  %.not8.i = icmp eq i32 %i.ao, 0
  %or.cond.i = or i1 %.not8.i, %.not.i
  br i1 %or.cond.i, label %set_spdif_ctls.exit, label %bb.e

bb.e:                                             ; preds = %get_wcaps.exit.i
  %i.ap = tail call i32 @snd_hda_codec_amp_stereo(ptr noundef %0, i16 noundef zeroext %2, i32 noundef 1, i32 noundef 0, i32 noundef 128, i32 noundef 0) #24 ; 0 uses
  br label %set_spdif_ctls.exit

set_spdif_ctls.exit:                              ; preds = %bb.e, %get_wcaps.exit.i, %bb.d, %set_dig_out_convert.exit.i, %.critedge
  tail call void @mutex_unlock(ptr noundef %i.c) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %set_spdif_ctls.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @snd_hda_create_spdif_share_sw(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 38         ; 2 uses
  %i.b = load i16, ptr %i.a, align 2
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %snd_hda_ctl_add.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @snd_ctl_new1(ptr noundef nonnull @spdif_share_sw, ptr noundef %0) #21 ; 6 uses
  %.not14 = icmp eq ptr %i.c, null
  br i1 %.not14, label %snd_hda_ctl_add.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 120
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load i16, ptr %i.a, align 2              ; 4 uses
end_hunk_2
begin_hunk_3_@snd_hda_spdif_out_switch_put:bb.a
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %.val32, i64 %i.l  ; 2 uses
  %i.n = load i16, ptr %i.m, align 4              ; 4 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.p = load i16, ptr %i.o, align 4              ; 2 uses
  %i.q = and i16 %i.p, -2
  %i.r = getelementptr i8, ptr %1, i64 72
  %i.s = load i64, ptr %i.r, align 8
  %.not31 = icmp ne i64 %i.s, 0
  %masksel = zext i1 %.not31 to i16
  %spec.select = or disjoint i16 %i.q, %masksel   ; 3 uses
  %i.t = icmp ne i16 %i.p, %spec.select           ; 2 uses
  %i.u = zext i1 %i.t to i32
  store i16 %spec.select, ptr %i.o, align 4
  %i.v = icmp ne i16 %i.n, -1
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.c, label %set_spdif_ctls.exit

bb.c:                                             ; preds = %.critedge
  %i.w = and i16 %spec.select, 255
  %i.x = zext nneg i16 %i.w to i32                ; 3 uses
  %i.y = zext i16 %i.n to i32                     ; 3 uses
  %i.z = shl i32 %i.y, 20
  %i.aa = or disjoint i32 %i.z, 986368
  %i.ab = tail call i32 @snd_hdac_regmap_update_raw(ptr noundef %i.b, i32 noundef %i.aa, i32 noundef range(i32 255, 65536) 255, i32 noundef range(i32 0, 65536) %i.x) #21 ; 0 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 1232
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %set_dig_out_convert.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.ae = load i16, ptr %i.ad, align 2            ; 2 uses
  %.not1314.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not1314.i.i.i, label %set_dig_out_convert.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %i.af = phi i16 [ %i.al, %.lr.ph.i.i.i ], [ %i.ae, %.preheader.i.i.i ]
  %.015.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.ad, %.preheader.i.i.i ]
  %i.ag = zext i16 %i.af to i32
  %i.ah = shl i32 %i.ag, 20
  %i.ai = or disjoint i32 %i.ah, 986368
  %i.aj = tail call i32 @snd_hdac_regmap_update_raw(ptr noundef %i.b, i32 noundef %i.ai, i32 noundef range(i32 255, 65536) 255, i32 noundef range(i32 0, 65536) %i.x) #21 ; 0 uses
  %i.ak = getelementptr i8, ptr %.015.i.i.i, i64 2 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2            ; 2 uses
  %.not13.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not13.i.i.i, label %set_dig_out_convert.exit.i, label %.lr.ph.i.i.i, !llvm.loop !11

set_dig_out_convert.exit.i:                       ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.c
  %i.am = getelementptr i8, ptr %i.b, i64 860
  %i.an = load i16, ptr %i.am, align 4            ; 2 uses
  %i.ao = zext i16 %i.an to i32                   ; 2 uses
  %i.ap = icmp ult i16 %i.n, %i.an
  br i1 %i.ap, label %set_spdif_ctls.exit, label %bb.d

bb.d:                                             ; preds = %set_dig_out_convert.exit.i
  %i.aq = getelementptr i8, ptr %i.b, i64 856
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = add i32 %i.ar, %i.ao
  %.not.i9.i = icmp ugt i32 %i.as, %i.y
  br i1 %.not.i9.i, label %get_wcaps.exit.i, label %set_spdif_ctls.exit

get_wcaps.exit.i:                                 ; preds = %bb.d
  %i.at = getelementptr i8, ptr %i.b, i64 1080
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = sub nuw nsw i32 %i.y, %i.ao
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr [4 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = and i32 %i.ay, 4
  %.not.i = icmp eq i32 %i.az, 0
  %i.ba = and i32 %i.x, 1
  %.not8.i = icmp eq i32 %i.ba, 0
  %or.cond.i = or i1 %.not8.i, %.not.i
  br i1 %or.cond.i, label %set_spdif_ctls.exit, label %bb.e

bb.e:                                             ; preds = %get_wcaps.exit.i
  %i.bb = tail call i32 @snd_hda_codec_amp_stereo(ptr noundef %i.b, i16 noundef zeroext %i.n, i32 noundef 1, i32 noundef 0, i32 noundef 128, i32 noundef 0) #24 ; 0 uses
  br label %set_spdif_ctls.exit

set_spdif_ctls.exit:                              ; preds = %bb.e, %get_wcaps.exit.i, %bb.d, %set_dig_out_convert.exit.i, %.critedge
  tail call void @mutex_unlock(ptr noundef %i.h) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %set_spdif_ctls.exit
  %.0 = phi i32 [ %i.u, %set_spdif_ctls.exit ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @spdif_share_sw_get(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((72, 80)) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %i.b, i64 1152     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.f) #21
  %i.g = getelementptr i8, ptr %i.e, i64 60
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr i8, ptr %1, i64 72
  store i64 %i.i, ptr %i.j, align 8
  tail call void @mutex_unlock(ptr noundef %i.f) #21
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @spdif_share_sw_put(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, 0
  %i.i = getelementptr i8, ptr %i.b, i64 1152     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.i) #21
  %i.j = getelementptr i8, ptr %i.e, i64 60       ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i1 %i.h to i32                      ; 2 uses
  %i.m = icmp ne i32 %i.k, %i.l
  %i.n = zext i1 %i.m to i32
  store i32 %i.l, ptr %i.j, align 4
  tail call void @mutex_unlock(ptr noundef %i.i) #21
  ret i32 %i.n
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal noundef i32 @snd_hda_spdif_in_switch_get(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((72, 80)) %1) #18 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1224
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr i8, ptr %1, i64 72
  store i64 %i.e, ptr %i.f, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @snd_hda_spdif_in_switch_put(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32                      ; 3 uses
  %i.i = getelementptr i8, ptr %i.b, i64 1152     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.i) #21
  %i.j = getelementptr i8, ptr %i.b, i64 1224     ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = icmp ne i32 %i.k, %i.h                   ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = trunc i64 %i.d to i32
  store i32 %i.h, ptr %i.j, align 8
  %i.n = shl i32 %i.m, 20
  %i.o = or disjoint i32 %i.n, 986368
  %i.p = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %i.b, i32 noundef %i.o, i32 noundef %i.h) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = zext i1 %i.l to i32
  tail call void @mutex_unlock(ptr noundef %i.i) #21
  ret i32 %i.q
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @snd_hda_spdif_in_status_get(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((72, 76)) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !annotation !25
  %i.g = shl i32 %i.f, 20
  %i.h = or disjoint i32 %i.g, 986368
  %i.i = call i32 @snd_hdac_regmap_read_raw(ptr noundef %i.c, i32 noundef %i.h, ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.j = load i32, ptr %i.a, align 4              ; 6 uses
  %i.k = lshr i32 %i.j, 4
  %spec.select.i = and i32 %i.k, 2                ; 2 uses
  %i.l = and i32 %i.j, 64
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = and i32 %i.j, 8
  %.not21.i = icmp eq i32 %2, 0
  %spec.select22.v.i = select i1 %.not21.i, i32 1, i32 13
  %spec.select22.i = or disjoint i32 %spec.select22.v.i, %spec.select.i
  br label %convert_to_spdif_status.exit

bb.c:                                             ; preds = %bb.a
  %i.m = lshr i32 %i.j, 2
  %i.n = and i32 %i.m, 4
  %3 = shl i32 %i.j, 8
  %i.o = and i32 %3, 32768
  %4 = and i32 %i.j, 32520
  %5 = or disjoint i32 %i.n, %4
  %6 = or disjoint i32 %5, %i.o
  %7 = or disjoint i32 %6, %spec.select.i
  %8 = xor i32 %7, 4
  br label %convert_to_spdif_status.exit

convert_to_spdif_status.exit:                     ; preds = %bb.b, %bb.c
  %.5.i = phi i32 [ %8, %bb.c ], [ %spec.select22.i, %bb.b ]
  %i.p = getelementptr i8, ptr %1, i64 72
  store i32 %.5.i, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hdac_sync_power_state(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @snd_hdac_codec_link_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @snd_hdac_codec_link_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @snd_hdac_check_power_state(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @hda_pcm_default_open_close(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #19 align 16 prefalign(16) {
bb.a:
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @hda_pcm_default_prepare(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4
  tail call void @snd_hda_codec_setup_stream(ptr noundef %1, i16 noundef zeroext %i.b, i32 noundef %2, i32 noundef 0, i32 noundef %3) #24
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @hda_pcm_default_cleanup(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 12
  %i.b = load i16, ptr %i.a, align 4
  tail call void @__snd_hda_codec_cleanup_stream(ptr noundef %1, i16 noundef zeroext %i.b, i32 noundef 0) #24
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @snd_ctl_notify_one(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @snd_hdac_regmap_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #12 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #18 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #19 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { noredzone nounwind "no-builtin-wcslen" }
attributes #22 = { nounwind }
attributes #23 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #24 = { noredzone "no-builtin-wcslen" }
attributes #25 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #26 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = distinct !{!3, !24}
!4 = distinct !{!4, !24}
!5 = distinct !{!5, !24}
!6 = distinct !{!6, !24}
!7 = distinct !{!7, !24}
!8 = distinct !{!8, !24}
!9 = distinct !{null}
!10 = distinct !{!10, !24}
!11 = distinct !{!11, !24}
!12 = distinct !{null}
!13 = distinct !{!13, !24}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 8, !"cf-protection-branch", i32 1}
!16 = !{i32 4, !"function_return_thunk_extern", i32 1}
!17 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!18 = !{i32 1, !"Code Model", i32 2}
!19 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!20 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!21 = !{i32 1, !"override-stack-alignment", i32 8}
!22 = !{i32 4, !"SkipRaxSetup", i32 1}
!23 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"auto-init"}
!26 = !{i64 2148923880, i64 2148923919, i64 2148923940, i64 2148923977, i64 2148924000, i64 2148923871}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{i64 2148924255, i64 2148924294, i64 2148924315, i64 2148924352, i64 2148924375, i64 2148924246}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = !{i64 2148526111, i64 2148526150, i64 2148526171, i64 2148526208, i64 2148526231, i64 2148526102}
!37 = !{i64 26159}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = distinct !{null}
!42 = !{i64 41252}
!43 = !{i64 41391}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = distinct !{null}
!47 = !{i64 2157660837, i64 2157660712}
!48 = !{i64 2157661360, i64 2157662426, i64 2157662459, i64 2157662494, i64 2157662510, i64 2157663437, i64 2157663495, i64 2157663544, i64 2157663354, i64 2157662569, i64 2157662601, i64 2157662684}
!49 = !{i64 2157663849, i64 2157663725}
!50 = !{i64 2157672575, i64 2157672450}
!51 = !{i64 2157673098, i64 2157674164, i64 2157674197, i64 2157674232, i64 2157674248, i64 2157675175, i64 2157675233, i64 2157675282, i64 2157675092, i64 2157674307, i64 2157674339, i64 2157674422}
!52 = !{i64 2157675587, i64 2157675463}
!53 = distinct !{!53, !24}
!54 = !{i64 79951}
!55 = !{i64 80527}
!56 = distinct !{!56, !24}
!57 = distinct !{!57, !24}
!58 = distinct !{null}
!59 = distinct !{!59, !24}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = distinct !{!62, !24}
!63 = distinct !{null, null}
!64 = distinct !{!64, !24}
!65 = distinct !{!65, !24}
!66 = distinct !{!66, !24}
!67 = distinct !{!67, !24}
!68 = !{i64 2148530967, i64 2148531006, i64 2148531027, i64 2148531064, i64 2148531087, i64 2148531096}
!69 = distinct !{!69, !24}
!70 = distinct !{!70, !24}
!71 = distinct !{!71, !24}
!72 = distinct !{!72, !24}
!73 = !{i64 100024}
!74 = distinct !{!74, !24}
!75 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!76 = !{i64 2157778529, i64 2157778404}
!77 = !{i64 2157779052, i64 2157780103, i64 2157780136, i64 2157780171, i64 2157780187, i64 2157781114, i64 2157781172, i64 2157781221, i64 2157781031, i64 2157780246, i64 2157780278, i64 2157780361}
!78 = !{i64 2157781526, i64 2157781402}
!79 = distinct !{!79, !24}
!80 = !{i64 103779}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = distinct !{!83, !24}
!84 = !{i64 111398}
end_hunk_3
