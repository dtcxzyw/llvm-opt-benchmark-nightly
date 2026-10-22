Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/codec?download=true
inline.NumInlined: 288
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@snd_hda_codec_parse_pcms:bb.a
  %i.ag = getelementptr i8, ptr %.pn60, i64 -152  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr @hda_pcm_default_open_close, ptr %i.ag, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aj = getelementptr i8, ptr %.pn60, i64 -144  ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.am = load i16, ptr %i.o, align 4
  %.not36.i = icmp eq i16 %i.am, 0
  br i1 %.not36.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr @hda_pcm_default_prepare, ptr %i.aj, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.an = getelementptr i8, ptr %.pn60, i64 -136  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.aq = load i16, ptr %i.o, align 4
  %.not37.i = icmp eq i16 %i.aq, 0
  br i1 %.not37.i, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr @hda_pcm_default_cleanup, ptr %i.an, align 8
  br label %bb.s

.thread:                                          ; preds = %bb.af, %bb.ac, %.thread.i.1, %.thread.i, %bb.n, %bb.q
  %.0.i.ph = phi i32 [ -22, %bb.q ], [ -22, %bb.n ], [ %i.ab, %.thread.i ], [ %i.bh, %.thread.i.1 ], [ -22, %bb.ac ], [ -22, %bb.af ]
  %.034.le = getelementptr i8, ptr %.pn60, i64 -216
  %i.ar = load ptr, ptr %.034.le, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef @.str.19, ptr noundef %i.ar) #25
  br label %.loopexit55

bb.s:                                             ; preds = %.preheader, %bb.p, %bb.r
  %i.as = getelementptr i8, ptr %.pn60, i64 -120
  %i.at = load i32, ptr %i.as, align 8
  %.not42.1 = icmp eq i32 %i.at, 0
  br i1 %.not42.1, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr i8, ptr %.pn60, i64 -108  ; 3 uses
  %i.av = load i16, ptr %i.au, align 4            ; 2 uses
  %.not.i.1 = icmp eq i16 %i.av, 0
  br i1 %.not.i.1, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr i8, ptr %.pn60, i64 -104  ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8
  %.not30.i.1 = icmp eq i32 %i.ax, 0
  %.phi.trans.insert.i.1 = getelementptr i8, ptr %.pn60, i64 -96 ; 3 uses
  %.pre.i.1 = load i64, ptr %.phi.trans.insert.i.1, align 8
  %.pre.fr.i.1 = freeze i64 %.pre.i.1
  %i.ay = icmp eq i64 %.pre.fr.i.1, 0             ; 2 uses
  br i1 %.not30.i.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.ay, label %.thread.i.1, label %bb.x

bb.w:                                             ; preds = %bb.u
  %spec.select.i.1 = select i1 %i.ay, ptr %.phi.trans.insert.i.1, ptr null
  br label %.thread.i.1

.thread.i.1:                                      ; preds = %bb.w, %bb.v
  %i.az = phi ptr [ %i.aw, %bb.w ], [ null, %bb.v ]
  %i.ba = phi ptr [ %spec.select.i.1, %bb.w ], [ %.phi.trans.insert.i.1, %bb.v ]
  %i.bb = getelementptr i8, ptr %.pn60, i64 -88   ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %.not34.i.1 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not34.i.1, ptr %i.bb, ptr null
  %i.be = getelementptr i8, ptr %.pn60, i64 -84   ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %.not35.i.1 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not35.i.1, ptr %i.be, ptr null
  %i.bh = tail call i32 @snd_hdac_query_supported_pcm(ptr noundef %0, i16 noundef zeroext %i.av, ptr noundef %i.az, ptr noundef %i.ba, ptr noundef %i.bd, ptr noundef %i.bg) #21 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.thread, label %bb.x

bb.x:                                             ; preds = %.thread.i.1, %bb.v, %bb.t
  %i.bj = getelementptr i8, ptr %.pn60, i64 -72   ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr @hda_pcm_default_open_close, ptr %i.bj, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bm = getelementptr i8, ptr %.pn60, i64 -64   ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr @hda_pcm_default_open_close, ptr %i.bm, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bp = getelementptr i8, ptr %.pn60, i64 -56   ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bs = load i16, ptr %i.au, align 4
  %.not36.i.1 = icmp eq i16 %i.bs, 0
  br i1 %.not36.i.1, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr @hda_pcm_default_prepare, ptr %i.bp, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.bt = getelementptr i8, ptr %.pn60, i64 -48   ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.bw = load i16, ptr %i.au, align 4
  %.not37.i.1 = icmp eq i16 %i.bw, 0
  br i1 %.not37.i.1, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr @hda_pcm_default_cleanup, ptr %i.bt, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %bb.ae, %bb.s
  %.pn = load ptr, ptr %.pn60, align 8            ; 2 uses
  %.not53 = icmp eq ptr %.pn, %i.c
  br i1 %.not53, label %.loopexit55, label %.preheader, !llvm.loop !65

.loopexit55:                                      ; preds = %.loopexit, %.preheader54, %.thread, %bb.b, %bb.a, %bb.d
  %.4 = phi i32 [ %i.i, %bb.d ], [ %.0.i.ph, %.thread ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %.preheader54 ], [ 0, %.loopexit ]
  ret i32 %.4
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @snd_hda_codec_build_pcms(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 968
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call i32 @snd_hda_codec_parse_pcms(ptr noundef %0) #24 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1008       ; 3 uses
  %.pn36 = load ptr, ptr %i.e, align 8            ; 2 uses
  %.not38 = icmp eq ptr %.pn36, %i.e
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 1360     ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 776
  %i.h = getelementptr i8, ptr %i.b, i64 1312     ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.pn39 = phi ptr [ %.pn36, %.lr.ph ], [ %.pn, %bb.l ] ; 8 uses
  %.02840 = getelementptr i8, ptr %.pn39, i64 -216
  %i.i = getelementptr i8, ptr %.pn39, i64 -24
  %i.j = load ptr, ptr %i.i, align 8
  %.not31 = icmp eq ptr %i.j, null
  br i1 %.not31, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.pn39, i64 -208
  %i.l = load i32, ptr %i.k, align 8
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %.pn39, i64 -120
  %i.n = load i32, ptr %i.m, align 8
  %.not33 = icmp eq i32 %i.n, 0
  br i1 %.not33, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr i8, ptr %.pn39, i64 -32
  %i.p = load i32, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp ugt i32 %i.p, 3
  br i1 %i.q, label %bb.g, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.f
  %i.r = zext nneg i32 %i.p to i64                ; 2 uses
  %i.s = getelementptr [20 x i8], ptr @get_empty_pcm_device.audio_idx, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 632
  %i.w = load ptr, ptr %i.v, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.w, ptr noundef @.str.39, i32 noundef %i.p) #25
  br label %get_empty_pcm_device.exit.thread

bb.h:                                             ; preds = %bb.i
  %i.x = add i32 %.023.i, 1                       ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [4 x i8], ptr %i.s, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %or.cond.i = icmp ugt i32 %i.aa, 7
  br i1 %or.cond.i, label %._crit_edge.i, label %bb.i, !llvm.loop !66

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.a
  %i.ab = phi i32 [ %i.t, %.lr.ph.i.a ], [ %i.aa, %bb.h ] ; 4 uses
  %.023.i = phi i32 [ 0, %.lr.ph.i.a ], [ %i.x, %bb.h ]
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, i64 range(i64 0, 8) %i.ac, ptr elementtype(i64) %i.f) #22, !srcloc !68 ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 2
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = trunc nuw i8 %i.ad to i1
  br i1 %i.af, label %bb.h, label %get_empty_pcm_device.exit

._crit_edge.i:                                    ; preds = %bb.h
  %i.ag = load ptr, ptr %i.h, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 632
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr [8 x i8], ptr @snd_hda_pcm_type_name, i64 %i.r
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ai, ptr noundef @.str.40, ptr noundef %i.ak) #25
  %i.al = load ptr, ptr %i.h, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 632
  %i.an = load ptr, ptr %i.am, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.an, ptr noundef @.str.41) #25
  br label %get_empty_pcm_device.exit.thread

get_empty_pcm_device.exit:                        ; preds = %bb.i
  %1 = icmp slt i32 %i.ab, 0
  br i1 %1, label %get_empty_pcm_device.exit.thread, label %bb.j

get_empty_pcm_device.exit.thread:                 ; preds = %._crit_edge.i, %bb.g, %get_empty_pcm_device.exit
  %i.ao = getelementptr i8, ptr %.pn39, i64 -28
  store i32 -1, ptr %i.ao, align 4
  br label %bb.l

bb.j:                                             ; preds = %get_empty_pcm_device.exit
  %i.ap = getelementptr i8, ptr %.pn39, i64 -28
  store i32 %i.ab, ptr %i.ap, align 4
  %i.aq = tail call i32 @snd_hda_attach_pcm_stream(ptr noundef %i.b, ptr noundef %0, ptr noundef %.02840) #21
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i32, ptr %i.g, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef @.str.20, i32 noundef %i.ab, i32 noundef %i.as) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.e, %bb.c, %bb.k, %get_empty_pcm_device.exit.thread
  %.pn = load ptr, ptr %.pn39, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, %i.e
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !67

.loopexit:                                        ; preds = %bb.l, %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ 0, %bb.b ], [ 0, %bb.l ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @snd_hda_attach_pcm_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @snd_hda_add_new_ctls(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.snd_ctl_elem_id, align 4    ; 69 uses
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not75 = icmp eq ptr %i.b, null
  br i1 %.not75, label %.thread, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1344       ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 976        ; 17 uses
  %i.e = getelementptr i8, ptr %0, i64 1088
  %i.f = getelementptr i8, ptr %0, i64 776
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 16 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph77, %bb.aj
  %i.j = phi ptr [ %i.a, %.lr.ph77 ], [ %i.dv, %bb.aj ]
  %.03376 = phi ptr [ %1, %.lr.ph77 ], [ %i.du, %bb.aj ] ; 6 uses
  %i.k = load i32, ptr %.03376, align 8
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.m = call ptr @snd_ctl_new1(ptr noundef %.03376, ptr noundef %0) #21 ; 2 uses
  %.not4066 = icmp eq ptr %i.m, null
  br i1 %.not4066, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr i8, ptr %.03376, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %find_empty_mixer_ctl_idx.exit.thread
  %i.o = phi ptr [ %i.m, %.lr.ph ], [ %i.dt, %find_empty_mixer_ctl_idx.exit.thread ] ; 6 uses
  %.03068 = phi i32 [ 0, %.lr.ph ], [ %.1, %find_empty_mixer_ctl_idx.exit.thread ] ; 5 uses
  %.03167 = phi i32 [ 0, %.lr.ph ], [ %.132, %find_empty_mixer_ctl_idx.exit.thread ] ; 19 uses
  %i.p = icmp sgt i32 %.03167, 0
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.c, align 8
  %i.r = and i32 %i.q, 8388608
  %.not41 = icmp eq i32 %i.r, 0
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.o, i64 24
  store i32 %.03167, ptr %i.s, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.t = icmp sgt i32 %.03068, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.o, i64 76
  store i32 %.03068, ptr %i.u, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = getelementptr i8, ptr %i.o, i64 28       ; 2 uses
  %i.w = load i32, ptr %i.v, align 4              ; 5 uses
  %i.x = and i32 %i.w, 1073741824
  %.not29.i = icmp eq i32 %i.x, 0
  br i1 %.not29.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.o, i64 120
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i16                   ; 2 uses
  %i.ab = icmp slt i32 %i.w, 0
  %i.ac = icmp eq i16 %i.aa, 0
  %or.cond34.i = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = trunc i32 %i.w to i16
  %spec.select35.i = select i1 %or.cond34.i, i16 %i.ad, i16 %i.aa
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %spec.select.i55 = call i32 @llvm.smin.i32(i32 %i.w, i32 0)
  %spec.select.i = trunc i32 %spec.select.i55 to i16 ; 2 uses
  %.not30.i = icmp ult i32 %i.w, 1073741824
  br i1 %.not30.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %spec.select39.i = phi i16 [ %spec.select35.i, %bb.i ], [ %spec.select.i, %bb.j ]
  %.037.i = phi i16 [ 1, %bb.i ], [ 0, %bb.j ]
  store i32 0, ptr %i.v, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %spec.select40.i = phi i16 [ %spec.select39.i, %bb.k ], [ %spec.select.i, %bb.j ]
  %.038.i = phi i16 [ %.037.i, %bb.k ], [ 0, %bb.j ]
  %i.ae = load ptr, ptr %i.d, align 8
  %i.af = call i32 @snd_ctl_add(ptr noundef %i.ae, ptr noundef nonnull %i.o) #21 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = call ptr @snd_array_new(ptr noundef %i.e) #21 ; 4 uses
  %.not31.i = icmp eq ptr %i.ah, null
  br i1 %.not31.i, label %bb.n, label %snd_hda_ctl_add.exit

snd_hda_ctl_add.exit:                             ; preds = %bb.m
  store ptr %i.o, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 12
  store i16 %spec.select40.i, ptr %i.ai, align 4
  %i.aj = getelementptr i8, ptr %i.ah, i64 14
  store i16 %.038.i, ptr %i.aj, align 2
  br label %bb.aj

bb.n:                                             ; preds = %bb.m, %bb.l
  %.024.i.ph = phi i32 [ %i.af, %bb.l ], [ -12, %bb.m ] ; 5 uses
  %.not43 = icmp eq i32 %.03167, 0
  br i1 %.not43, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ak = load i32, ptr %i.f, align 8             ; 4 uses
  %.not44 = icmp eq i32 %i.ak, 0
  br i1 %.not44, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr %i.c, align 8
  %i.am = and i32 %i.al, 8388608
  %.not45 = icmp eq i32 %i.am, 0
  br i1 %.not45, label %bb.q, label %find_empty_mixer_ctl_idx.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.an = mul i32 %i.ak, 10
  %i.ao = add i32 %i.an, %.03068
  br label %find_empty_mixer_ctl_idx.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %.not46 = icmp eq i32 %.03068, 0
  br i1 %.not46, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.ap = load i32, ptr %i.n, align 8
  %.not47 = icmp eq i32 %i.ap, 0
  br i1 %.not47, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.aq = load ptr, ptr %i.j, align 8             ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %2, i8 0, i64 60, i1 false)
  store i32 2, ptr %i.g, align 4
  store i32 0, ptr %i.h, align 4
  %i.ar = call i64 @strlen(ptr noundef %i.aq) #21
  %i.as = icmp ugt i64 %i.ar, 43
  br i1 %i.as, label %find_empty_mixer_ctl_idx.exit, label %find_mixer_ctl.exit.i

find_mixer_ctl.exit.i:                            ; preds = %bb.t
  %i.at = call i64 @sized_strscpy(ptr noundef nonnull %i.i, ptr noundef %i.aq, i64 noundef 44) #21 ; 0 uses
  %i.au = load ptr, ptr %i.d, align 8
  %i.av = call ptr @snd_ctl_find_id(ptr noundef %i.au, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.not.i48 = icmp eq ptr %i.av, null
  br i1 %.not.i48, label %.thread, label %bb.u

bb.u:                                             ; preds = %find_mixer_ctl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %2, i8 0, i64 60, i1 false)
  store i32 2, ptr %i.g, align 4
  store i32 1, ptr %i.h, align 4
  %i.aw = call i64 @strlen(ptr noundef %i.aq) #21
  %i.ax = icmp ugt i64 %i.aw, 43
  br i1 %i.ax, label %find_empty_mixer_ctl_idx.exit.thread101, label %find_mixer_ctl.exit.i.1

find_mixer_ctl.exit.i.1:                          ; preds = %bb.u
  %i.ay = call i64 @sized_strscpy(ptr noundef nonnull %i.i, ptr noundef %i.aq, i64 noundef 44) #21 ; 0 uses
  %i.az = load ptr, ptr %i.d, align 8
  %i.ba = call ptr @snd_ctl_find_id(ptr noundef %i.az, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.not.i48.1 = icmp eq ptr %i.ba, null
end_hunk_0
