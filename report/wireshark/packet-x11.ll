Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-x11?download=true
inline.NumInlined: 1770
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 137
begin_hunk_0_@listOfKeycode:bb.a
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %.pre-phi = phi i32 [ %i.by, %bb.c ], [ 0, %bb.b ]
  %i.bz = load ptr, ptr %i.br, align 8
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %indvars.iv
  store i32 %.pre-phi, ptr %i.ca, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !35

._crit_edge.us:                                   ; preds = %._crit_edge
  %i.cb = add nuw nsw i64 %.03034.us, 1           ; 2 uses
  %i.cc = load i32, ptr %1, align 4
  %i.cd = add i32 %i.cc, %5                       ; 2 uses
  store i32 %i.cd, ptr %1, align 4
  %exitcond39.not = icmp eq i64 %i.cb, 8
  br i1 %exitcond39.not, label %.split36.us, label %.lr.ph.us, !llvm.loop !36

.split36.us:                                      ; preds = %._crit_edge.us, %.split.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @tryExtensionReply(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %5, i64 10312
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %0 to i64
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @wmem_map_lookup(ptr noundef %i.b, ptr noundef %i.d) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.e(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr @hf_x11_reply, align 4
  %i.g = tail call fastcc i32 @field8(ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %i.f, i32 noundef %6) ; 0 uses
  %i.h = load i32, ptr @hf_x11_undecoded, align 4
  %i.i = load i32, ptr %3, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.h, ptr noundef %1, i32 noundef %i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr %3, align 4
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %3, align 4
  %i.m = tail call zeroext i16 @tvb_get_uint16(ptr noundef %1, i32 noundef %i.l, i32 noundef %6)
  %i.n = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.o = load i32, ptr %3, align 4
  %i.p = zext i16 %i.m to i32                     ; 2 uses
  %i.q = getelementptr i8, ptr %2, i64 416
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = and i32 %0, 255
  %i.t = getelementptr i8, ptr %5, i64 16
  %i.u = tail call ptr @val_to_str(ptr noundef %i.r, i32 noundef %i.s, ptr noundef %i.t, ptr noundef nonnull @.str.1464)
  %i.v = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %4, i32 noundef %i.n, ptr noundef %1, i32 noundef %i.o, i32 noundef 2, i32 noundef %i.p, ptr noundef nonnull @.str.1467, i32 noundef %i.p, ptr noundef %i.u) ; 0 uses
  %i.w = load i32, ptr %3, align 4
  %i.x = add i32 %i.w, 2
  store i32 %i.x, ptr %3, align 4
  %i.y = load i32, ptr @hf_x11_replylength, align 4
  %i.z = tail call fastcc i32 @field32(ptr noundef %1, ptr noundef %3, ptr noundef %4, i32 noundef %i.y, i32 noundef %6) ; 0 uses
  %i.aa = load i32, ptr @hf_x11_undecoded, align 4
  %i.ab = load i32, ptr %3, align 4               ; 2 uses
  %i.ac = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.ab)
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.aa, ptr noundef %1, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef 0) ; 0 uses
  %i.ae = load i32, ptr %3, align 4
  %i.af = tail call i32 @tvb_reported_length_remaining(ptr noundef %1, i32 noundef %i.ae)
  %i.ag = load i32, ptr %3, align 4
  %i.ah = add i32 %i.ag, %i.af
  store i32 %i.ah, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @tvb_ensure_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @decode_x11_event(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 256 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.i = load i32, ptr @hf_x11_eventcode, align 4
  %i.j = zext i8 %2 to i32                        ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 416        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = and i32 %i.j, 127                        ; 3 uses
  %i.n = getelementptr i8, ptr %5, i64 8240
  %i.o = tail call ptr @val_to_str(ptr noundef %i.l, i32 noundef %i.m, ptr noundef %i.n, ptr noundef nonnull @.str.1561)
  %i.p = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %4, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.j, ptr noundef nonnull @.str.1564, i32 noundef %i.j, ptr noundef %3, ptr noundef %i.o) ; 0 uses
  store i32 1, ptr %i.h, align 4
  switch i32 %i.m, label %bb.eo [
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.bi
    i32 5, label %bb.bi
    i32 6, label %bb.bl
    i32 7, label %bb.bo
    i32 8, label %bb.bo
    i32 9, label %bb.br
    i32 10, label %bb.br
    i32 11, label %tryExtensionEvent.exit
    i32 12, label %bb.bs
    i32 13, label %bb.bt
    i32 14, label %bb.bu
    i32 15, label %bb.bv
    i32 16, label %bb.bw
    i32 17, label %bb.bx
    i32 18, label %bb.by
    i32 19, label %bb.bz
    i32 20, label %bb.ca
    i32 21, label %bb.cb
    i32 22, label %bb.cc
    i32 23, label %tryExtensionEvent.exit
    i32 24, label %bb.cd
    i32 25, label %bb.ce
    i32 26, label %bb.cf
    i32 27, label %bb.cg
    i32 28, label %bb.ch
    i32 29, label %bb.co
    i32 30, label %bb.cv
    i32 31, label %bb.dk
    i32 32, label %bb.dz
    i32 33, label %bb.ea
    i32 34, label %bb.ef
    i32 35, label %bb.eg
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.q = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef 28, i32 noundef %6)
  %i.t = zext i16 %i.s to i32                     ; 6 uses
  %i.u = load i32, ptr @hf_x11_keycode, align 4
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = getelementptr i8, ptr %5, i64 10344      ; 4 uses
  %i.x = getelementptr i8, ptr %5, i64 12396
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = getelementptr i8, ptr %5, i64 12392
  %i.aa = load i32, ptr %i.z, align 8             ; 8 uses
  %i.ab = getelementptr i8, ptr %5, i64 12400     ; 2 uses
  %i.ac = getelementptr i8, ptr %5, i64 12464
  %i.ad = load i32, ptr %i.ac, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ae = zext i8 %i.q to i64
  %i.af = getelementptr [8 x i8], ptr %i.w, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8            ; 6 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %keycode2keysymString.exit, label %.preheader139.i

.preheader139.i:                                  ; preds = %bb.b
  %i.ai = icmp slt i32 %i.y, 256
  br i1 %i.ai, label %.preheader138.lr.ph.i, label %._crit_edge175.i

.preheader138.lr.ph.i:                            ; preds = %.preheader139.i
  %i.aj = icmp sgt i32 %i.aa, 0
  br i1 %i.aj, label %.preheader138.lr.ph.split.us.i, label %._crit_edge175.i

.preheader138.lr.ph.split.us.i:                   ; preds = %.preheader138.lr.ph.i
  %i.ak = sext i32 %i.y to i64                    ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.w, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %keycode2keysymString.exit, label %.lr.ph.split.us181.preheader.i

.lr.ph.split.us181.preheader.i:                   ; preds = %.preheader138.lr.ph.split.us.i
  %wide.trip.count.i = zext nneg i32 %i.aa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ao = icmp eq i32 %i.aa, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1039 = trunc i32 %i.aa to i1
  br label %.lr.ph.split.us.i

.preheader138.us.i:                               ; preds = %._crit_edge.us.i
  %indvars.iv.next243.i = add nsw i64 %indvars.iv223.i, 1 ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv.next243.i
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %keycode2keysymString.exit, label %.lr.ph.split.us.i, !llvm.loop !37

.lr.ph.split.us181.i.new:                         ; preds = %.lr.ph.split.us.i, %bb.l
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.l ], [ 0, %.lr.ph.split.us.i ] ; 3 uses
  %.197154.us182.i = phi i32 [ %.298.us.i.1, %bb.l ], [ %.096165.us180.i, %.lr.ph.split.us.i ] ; 4 uses
  %.1100153.us183.i = phi i32 [ %.2101.us.i.1, %bb.l ], [ %.099164.us181.i, %.lr.ph.split.us.i ] ; 4 uses
  %.1110152.us184.i = phi i32 [ %.2111.us.i.1, %bb.l ], [ %.0109163.us182.i, %.lr.ph.split.us.i ] ; 4 uses
  %.1113151.us185.i = phi i32 [ %.2114.us.i.1, %bb.l ], [ %.0112162.us183.i, %.lr.ph.split.us.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.l ], [ 0, %.lr.ph.split.us.i ]
  %i.as = getelementptr [4 x i8], ptr %7, i64 %indvars.iv.i
  %i.at = load i32, ptr %i.as, align 4
  switch i32 %i.at, label %bb.g [
    i32 65406, label %bb.f
    i32 65407, label %bb.e
    i32 65509, label %bb.d
    i32 65510, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.split.us181.i.new
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.split.us181.i.new
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.split.us181.i.new
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us181.i.new
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph.split.us181.i.new
  %.2114.us.i = phi i32 [ %.1113151.us185.i, %.lr.ph.split.us181.i.new ], [ %8, %bb.f ], [ %.1113151.us185.i, %bb.e ], [ %.1113151.us185.i, %bb.d ], [ %.1113151.us185.i, %bb.c ] ; 4 uses
  %.2111.us.i = phi i32 [ %.1110152.us184.i, %.lr.ph.split.us181.i.new ], [ %.1110152.us184.i, %bb.f ], [ %8, %bb.e ], [ %.1110152.us184.i, %bb.d ], [ %.1110152.us184.i, %bb.c ] ; 4 uses
  %.2101.us.i = phi i32 [ %.1100153.us183.i, %.lr.ph.split.us181.i.new ], [ %.1100153.us183.i, %bb.f ], [ %.1100153.us183.i, %bb.e ], [ %8, %bb.d ], [ %.1100153.us183.i, %bb.c ] ; 4 uses
  %.298.us.i = phi i32 [ %.197154.us182.i, %.lr.ph.split.us181.i.new ], [ %.197154.us182.i, %bb.f ], [ %.197154.us182.i, %bb.e ], [ %.197154.us182.i, %bb.d ], [ %8, %bb.c ] ; 4 uses
  %i.au = getelementptr [4 x i8], ptr %7, i64 %indvars.iv.i
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  switch i32 %i.aw, label %bb.l [
    i32 65406, label %bb.k
    i32 65407, label %bb.j
    i32 65509, label %bb.i
    i32 65510, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.2114.us.i.1 = phi i32 [ %.2114.us.i, %bb.g ], [ %8, %bb.k ], [ %.2114.us.i, %bb.j ], [ %.2114.us.i, %bb.i ], [ %.2114.us.i, %bb.h ] ; 3 uses
  %.2111.us.i.1 = phi i32 [ %.2111.us.i, %bb.g ], [ %.2111.us.i, %bb.k ], [ %8, %bb.j ], [ %.2111.us.i, %bb.i ], [ %.2111.us.i, %bb.h ] ; 3 uses
  %.2101.us.i.1 = phi i32 [ %.2101.us.i, %bb.g ], [ %.2101.us.i, %bb.k ], [ %.2101.us.i, %bb.j ], [ %8, %bb.i ], [ %.2101.us.i, %bb.h ] ; 3 uses
  %.298.us.i.1 = phi i32 [ %.298.us.i, %bb.g ], [ %.298.us.i, %bb.k ], [ %.298.us.i, %bb.j ], [ %.298.us.i, %bb.i ], [ %8, %bb.h ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.split.us181.i.new, !llvm.loop !38

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.l
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.split.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.unr-lcssa ]
  %.197154.us182.i.epil.init = phi i32 [ %.096165.us180.i, %.lr.ph.split.us.i ], [ %.298.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  %.1100153.us183.i.epil.init = phi i32 [ %.099164.us181.i, %.lr.ph.split.us.i ], [ %.2101.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  %.1110152.us184.i.epil.init = phi i32 [ %.0109163.us182.i, %.lr.ph.split.us.i ], [ %.2111.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  %.1113151.us185.i.epil.init = phi i32 [ %.0112162.us183.i, %.lr.ph.split.us.i ], [ %.2114.us.i.1, %._crit_edge.us.i.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod1039)
  %i.ax = getelementptr [4 x i8], ptr %7, i64 %indvars.iv.i.epil.init
  %i.ay = load i32, ptr %i.ax, align 4
  switch i32 %i.ay, label %._crit_edge.us.i [
    i32 65406, label %bb.p
    i32 65407, label %bb.o
    i32 65509, label %bb.n
    i32 65510, label %bb.m
  ]

bb.m:                                             ; preds = %.epil.preheader
  br label %._crit_edge.us.i

bb.n:                                             ; preds = %.epil.preheader
  br label %._crit_edge.us.i

bb.o:                                             ; preds = %.epil.preheader
  br label %._crit_edge.us.i

bb.p:                                             ; preds = %.epil.preheader
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %.epil.preheader, %bb.m, %bb.n, %bb.o, %bb.p, %._crit_edge.us.i.unr-lcssa
  %.2114.us.i.lcssa = phi i32 [ %.2114.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.1113151.us185.i.epil.init, %.epil.preheader ], [ %8, %bb.p ], [ %.1113151.us185.i.epil.init, %bb.o ], [ %.1113151.us185.i.epil.init, %bb.n ], [ %.1113151.us185.i.epil.init, %bb.m ] ; 2 uses
  %.2111.us.i.lcssa = phi i32 [ %.2111.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.1110152.us184.i.epil.init, %.epil.preheader ], [ %.1110152.us184.i.epil.init, %bb.p ], [ %8, %bb.o ], [ %.1110152.us184.i.epil.init, %bb.n ], [ %.1110152.us184.i.epil.init, %bb.m ] ; 2 uses
  %.2101.us.i.lcssa = phi i32 [ %.2101.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.1100153.us183.i.epil.init, %.epil.preheader ], [ %.1100153.us183.i.epil.init, %bb.p ], [ %.1100153.us183.i.epil.init, %bb.o ], [ %8, %bb.n ], [ %.1100153.us183.i.epil.init, %bb.m ] ; 2 uses
  %.298.us.i.lcssa = phi i32 [ %.298.us.i.1, %._crit_edge.us.i.unr-lcssa ], [ %.197154.us182.i.epil.init, %.epil.preheader ], [ %.197154.us182.i.epil.init, %bb.p ], [ %.197154.us182.i.epil.init, %bb.o ], [ %.197154.us182.i.epil.init, %bb.n ], [ %8, %bb.m ] ; 2 uses
  %exitcond245.not.i = icmp eq i64 %indvars.iv223.i, 255
  br i1 %exitcond245.not.i, label %._crit_edge175.i, label %.preheader138.us.i, !llvm.loop !37

.lr.ph.split.us.i:                                ; preds = %.preheader138.us.i, %.lr.ph.split.us181.preheader.i
  %indvars.iv223.i = phi i64 [ %i.ak, %.lr.ph.split.us181.preheader.i ], [ %indvars.iv.next243.i, %.preheader138.us.i ] ; 3 uses
  %7 = phi ptr [ %i.am, %.lr.ph.split.us181.preheader.i ], [ %i.aq, %.preheader138.us.i ] ; 3 uses
  %.0112162.us183.i = phi i32 [ -1, %.lr.ph.split.us181.preheader.i ], [ %.2114.us.i.lcssa, %.preheader138.us.i ] ; 2 uses
  %.0109163.us182.i = phi i32 [ -1, %.lr.ph.split.us181.preheader.i ], [ %.2111.us.i.lcssa, %.preheader138.us.i ] ; 2 uses
  %.099164.us181.i = phi i32 [ 0, %.lr.ph.split.us181.preheader.i ], [ %.2101.us.i.lcssa, %.preheader138.us.i ] ; 2 uses
  %.096165.us180.i = phi i32 [ 0, %.lr.ph.split.us181.preheader.i ], [ %.298.us.i.lcssa, %.preheader138.us.i ] ; 2 uses
  %8 = trunc nsw i64 %indvars.iv223.i to i32      ; 12 uses
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.split.us181.i.new

._crit_edge175.i:                                 ; preds = %._crit_edge.us.i, %.preheader138.lr.ph.i, %.preheader139.i
  %storemerge.lcssa167.lcssa.i = phi i32 [ undef, %.preheader139.i ], [ 0, %.preheader138.lr.ph.i ], [ %i.aa, %._crit_edge.us.i ] ; 2 uses
  %.0112.lcssa.i = phi i32 [ -1, %.preheader139.i ], [ -1, %.preheader138.lr.ph.i ], [ %.2114.us.i.lcssa, %._crit_edge.us.i ] ; 24 uses
  %.0109.lcssa.i = phi i32 [ -1, %.preheader139.i ], [ -1, %.preheader138.lr.ph.i ], [ %.2111.us.i.lcssa, %._crit_edge.us.i ] ; 24 uses
  %.099.lcssa.i = phi i32 [ 0, %.preheader139.i ], [ 0, %.preheader138.lr.ph.i ], [ %.2101.us.i.lcssa, %._crit_edge.us.i ] ; 4 uses
  %.096.lcssa.i = phi i32 [ 0, %.preheader139.i ], [ 0, %.preheader138.lr.ph.i ], [ %.298.us.i.lcssa, %._crit_edge.us.i ] ; 4 uses
  %i.az = getelementptr i8, ptr %5, i64 12456
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %keycode2keysymString.exit, label %.preheader137.i

.preheader137.i:                                  ; preds = %._crit_edge175.i
  %i.bc = icmp sgt i32 %i.ad, 0
  br i1 %i.bc, label %.preheader136.us.preheader.i, label %._crit_edge.i

.preheader136.us.preheader.i:                     ; preds = %.preheader137.i
  %wide.trip.count249.i = zext nneg i32 %i.ad to i64 ; 18 uses
  %i.bd = add nsw i64 %wide.trip.count249.i, -1   ; 8 uses
  %i.be = load ptr, ptr %i.ab, align 8            ; 3 uses
  %xtraiter1041 = and i64 %wide.trip.count249.i, 1
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %.epil.preheader1040, label %.preheader136.us.i.new

.preheader136.us.i.new:                           ; preds = %.preheader136.us.preheader.i
  %unroll_iter1046 = and i64 %wide.trip.count249.i, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader136.us.i.new
  %indvars.iv246.i = phi i64 [ 0, %.preheader136.us.i.new ], [ %indvars.iv.next247.i.1, %bb.q ] ; 3 uses
  %.1104206.us.i = phi i32 [ -1, %.preheader136.us.i.new ], [ %.2105.us.i.1, %bb.q ]
  %.1107205.us.i = phi i32 [ -1, %.preheader136.us.i.new ], [ %.2108.us.i.1, %bb.q ]
  %niter1047 = phi i64 [ 0, %.preheader136.us.i.new ], [ %niter1047.next.1, %bb.q ]
  %i.bg = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv246.i
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bi = icmp eq i32 %i.bh, %.0109.lcssa.i       ; 2 uses
  %i.bj = icmp ne i32 %i.bh, %.0112.lcssa.i
  %i.bk = select i1 %i.bi, i1 true, i1 %i.bj
  %i.bl = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv246.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp eq i32 %i.bn, %.0109.lcssa.i       ; 2 uses
  %i.bp = icmp ne i32 %i.bn, %.0112.lcssa.i
  %i.bq = select i1 %i.bo, i1 true, i1 %i.bi
  %.2108.us.i.1 = select i1 %i.bq, i32 0, i32 %.1107205.us.i ; 3 uses
  %i.br = select i1 %i.bo, i1 true, i1 %i.bp
  %i.bs = select i1 %i.br, i1 %i.bk, i1 false
  %.2105.us.i.1 = select i1 %i.bs, i32 %.1104206.us.i, i32 0 ; 3 uses
  %indvars.iv.next247.i.1 = add nuw nsw i64 %indvars.iv246.i, 2 ; 2 uses
  %niter1047.next.1 = add i64 %niter1047, 2       ; 2 uses
  %niter1047.ncmp.1 = icmp eq i64 %niter1047.next.1, %unroll_iter1046
  br i1 %niter1047.ncmp.1, label %._crit_edge.us212.i.unr-lcssa, label %bb.q, !llvm.loop !39

._crit_edge.us212.i.unr-lcssa:                    ; preds = %bb.q
  %lcmp.mod1042.not = icmp eq i64 %xtraiter1041, 0
  br i1 %lcmp.mod1042.not, label %._crit_edge.us212.i, label %.epil.preheader1040

.epil.preheader1040:                              ; preds = %._crit_edge.us212.i.unr-lcssa, %.preheader136.us.preheader.i
  %indvars.iv246.i.epil.init = phi i64 [ 0, %.preheader136.us.preheader.i ], [ %indvars.iv.next247.i.1, %._crit_edge.us212.i.unr-lcssa ]
  %.1104206.us.i.epil.init = phi i32 [ -1, %.preheader136.us.preheader.i ], [ %.2105.us.i.1, %._crit_edge.us212.i.unr-lcssa ]
  %.1107205.us.i.epil.init = phi i32 [ -1, %.preheader136.us.preheader.i ], [ %.2108.us.i.1, %._crit_edge.us212.i.unr-lcssa ]
  %lcmp.mod1045 = trunc i32 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod1045)
  %i.bt = getelementptr [4 x i8], ptr %i.be, i64 %indvars.iv246.i.epil.init
  %i.bu = load i32, ptr %i.bt, align 4            ; 2 uses
  %i.bv = icmp eq i32 %i.bu, %.0109.lcssa.i       ; 2 uses
  %i.bw = icmp ne i32 %i.bu, %.0112.lcssa.i
  %.2108.us.i.epil = select i1 %i.bv, i32 0, i32 %.1107205.us.i.epil.init
  %i.bx = select i1 %i.bv, i1 true, i1 %i.bw
  %.2105.us.i.epil = select i1 %i.bx, i32 %.1104206.us.i.epil.init, i32 0
  br label %._crit_edge.us212.i

._crit_edge.us212.i:                              ; preds = %._crit_edge.us212.i.unr-lcssa, %.epil.preheader1040
  %.2108.us.i.lcssa = phi i32 [ %.2108.us.i.1, %._crit_edge.us212.i.unr-lcssa ], [ %.2108.us.i.epil, %.epil.preheader1040 ] ; 2 uses
  %.2105.us.i.lcssa = phi i32 [ %.2105.us.i.1, %._crit_edge.us212.i.unr-lcssa ], [ %.2105.us.i.epil, %.epil.preheader1040 ] ; 3 uses
  %i.by = icmp eq i32 %.2108.us.i.lcssa, -1
  br i1 %i.by, label %.preheader136.us.i.1, label %.preheader.i

.preheader136.us.i.1:                             ; preds = %._crit_edge.us212.i
  %i.bz = getelementptr i8, ptr %5, i64 12408
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %xtraiter1041.1 = and i64 %wide.trip.count249.i, 1
  %i.cb = icmp eq i64 %i.bd, 0
  br i1 %i.cb, label %.epil.preheader1040.1, label %.preheader136.us.i.new.1

.preheader136.us.i.new.1:                         ; preds = %.preheader136.us.i.1
  %unroll_iter1046.1 = and i64 %wide.trip.count249.i, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader136.us.i.new.1
  %indvars.iv246.i.1 = phi i64 [ 0, %.preheader136.us.i.new.1 ], [ %indvars.iv.next247.i.1.1, %bb.r ] ; 3 uses
  %.1104206.us.i.1 = phi i32 [ %.2105.us.i.lcssa, %.preheader136.us.i.new.1 ], [ %.2105.us.i.1.1, %bb.r ]
  %.1107205.us.i.1 = phi i32 [ -1, %.preheader136.us.i.new.1 ], [ %.2108.us.i.1.1, %bb.r ]
  %niter1047.1 = phi i64 [ 0, %.preheader136.us.i.new.1 ], [ %niter1047.next.1.1, %bb.r ]
  %i.cc = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv246.i.1
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = icmp eq i32 %i.cd, %.0109.lcssa.i       ; 2 uses
  %i.cf = icmp ne i32 %i.cd, %.0112.lcssa.i
  %i.cg = select i1 %i.ce, i1 true, i1 %i.cf
  %i.ch = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv246.i.1
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = icmp eq i32 %i.cj, %.0109.lcssa.i       ; 2 uses
  %i.cl = icmp ne i32 %i.cj, %.0112.lcssa.i
  %i.cm = select i1 %i.ck, i1 true, i1 %i.ce
  %.2108.us.i.1.1 = select i1 %i.cm, i32 1, i32 %.1107205.us.i.1 ; 3 uses
  %i.cn = select i1 %i.ck, i1 true, i1 %i.cl
  %i.co = select i1 %i.cn, i1 %i.cg, i1 false
  %.2105.us.i.1.1 = select i1 %i.co, i32 %.1104206.us.i.1, i32 1 ; 3 uses
  %indvars.iv.next247.i.1.1 = add nuw nsw i64 %indvars.iv246.i.1, 2 ; 2 uses
  %niter1047.next.1.1 = add i64 %niter1047.1, 2   ; 2 uses
  %niter1047.ncmp.1.1 = icmp eq i64 %niter1047.next.1.1, %unroll_iter1046.1
  br i1 %niter1047.ncmp.1.1, label %._crit_edge.us212.i.unr-lcssa.1, label %bb.r, !llvm.loop !39

._crit_edge.us212.i.unr-lcssa.1:                  ; preds = %bb.r
  %lcmp.mod1042.1.not = icmp eq i64 %xtraiter1041.1, 0
  br i1 %lcmp.mod1042.1.not, label %._crit_edge.us212.i.1, label %.epil.preheader1040.1

.epil.preheader1040.1:                            ; preds = %._crit_edge.us212.i.unr-lcssa.1, %.preheader136.us.i.1
  %indvars.iv246.i.epil.init.1 = phi i64 [ 0, %.preheader136.us.i.1 ], [ %indvars.iv.next247.i.1.1, %._crit_edge.us212.i.unr-lcssa.1 ]
  %.1104206.us.i.epil.init.1 = phi i32 [ %.2105.us.i.lcssa, %.preheader136.us.i.1 ], [ %.2105.us.i.1.1, %._crit_edge.us212.i.unr-lcssa.1 ]
  %.1107205.us.i.epil.init.1 = phi i32 [ -1, %.preheader136.us.i.1 ], [ %.2108.us.i.1.1, %._crit_edge.us212.i.unr-lcssa.1 ]
  %lcmp.mod1045.1 = trunc i32 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod1045.1)
  %i.cp = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv246.i.epil.init.1
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = icmp eq i32 %i.cq, %.0109.lcssa.i       ; 2 uses
  %i.cs = icmp ne i32 %i.cq, %.0112.lcssa.i
  %.2108.us.i.epil.1 = select i1 %i.cr, i32 1, i32 %.1107205.us.i.epil.init.1
  %i.ct = select i1 %i.cr, i1 true, i1 %i.cs
  %.2105.us.i.epil.1 = select i1 %i.ct, i32 %.1104206.us.i.epil.init.1, i32 1
  br label %._crit_edge.us212.i.1

._crit_edge.us212.i.1:                            ; preds = %.epil.preheader1040.1, %._crit_edge.us212.i.unr-lcssa.1
  %.2108.us.i.lcssa.1 = phi i32 [ %.2108.us.i.1.1, %._crit_edge.us212.i.unr-lcssa.1 ], [ %.2108.us.i.epil.1, %.epil.preheader1040.1 ] ; 2 uses
  %.2105.us.i.lcssa.1 = phi i32 [ %.2105.us.i.1.1, %._crit_edge.us212.i.unr-lcssa.1 ], [ %.2105.us.i.epil.1, %.epil.preheader1040.1 ] ; 3 uses
  %i.cu = icmp eq i32 %.2108.us.i.lcssa.1, -1
  br i1 %i.cu, label %.preheader136.us.i.2, label %.preheader.i

.preheader136.us.i.2:                             ; preds = %._crit_edge.us212.i.1
  %i.cv = getelementptr i8, ptr %5, i64 12416
  %i.cw = load ptr, ptr %i.cv, align 8            ; 3 uses
  %xtraiter1041.2 = and i64 %wide.trip.count249.i, 1
  %i.cx = icmp eq i64 %i.bd, 0
  br i1 %i.cx, label %.epil.preheader1040.2, label %.preheader136.us.i.new.2

.preheader136.us.i.new.2:                         ; preds = %.preheader136.us.i.2
  %unroll_iter1046.2 = and i64 %wide.trip.count249.i, 2147483646
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader136.us.i.new.2
  %indvars.iv246.i.2 = phi i64 [ 0, %.preheader136.us.i.new.2 ], [ %indvars.iv.next247.i.1.2, %bb.s ] ; 3 uses
  %.1104206.us.i.2 = phi i32 [ %.2105.us.i.lcssa.1, %.preheader136.us.i.new.2 ], [ %.2105.us.i.1.2, %bb.s ]
  %.1107205.us.i.2 = phi i32 [ -1, %.preheader136.us.i.new.2 ], [ %.2108.us.i.1.2, %bb.s ]
  %niter1047.2 = phi i64 [ 0, %.preheader136.us.i.new.2 ], [ %niter1047.next.1.2, %bb.s ]
  %i.cy = getelementptr [4 x i8], ptr %i.cw, i64 %indvars.iv246.i.2
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = icmp eq i32 %i.cz, %.0109.lcssa.i       ; 2 uses
  %i.db = icmp ne i32 %i.cz, %.0112.lcssa.i
  %i.dc = select i1 %i.da, i1 true, i1 %i.db
  %i.dd = getelementptr [4 x i8], ptr %i.cw, i64 %indvars.iv246.i.2
  %i.de = getelementptr i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = icmp eq i32 %i.df, %.0109.lcssa.i       ; 2 uses
  %i.dh = icmp ne i32 %i.df, %.0112.lcssa.i
  %i.di = select i1 %i.dg, i1 true, i1 %i.da
  %.2108.us.i.1.2 = select i1 %i.di, i32 2, i32 %.1107205.us.i.2 ; 3 uses
  %i.dj = select i1 %i.dg, i1 true, i1 %i.dh
  %i.dk = select i1 %i.dj, i1 %i.dc, i1 false
  %.2105.us.i.1.2 = select i1 %i.dk, i32 %.1104206.us.i.2, i32 2 ; 3 uses
  %indvars.iv.next247.i.1.2 = add nuw nsw i64 %indvars.iv246.i.2, 2 ; 2 uses
  %niter1047.next.1.2 = add i64 %niter1047.2, 2   ; 2 uses
  %niter1047.ncmp.1.2 = icmp eq i64 %niter1047.next.1.2, %unroll_iter1046.2
  br i1 %niter1047.ncmp.1.2, label %._crit_edge.us212.i.unr-lcssa.2, label %bb.s, !llvm.loop !39

._crit_edge.us212.i.unr-lcssa.2:                  ; preds = %bb.s
  %lcmp.mod1042.2.not = icmp eq i64 %xtraiter1041.2, 0
  br i1 %lcmp.mod1042.2.not, label %._crit_edge.us212.i.2, label %.epil.preheader1040.2

.epil.preheader1040.2:                            ; preds = %._crit_edge.us212.i.unr-lcssa.2, %.preheader136.us.i.2
  %indvars.iv246.i.epil.init.2 = phi i64 [ 0, %.preheader136.us.i.2 ], [ %indvars.iv.next247.i.1.2, %._crit_edge.us212.i.unr-lcssa.2 ]
  %.1104206.us.i.epil.init.2 = phi i32 [ %.2105.us.i.lcssa.1, %.preheader136.us.i.2 ], [ %.2105.us.i.1.2, %._crit_edge.us212.i.unr-lcssa.2 ]
  %.1107205.us.i.epil.init.2 = phi i32 [ -1, %.preheader136.us.i.2 ], [ %.2108.us.i.1.2, %._crit_edge.us212.i.unr-lcssa.2 ]
  %lcmp.mod1045.2 = trunc i32 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod1045.2)
  %i.dl = getelementptr [4 x i8], ptr %i.cw, i64 %indvars.iv246.i.epil.init.2
  %i.dm = load i32, ptr %i.dl, align 4            ; 2 uses
  %i.dn = icmp eq i32 %i.dm, %.0109.lcssa.i       ; 2 uses
  %i.do = icmp ne i32 %i.dm, %.0112.lcssa.i
  %.2108.us.i.epil.2 = select i1 %i.dn, i32 2, i32 %.1107205.us.i.epil.init.2
  %i.dp = select i1 %i.dn, i1 true, i1 %i.do
  %.2105.us.i.epil.2 = select i1 %i.dp, i32 %.1104206.us.i.epil.init.2, i32 2
  br label %._crit_edge.us212.i.2

._crit_edge.us212.i.2:                            ; preds = %.epil.preheader1040.2, %._crit_edge.us212.i.unr-lcssa.2
  %.2108.us.i.lcssa.2 = phi i32 [ %.2108.us.i.1.2, %._crit_edge.us212.i.unr-lcssa.2 ], [ %.2108.us.i.epil.2, %.epil.preheader1040.2 ] ; 2 uses
  %.2105.us.i.lcssa.2 = phi i32 [ %.2105.us.i.1.2, %._crit_edge.us212.i.unr-lcssa.2 ], [ %.2105.us.i.epil.2, %.epil.preheader1040.2 ] ; 3 uses
  %i.dq = icmp eq i32 %.2108.us.i.lcssa.2, -1
  br i1 %i.dq, label %.preheader136.us.i.3, label %.preheader.i

.preheader136.us.i.3:                             ; preds = %._crit_edge.us212.i.2
end_hunk_0
