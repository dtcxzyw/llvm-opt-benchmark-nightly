Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-isis-clv?download=true
begin_hunk_0_@isis_dissect_instance_identifier_clv
define hidden void @isis_dissect_instance_identifier_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %7, -1
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2, i32 noundef %6, ptr noundef nonnull @.str) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %4, ptr noundef %2, i32 noundef %6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.e = add i32 %7, -3                           ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.022 = phi i32 [ %i.h, %.lr.ph ], [ %i.e, %bb.c ] ; 2 uses
  %.019.in21 = phi i32 [ %.019, %.lr.ph ], [ %6, %bb.c ]
  %.019 = add i32 %.019.in21, 2                   ; 2 uses
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %5, ptr noundef %2, i32 noundef %.019, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.h = add nsw i32 %.022, -2
  %i.i = icmp samesign ugt i32 %.022, 2
  br i1 %i.i, label %.lr.ph, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @isis_dissect_authentication_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %7, 1
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %2, i32 noundef %6) ; 2 uses
  %i.c = add i32 %6, 1                            ; 9 uses
  %i.d = add nsw i32 %7, -1                       ; 7 uses
  switch i8 %i.b, label %bb.l [
    i8 1, label %bb.c
    i8 54, label %bb.f
    i8 3, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %.not78 = icmp eq i32 %7, 1
  br i1 %.not78, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %1, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @tvb_format_text(ptr noundef %i.f, ptr noundef %2, i32 noundef %i.c, i32 noundef %i.d)
  %i.h = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %0, i32 noundef %3, ptr noundef %2, i32 noundef %i.c, i32 noundef %i.d, ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef %i.d, ptr noundef %i.g) ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %0, i32 noundef %3, ptr noundef %2, i32 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.6) ; 0 uses
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.d, 16
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %1, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @tvb_bytes_to_str(ptr noundef %i.l, ptr noundef %2, i32 noundef %i.c, i32 noundef 16)
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %0, i32 noundef %3, ptr noundef %2, i32 noundef %i.c, i32 noundef 16, ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 16, ptr noundef %i.m) ; 0 uses
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.o = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %0, i32 noundef %3, ptr noundef %2, i32 noundef %i.c, i32 noundef %i.d, ptr noundef null, ptr noundef nonnull @.str.8) ; 0 uses
  br label %.critedge

bb.i:                                             ; preds = %bb.b
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %4, ptr noundef %2, i32 noundef %i.c, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = add i32 %6, 3                            ; 3 uses
  %i.r = add nsw i32 %7, -3                       ; 5 uses
  %i.s = tail call ptr @try_val_to_str(i32 noundef %i.r, ptr noundef nonnull @algorithm_vals) ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %1, i64 416
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call ptr @tvb_bytes_to_str(ptr noundef %i.u, ptr noundef %2, i32 noundef %i.q, i32 noundef %i.r)
  %i.w = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %0, i32 noundef %3, ptr noundef %2, i32 noundef %i.q, i32 noundef %i.r, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.s, i32 noundef %i.r, ptr noundef %i.v) ; 0 uses
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.x = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %0, i32 noundef %3, ptr noundef %2, i32 noundef %i.q, i32 noundef %i.r, ptr noundef null, ptr noundef nonnull @.str.10) ; 0 uses
  br label %.critedge

bb.l:                                             ; preds = %bb.b
  %i.y = zext i8 %i.b to i32
  %i.z = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %0, i32 noundef %3, ptr noundef %2, i32 noundef %i.c, i32 noundef %i.d, ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef %i.y, i32 noundef %i.d) ; 0 uses
  %i.aa = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %2, i32 noundef %i.c) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_bytes_to_str(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @try_val_to_str(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @isis_dissect_hostname_clv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %4, ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef 0)
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.a, ptr noundef nonnull @.str.12)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @isis_dissect_mt_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.025 = phi i32 [ %i.k, %bb.b ], [ %3, %bb.a ]  ; 4 uses
  %.02024 = phi i32 [ %i.j, %bb.b ], [ %4, %bb.a ] ; 3 uses
  %.not = icmp eq i32 %.02024, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.025) ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = and i32 %i.c, 4095                       ; 2 uses
  %i.e = tail call ptr @val_to_str_const(i32 noundef %i.d, ptr noundef nonnull @mt_id_vals, ptr noundef nonnull @.str.13)
  %.not21 = icmp sgt i16 %i.b, -1
  %i.f = select i1 %.not21, ptr @.str.16, ptr @.str.15
  %i.g = and i32 %i.c, 16384
  %.not22 = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not22, ptr @.str.16, ptr @.str.17
  %i.i = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %5, ptr noundef %0, i32 noundef %.025, i32 noundef 2, i32 noundef %i.c, ptr noundef nonnull @.str.14, ptr noundef %i.e, i32 noundef %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h) ; 0 uses
  %i.j = add nsw i32 %.02024, -2
  %i.k = add i32 %.025, 2
  %i.l = icmp samesign ugt i32 %.02024, 2
  br i1 %i.l, label %.lr.ph, label %.loopexit, !llvm.loop !10

bb.c:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef %6, ptr noundef %0, i32 noundef %.025, i32 noundef 1) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @isis_dissect_ip_int_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  %i.b = icmp samesign ult i32 %5, 4              ; 2 uses
  br i1 %.not, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  br i1 %i.b, label %.split.us, label %.lr.ph

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.b, label %.split.us, label %.lr.ph49

.lr.ph49:                                         ; preds = %.preheader.split.us.preheader
  %i.c = add nsw i32 %5, -4
  %i.d = lshr i32 %i.c, 2
  %.neg = mul i32 %5, -1073741823
  %i.e = add i32 %.neg, -4
  %i.f = lshr i32 %i.e, 2
  %i.g = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.f) ; 2 uses
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.g, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph49
  %i.i = sub nsw i32 0, %5
  %i.j = and i32 %i.i, 3
  %ident.check.not = icmp eq i32 %i.j, 0
  br i1 %ident.check.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %i.k = and i32 %i.h, 7                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %i.m = select i1 %i.l, i32 8, i32 %i.k
  %n.vec = sub nsw i32 %i.h, %i.m                 ; 2 uses
  %i.n = shl i32 %n.vec, 2
  %i.o = sub i32 %5, %i.n
  %i.p = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %4, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.p, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi52 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %i.q = add <4 x i32> %vec.phi, splat (i32 4)    ; 2 uses
  %i.r = add <4 x i32> %vec.phi52, splat (i32 4)  ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.s = icmp eq i32 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph49, %middle.block
  %.0.us48.ph = phi i32 [ %4, %vector.scevcheck ], [ %4, %.lr.ph49 ], [ %i.t, %middle.block ]
  %.017.us47.ph = phi i32 [ %5, %vector.scevcheck ], [ %5, %.lr.ph49 ], [ %i.o, %middle.block ]
  br label %scalar.ph

.preheader.split.us:                              ; preds = %scalar.ph
  %i.u = add i32 %.0.us48, 4                      ; 2 uses
  %i.v = add nsw i32 %.017.us47, -4               ; 2 uses
  %i.w = icmp slt i32 %.017.us47, 8
  br i1 %i.w, label %.split.us, label %scalar.ph, !llvm.loop !12

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.preheader.split.us
  %.0.us48 = phi i32 [ %i.u, %.preheader.split.us ], [ %.0.us48.ph, %scalar.ph.preheader ]
  %.017.us47 = phi i32 [ %i.v, %.preheader.split.us ], [ %.017.us47.ph, %scalar.ph.preheader ] ; 3 uses
  %.old1.us.not = icmp eq i32 %.017.us47, 4
  br i1 %.old1.us.not, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.lr.ph
  %i.x = add i32 %.045, 4                         ; 2 uses
  %i.y = add nsw i32 %.01744, -4                  ; 2 uses
  %i.z = icmp slt i32 %.01744, 8
  br i1 %i.z, label %.split.us, label %.lr.ph

.split.us:                                        ; preds = %.preheader.split, %.preheader.split.us, %.preheader.split.preheader, %.preheader.split.us.preheader
  %.us-phi = phi i32 [ %i.v, %.preheader.split.us ], [ %5, %.preheader.split.us.preheader ], [ %5, %.preheader.split.preheader ], [ %i.y, %.preheader.split ]
  %.us-phi23 = phi i32 [ %i.u, %.preheader.split.us ], [ %4, %.preheader.split.us.preheader ], [ %4, %.preheader.split.preheader ], [ %i.x, %.preheader.split ]
  %i.aa = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2, i32 noundef %.us-phi23, ptr noundef nonnull @.str.18, i32 noundef %.us-phi) ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader.split.preheader, %.preheader.split
  %.045 = phi i32 [ %i.x, %.preheader.split ], [ %4, %.preheader.split.preheader ] ; 2 uses
  %.01744 = phi i32 [ %i.y, %.preheader.split ], [ %5, %.preheader.split.preheader ] ; 3 uses
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef nonnull %0, i32 noundef %6, ptr noundef %2, i32 noundef %.045, i32 noundef 4, i32 noundef 0) ; 0 uses
  %.old1.not = icmp eq i32 %.01744, 4
  br i1 %.old1.not, label %.loopexit, label %.preheader.split

.loopexit:                                        ; preds = %.lr.ph, %scalar.ph, %bb.a, %.split.us
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @isis_dissect_ipv6_int_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.e_in6_addr, align 1         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.a = icmp slt i32 %5, 1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  %i.b = icmp samesign ult i32 %5, 16             ; 2 uses
  br i1 %.not, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  br i1 %i.b, label %.split.us, label %.lr.ph

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.b, label %.split.us, label %.lr.ph51

.preheader.split.us:                              ; preds = %.lr.ph51
  %i.c = add nsw i32 %.01722.us50, -16            ; 2 uses
  %i.d = add i32 %.023.us49, 16                   ; 2 uses
  %i.e = icmp slt i32 %.01722.us50, 32
  br i1 %i.e, label %.split.us, label %.lr.ph51, !llvm.loop !15

.lr.ph51:                                         ; preds = %.preheader.split.us.preheader, %.preheader.split.us
  %.01722.us50 = phi i32 [ %i.c, %.preheader.split.us ], [ %5, %.preheader.split.us.preheader ] ; 3 uses
  %.023.us49 = phi i32 [ %i.d, %.preheader.split.us ], [ %4, %.preheader.split.us.preheader ] ; 2 uses
  call void @tvb_get_ipv6(ptr noundef %2, i32 noundef %.023.us49, ptr noundef nonnull %7)
  %.not39 = icmp eq i32 %.01722.us50, 16
  br i1 %.not39, label %.loopexit, label %.preheader.split.us, !llvm.loop !15

.preheader.split:                                 ; preds = %.lr.ph
  %i.f = add nsw i32 %.0172247, -16               ; 2 uses
  %i.g = add i32 %.02346, 16                      ; 2 uses
  %i.h = icmp slt i32 %.0172247, 32
  br i1 %i.h, label %.split.us, label %.lr.ph, !llvm.loop !15

.split.us:                                        ; preds = %.preheader.split, %.preheader.split.us, %.preheader.split.preheader, %.preheader.split.us.preheader
  %.us-phi = phi i32 [ %i.c, %.preheader.split.us ], [ %5, %.preheader.split.us.preheader ], [ %5, %.preheader.split.preheader ], [ %i.f, %.preheader.split ]
  %.us-phi24 = phi i32 [ %i.d, %.preheader.split.us ], [ %4, %.preheader.split.us.preheader ], [ %4, %.preheader.split.preheader ], [ %i.g, %.preheader.split ]
  %i.i = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2, i32 noundef %.us-phi24, ptr noundef nonnull @.str.19, i32 noundef %.us-phi) ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader.split.preheader, %.preheader.split
  %.0172247 = phi i32 [ %i.f, %.preheader.split ], [ %5, %.preheader.split.preheader ] ; 3 uses
  %.02346 = phi i32 [ %i.g, %.preheader.split ], [ %4, %.preheader.split.preheader ] ; 3 uses
  call void @tvb_get_ipv6(ptr noundef %2, i32 noundef %.02346, ptr noundef nonnull %7)
  %i.j = call ptr @proto_tree_add_ipv6(ptr noundef nonnull %0, i32 noundef %6, ptr noundef %2, i32 noundef %.02346, i32 noundef 16, ptr noundef nonnull %7) ; 0 uses
  %.not38 = icmp eq i32 %.0172247, 16
  br i1 %.not38, label %.loopexit, label %.preheader.split, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph51, %bb.a, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @tvb_get_ipv6(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_ipv6(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @isis_dissect_te_router_id_clv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %5, 1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %5, 4
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %2, i32 noundef %4, ptr noundef nonnull @.str.20, i32 noundef %5) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %0, i32 noundef %6, ptr noundef %2, i32 noundef %4, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @isis_dissect_nlpid_clv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp slt i32 %5, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %1, ptr noundef %0, i32 noundef %4, i32 noundef 0, i32 noundef %2, ptr noundef null, ptr noundef nonnull @.str.21) ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %5, 1
  %i.d = select i1 %.not, ptr @.str.16, ptr @.str.23
  %i.e = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %1, ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.d) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.in = phi i32 [ %5, %bb.c ], [ %i.f, %bb.g ]
  %.02327 = phi i32 [ %4, %bb.c ], [ %i.o, %bb.g ] ; 4 uses
  %i.f = add nsw i32 %.in, -1                     ; 2 uses
  %i.g = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.02327) ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = zext i8 %i.g to i32                      ; 4 uses
  %i.j = icmp eq i8 %i.g, -63
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @val_to_str_const(i32 noundef %i.i, ptr noundef nonnull @nlpid_vals, ptr noundef nonnull @.str.13)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ @.str.25, %bb.d ]
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.h, ptr noundef nonnull @.str.24, ptr noundef %i.l, i32 noundef %i.i)
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %.loopexit.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.m, ptr noundef nonnull @.str.26)
  %i.n = call ptr @proto_tree_add_uint(ptr noundef %i.e, i32 noundef %3, ptr noundef %0, i32 noundef %.02327, i32 noundef 1, i32 noundef %i.i) ; 0 uses
  %i.o = add i32 %.02327, 1
  br label %bb.d, !llvm.loop !16

.loopexit.loopexit:                               ; preds = %bb.f
  %i.p = call ptr @proto_tree_add_uint(ptr noundef %i.e, i32 noundef %3, ptr noundef %0, i32 noundef %.02327, i32 noundef 1, i32 noundef %i.i) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @isis_dissect_clvs(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %6, i64 2
  %i.b = load i16, ptr %i.a, align 2
  %i.c = zext i16 %i.b to i32
  %i.d = load i8, ptr %6, align 8
  %i.e = zext i8 %i.d to i32
  %i.f = sub nsw i32 %i.c, %i.e                   ; 2 uses
  %.not98 = icmp eq i32 %i.f, 0
  br i1 %.not98, label %.loopexit, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %4, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph102, %bb.g
  %.082100 = phi i32 [ %i.f, %.lr.ph102 ], [ %i.aq, %bb.g ] ; 2 uses
  %.08399 = phi i32 [ %3, %.lr.ph102 ], [ %i.ap, %bb.g ] ; 7 uses
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.08399)
  %i.i = add i32 %.08399, 1                       ; 3 uses
  %i.j = icmp eq i32 %.082100, 1
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.i)
  %i.l = add i32 %.08399, 2                       ; 4 uses
  %i.m = add i32 %.082100, -2                     ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext i8 %i.k to i32                      ; 10 uses
  %i.p = icmp ult i32 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.q = load ptr, ptr %i.g, align 8
  %.not8796 = icmp eq ptr %i.q, null
  %.pre = zext i8 %i.h to i32                     ; 4 uses
  br i1 %.not8796, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %2, ptr noundef %1, ptr noundef %5, ptr noundef %0, i32 noundef %i.l, ptr noundef nonnull @.str.27, i32 noundef %i.o, i32 noundef %i.m) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.s = add i32 %.097, 1                         ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [32 x i8], ptr %4, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %.not87 = icmp eq ptr %i.w, null
  br i1 %.not87, label %._crit_edge, label %.lr.ph, !llvm.loop !17

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %i.x = phi ptr [ %i.u, %bb.f ], [ %4, %.preheader ] ; 4 uses
  %.097 = phi i32 [ %i.s, %bb.f ], [ 0, %.preheader ]
  %i.y = load i32, ptr %i.x, align 8
  %.not88 = icmp eq i32 %i.y, %.pre
  br i1 %.not88, label %.critedge, label %bb.f

.critedge:                                        ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %i.x, i64 24
  %i.aa = add nuw nsw i32 %i.o, 2
  %i.ab = getelementptr i8, ptr %i.x, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr i8, ptr %i.x, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.08399, i32 noundef %i.aa, i32 noundef %i.ad, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef %i.af, i32 noundef %.pre, i32 noundef %i.o) ; 3 uses
  %i.ah = tail call ptr @proto_tree_add_item(ptr noundef %i.ag, i32 noundef %8, ptr noundef %0, i32 noundef %.08399, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %i.ag, i32 noundef %9, ptr noundef %0, i32 noundef %i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aj = load ptr, ptr %i.z, align 8
  tail call void %i.aj(ptr noundef %0, ptr noundef %1, ptr noundef %i.ag, i32 noundef %i.l, ptr noundef %6, i32 noundef %i.o)
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.ak = add nuw nsw i32 %i.o, 2
  %i.al = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %.08399, i32 noundef %i.ak, i32 noundef %7, ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef %.pre, i32 noundef %i.o) ; 3 uses
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %8, ptr noundef %0, i32 noundef %.08399, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %i.al, i32 noundef %9, ptr noundef %0, i32 noundef %i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ao = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %i.al, ptr noundef %1, ptr noundef %10, ptr noundef %0, i32 noundef %i.l, i32 noundef %i.o, ptr noundef nonnull @.str.30, i32 noundef %.pre) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.critedge
  %i.ap = add i32 %i.l, %i.o
  %i.aq = sub nuw i32 %i.m, %i.o                  ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !18

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.g, %bb.a, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !13, !14}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
end_hunk_0
