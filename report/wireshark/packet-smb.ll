Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-smb?download=true
inline.NumInlined: 279
inline.NumDeleted: 72
begin_hunk_0_@dissect_message_group_id:bb.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_send_multi_block_message_text_request(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3)
  %i.b = load i32, ptr @hf_smb_word_count, align 4
  %i.c = zext i8 %i.a to i32
  %i.d = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef %i.c) ; 0 uses
  %i.e = add i32 %3, 1                            ; 2 uses
  %i.f = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.e) ; 4 uses
  %i.g = load i32, ptr @hf_smb_byte_count, align 4
  %i.h = zext i16 %i.f to i32
  %i.i = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.e, i32 noundef 2, i32 noundef %i.h) ; 0 uses
  %i.j = add i32 %3, 3                            ; 2 uses
  %i.k = icmp eq i16 %i.f, 0
  br i1 %i.k, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr @hf_smb_buffer_format, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef -2147483648) ; 0 uses
  %i.n = add i32 %3, 4                            ; 3 uses
  %i.o = icmp ult i16 %i.f, 3
  br i1 %i.o, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call zeroext i16 @tvb_get_letohs(ptr noundef %0, i32 noundef %i.n) ; 4 uses
  %i.q = load i32, ptr @hf_smb_message_len, align 4
  %i.r = zext i16 %i.p to i32                     ; 3 uses
  %i.s = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.n, i32 noundef 2, i32 noundef %i.r) ; 0 uses
  %i.t = add i32 %3, 6                            ; 3 uses
  %i.u = add i16 %i.f, -3                         ; 3 uses
  %i.v = icmp ult i16 %i.u, %i.p
  br i1 %i.v, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr @hf_smb_message, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.r, i32 noundef 0) ; 0 uses
  %i.y = add i32 %i.t, %i.r                       ; 4 uses
  %.not = icmp eq i16 %i.u, %i.p
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %narrow = sub nuw i16 %i.u, %i.p
  %i.z = zext i16 %narrow to i32
  %i.aa = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.y)
  %spec.select68 = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.z)
  %i.ab = and i32 %spec.select68, 65535           ; 3 uses
  %.not67 = icmp eq i32 %i.ab, 0
  br i1 %.not67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr @hf_smb_extra_byte_parameters, align 4
  %i.ad = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = add i32 %i.ab, %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.j, %bb.a ], [ %i.n, %bb.b ], [ %i.t, %bb.c ], [ %i.ae, %bb.g ], [ %i.y, %bb.d ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @dissect_smb_UTIME(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.nstime_t, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %2) ; 4 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  store i64 %i.b, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.c, align 8
  %i.d = icmp eq i32 %i.a, 0
  %i.e = icmp ne ptr %4, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_time_format_value(ptr noundef %1, i32 noundef %3, ptr noundef %0, i32 noundef %2, i32 noundef 4, ptr noundef nonnull %6, ptr noundef nonnull @.str.2742, ptr noundef nonnull %4) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.a, -1
  %i.h = icmp ne ptr %5, null
  %or.cond3 = and i1 %i.h, %i.g
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_time_format_value(ptr noundef %1, i32 noundef %3, ptr noundef %0, i32 noundef %2, i32 noundef 4, ptr noundef nonnull %6, ptr noundef nonnull @.str.2743, ptr noundef nonnull %5) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @TimeZoneFaster(i64 noundef range(i64 0, 4294967296) %i.b)
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i64 %i.k, %i.b
  %i.m = tail call fastcc i32 @TimeZoneFaster(i64 noundef %i.l)
  %i.n = add i32 %i.m, %i.a
  %i.o = zext i32 %i.n to i64
  store i64 %i.o, ptr %6, align 8
  %i.p = call ptr @proto_tree_add_time(ptr noundef %1, i32 noundef %3, ptr noundef %0, i32 noundef %2, i32 noundef 4, ptr noundef nonnull %6) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = add i32 %2, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @TimeZoneFaster(i64 noundef range(i64 -2147483648, 6442450943) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @time(ptr noundef null) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.050 = phi i64 [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 11 uses
  %i.c = load i32, ptr @TimeZoneFaster.table_size, align 4 ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.e = load ptr, ptr @TimeZoneFaster.dst_table, align 8
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.f = getelementptr [24 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not = icmp slt i64 %.050, %i.g
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %.not59 = icmp sgt i64 %.050, %i.i
  br i1 %.not59, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !29

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i32, ptr %i.j, align 8
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.049.lcssa = phi i32 [ 0, %bb.c ], [ %i.c, %bb.f ] ; 2 uses
  %i.l = tail call fastcc i32 @TimeZone(i64 noundef %.050) ; 6 uses
  %i.m = load ptr, ptr @TimeZoneFaster.dst_table, align 8 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = add nuw i32 %.049.lcssa, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 24                     ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.r = tail call noalias ptr @g_malloc(i64 noundef %i.q) #20
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.s = tail call ptr @g_realloc(ptr noundef nonnull %i.m, i64 noundef %i.q)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge = phi ptr [ %i.s, %bb.i ], [ %i.r, %bb.h ] ; 4 uses
  store ptr %storemerge, ptr @TimeZoneFaster.tdt, align 8
  %i.t = icmp eq ptr %storemerge, null
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr @TimeZoneFaster.dst_table, align 8
  tail call void @g_free(ptr noundef %i.u)
  store i32 0, ptr @TimeZoneFaster.table_size, align 4
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  store ptr %storemerge, ptr @TimeZoneFaster.dst_table, align 8
  %i.v = load i32, ptr @TimeZoneFaster.table_size, align 4
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @TimeZoneFaster.table_size, align 4
  %i.x = zext nneg i32 %.049.lcssa to i64         ; 4 uses
  %i.y = getelementptr [24 x i8], ptr %storemerge, i64 %i.x ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store i32 %i.l, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  store i64 %.050, ptr %i.aa, align 8
  store i64 %.050, ptr %i.y, align 8
  %i.ab = icmp sgt i64 %.050, -9223372036839011409
  br i1 %i.ab, label %.lr.ph64.preheader, label %.preheader

.lr.ph64.preheader:                               ; preds = %bb.l
  %i.ac = add i64 %.050, -15768000
  br label %.lr.ph64

.preheader.loopexit:                              ; preds = %bb.q
  %i.ad = getelementptr [24 x i8], ptr %.pre, i64 %i.x
  %.phi.trans.insert71 = getelementptr i8, ptr %i.ad, i64 8
  %.pre72 = load i64, ptr %.phi.trans.insert71, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.l
  %i.ae = phi i64 [ %.pre72, %.preheader.loopexit ], [ %.050, %bb.l ] ; 2 uses
  %i.af = add i64 %.050, 15764400
  %i.ag = icmp sgt i64 %i.af, %i.ae
  br i1 %i.ag, label %.lr.ph66.preheader, label %.loopexit

.lr.ph66.preheader:                               ; preds = %.preheader
  %1 = add i64 %.050, 15768000
  br label %.lr.ph66

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %bb.q
  %i.ah = phi i64 [ %i.aq, %bb.q ], [ %.050, %.lr.ph64.preheader ] ; 2 uses
  %.04662 = phi i64 [ %.147, %bb.q ], [ %i.ac, %.lr.ph64.preheader ] ; 3 uses
  %i.ai = sub i64 %i.ah, %.04662                  ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1209600
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph64
  %i.ak = add i64 %i.ah, -604800
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph64
  %i.al = sdiv i64 %i.ai, 2
  %i.am = add i64 %i.al, %.04662
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.151 = phi i64 [ %i.ak, %bb.m ], [ %i.am, %bb.n ] ; 4 uses
  %i.an = tail call fastcc i32 @TimeZone(i64 noundef %.151)
  %i.ao = icmp eq i32 %i.an, %i.l
  %.pre = load ptr, ptr @TimeZoneFaster.dst_table, align 8 ; 2 uses
  %i.ap = getelementptr [24 x i8], ptr %.pre, i64 %i.x ; 2 uses
  br i1 %i.ao, label %bb.p, label %._crit_edge69

._crit_edge69:                                    ; preds = %bb.o
  %.pre70 = load i64, ptr %i.ap, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %.151, ptr %i.ap, align 8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge69, %bb.p
  %i.aq = phi i64 [ %.151, %bb.p ], [ %.pre70, %._crit_edge69 ] ; 2 uses
  %.147 = phi i64 [ %.04662, %bb.p ], [ %.151, %._crit_edge69 ] ; 2 uses
  %i.ar = add i64 %.147, 3600
  %i.as = icmp slt i64 %i.ar, %i.aq
  br i1 %i.as, label %.lr.ph64, label %.preheader.loopexit, !llvm.loop !30

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %bb.v
  %i.at = phi i64 [ %i.bc, %bb.v ], [ %i.ae, %.lr.ph66.preheader ] ; 2 uses
  %.065 = phi i64 [ %.1, %bb.v ], [ %1, %.lr.ph66.preheader ] ; 3 uses
  %i.au = sub i64 %.065, %i.at                    ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1209600
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph66
  %i.aw = add i64 %i.at, 604800
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph66
  %.neg = sdiv i64 %i.au, -2
  %i.ax = add i64 %.neg, %.065
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2 = phi i64 [ %i.aw, %bb.r ], [ %i.ax, %bb.s ] ; 4 uses
  %i.ay = tail call fastcc i32 @TimeZone(i64 noundef %.2)
  %i.az = icmp eq i32 %i.ay, %i.l
  %.pre73 = load ptr, ptr @TimeZoneFaster.dst_table, align 8
  %i.ba = getelementptr [24 x i8], ptr %.pre73, i64 %i.x
  %i.bb = getelementptr i8, ptr %i.ba, i64 8      ; 2 uses
  br i1 %i.az, label %bb.u, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.t
  %.pre77 = load i64, ptr %i.bb, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 %.2, ptr %i.bb, align 8
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge74, %bb.u
  %i.bc = phi i64 [ %.2, %bb.u ], [ %.pre77, %._crit_edge74 ] ; 2 uses
  %.1 = phi i64 [ %.065, %bb.u ], [ %.2, %._crit_edge74 ] ; 2 uses
  %i.bd = add i64 %.1, -3600
  %i.be = icmp sgt i64 %i.bd, %i.bc
  br i1 %i.be, label %.lr.ph66, label %.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %bb.v, %.preheader, %bb.k, %bb.g
  %.048 = phi i32 [ %i.k, %bb.g ], [ %i.l, %bb.k ], [ %i.l, %.preheader ], [ %i.l, %bb.v ]
  ret i32 %.048
}

; Function Attrs: nounwind null_pointer_is_valid
declare i64 @time(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @TimeZone(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8
  %i.b = call ptr @gmtime(ptr noundef nonnull %i.a) #16 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.66.0.copyload = load i32, ptr %.sroa.66.0..sroa_idx, align 4 ; 2 uses
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.77.0.copyload = load i32, ptr %.sroa.77.0..sroa_idx, align 4
  %i.d = call ptr @localtime(ptr noundef nonnull %i.a) #16 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %.sroa.66.0.copyload, 1899       ; 3 uses
  %i.g = getelementptr i8, ptr %i.d, i64 20
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = add i32 %i.h, 1899                       ; 3 uses
  %i.j = sdiv i32 %i.f, 4
  %.neg.i = sdiv i32 %i.i, -4
  %.neg24.i = sdiv i32 %i.f, -100
  %.neg23.neg.i = sdiv i32 %i.i, 100
  %i.k = sdiv i32 %i.f, 400
  %.neg26.i = sdiv i32 %i.i, -400
  %i.l = sub i32 %.sroa.66.0.copyload, %i.h
  %i.m = mul i32 %i.l, 365
  %i.n = getelementptr i8, ptr %i.d, i64 28
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.k, %.sroa.77.0.copyload
  %.neg25.i = add i32 %i.p, %.neg24.i
  %i.q = add i32 %.neg25.i, %i.j
  %i.r = sub i32 %i.q, %i.o
  %i.s = add i32 %i.r, %.neg26.i
  %i.t = add i32 %i.s, %.neg23.neg.i
  %i.u = add i32 %i.t, %.neg.i
  %i.v = add i32 %i.u, %i.m
  %i.w = mul i32 %i.v, 24
  %i.x = getelementptr i8, ptr %i.d, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = sub i32 %.sroa.5.0.copyload, %i.y
  %i.aa = add i32 %i.z, %i.w
  %i.ab = mul i32 %i.aa, 60
  %i.ac = getelementptr i8, ptr %i.d, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = sub i32 %.sroa.4.0.copyload, %i.ad
  %i.af = add i32 %i.ae, %i.ab
  %i.ag = mul i32 %i.af, 60
  %i.ah = load i32, ptr %i.d, align 8
  %i.ai = sub i32 %.sroa.0.0.copyload, %i.ah
  %i.aj = add i32 %i.ai, %i.ag
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.aj, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @gmtime(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid
declare ptr @localtime(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_file_data_maybe_dcerpc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef range(i32 -1, 65536) %6, i16 noundef zeroext %7, i32 noundef %8, i16 noundef zeroext %9, ptr noundef nonnull %10) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %10, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i16, ptr %i.c, align 8
  %i.e = trunc i16 %i.d to i1
  %i.f = icmp eq i32 %8, 0
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i16 %5, %7
  br i1 %i.g, label %bb.d, label %dissect_file_data_dcerpc.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr @hf_smb_padding, align 4
  %narrow.i = sub nuw i16 %5, %7
  %i.i = zext i16 %narrow.i to i32                ; 2 uses
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %4, i32 noundef %i.i, i32 noundef 0) ; 0 uses
  %i.k = add i32 %4, %i.i
  br label %dissect_file_data_dcerpc.exit

dissect_file_data_dcerpc.exit:                    ; preds = %bb.c, %bb.d
  %.029.i = phi i16 [ %7, %bb.d ], [ %5, %bb.c ]
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %4, %bb.c ]  ; 3 uses
  %i.l = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.0.i) ; 2 uses
  %i.m = zext i16 %.029.i to i32                  ; 2 uses
  %i.n = tail call ptr @tvb_new_subset_length_caplen(ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.l, i32 noundef %i.m)
  %i.o = zext i16 %9 to i32
  %i.p = tail call zeroext i1 @dissect_pipe_dcerpc(ptr noundef %i.n, ptr noundef %1, ptr noundef %3, ptr noundef %2, i32 noundef %i.o, ptr noundef nonnull %10) ; 0 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.m)
  %.1.i = add i32 %..i, %.0.i
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.q = tail call i32 @dissect_file_data(ptr noundef %0, ptr noundef %2, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %6, i16 noundef zeroext %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %dissect_file_data_dcerpc.exit
  %.0 = phi i32 [ %.1.i, %dissect_file_data_dcerpc.exit ], [ %i.q, %bb.e ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @have_tap_listener(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @feed_eo_smb(i16 noundef zeroext range(i16 10, 48) %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i64 noundef %7, ptr nofree noundef nonnull readonly captures(none) %8) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %4 to i32
  %i.b = tail call ptr @tvb_new_subset_length(ptr noundef %2, i32 noundef %i.a, i32 noundef %5)
  %i.c = getelementptr i8, ptr %3, i64 416        ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noalias dereferenceable_or_null(96) ptr @wmem_alloc(ptr noundef %i.d, i64 noundef 96) #18 ; 16 uses
  %i.f = getelementptr i8, ptr %8, i64 48
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 48
  %.088 = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not89 = icmp eq ptr %.088, null
  br i1 %.not89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr i8, ptr %8, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.091 = phi ptr [ %.088, %.lr.ph ], [ %.0, %bb.e ] ; 2 uses
  %.07290 = phi ptr [ null, %.lr.ph ], [ %.1, %bb.e ] ; 3 uses
end_hunk_0
