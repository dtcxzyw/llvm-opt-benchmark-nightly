Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_ffrecord?download=true
inline.NumInlined: 63
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@recff_buffer_method___len:bb.a
  store i16 %i.p, ptr %i.l, align 8, !tbaa !9
  store i16 %i.r, ptr %i.n, align 2, !tbaa !9
  %i.s = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.t, align 1, !tbaa !50
  store i16 17673, ptr %i.m, align 4, !tbaa !9
  store i16 %i.k, ptr %i.l, align 8, !tbaa !9
  store i16 19, ptr %i.n, align 2, !tbaa !9
  %i.u = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  store i16 17673, ptr %i.m, align 4, !tbaa !9
  store i16 %i.k, ptr %i.l, align 8, !tbaa !9
  store i16 14, ptr %i.n, align 2, !tbaa !9
  %i.v = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.w = trunc i32 %i.v to i16
  %i.x = trunc i32 %i.u to i16
  store i16 10773, ptr %i.m, align 4, !tbaa !9
  store i16 %i.w, ptr %i.l, align 8, !tbaa !9
  store i16 %i.x, ptr %i.n, align 2, !tbaa !9
  %i.y = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.z = trunc i32 %i.y to i16
  store i16 23315, ptr %i.m, align 4, !tbaa !9
  store i16 %i.z, ptr %i.l, align 8, !tbaa !9
  store i16 4725, ptr %i.n, align 2, !tbaa !9
  %i.aa = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !38
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @recff_buffer_encode(ptr noundef initializes((184, 190)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = load i32, ptr %i.b, align 4, !tbaa !40   ; 3 uses
  %i.d = lshr i32 %i.c, 24
  %i.e = and i32 %i.d, 31
  %i.f = add nsw i32 %i.e, -15
  %i.g = icmp ult i32 %i.f, 5
  br i1 %i.g, label %bb.b, label %recff_tmpref.exit

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i32 %i.c to i16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 23310, ptr %i.j, align 4, !tbaa !9
  store i16 %i.h, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 467, ptr %i.k, align 2, !tbaa !9
  %i.l = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %recff_tmpref.exit

recff_tmpref.exit:                                ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.l, %bb.b ], [ %i.c, %bb.a ]
  %i.m = trunc i32 %.0.i to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i16 16137, ptr %i.o, align 4, !tbaa !9
  store i16 %i.m, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  store i16 1, ptr %i.p, align 2, !tbaa !9
  %i.q = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.r = tail call i32 (ptr, i32, ...) @lj_ir_call(ptr noundef nonnull %0, i32 noundef 28, i32 noundef %i.q) #8 ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !38
  store i32 %i.r, ptr %i.s, align 4, !tbaa !40
  %i.t = trunc i32 %i.r to i16
  store i16 4608, ptr %i.o, align 4, !tbaa !9
  store i16 %i.t, ptr %i.n, align 8, !tbaa !9
  store i16 0, ptr %i.p, align 2, !tbaa !9
  %i.u = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @recff_buffer_decode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.SBufExt, align 8            ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !37
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.mask = and i64 %i.b, -140737488355328
  %i.c = icmp eq i64 %.mask, -703687441776640
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 140737488355327
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i16 16137, ptr %i.g, align 4, !tbaa !9
  store i16 32767, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  store i16 2, ptr %i.h, align 2, !tbaa !9
  %i.i = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  %i.m = tail call i32 (ptr, i32, ...) @lj_ir_call(ptr noundef %0, i32 noundef 29, i32 noundef %i.i, i32 noundef %i.l) #8
  %i.n = trunc i32 %i.m to i16
  store i16 4608, ptr %i.g, align 4, !tbaa !9
  store i16 %i.n, ptr %i.f, align 8, !tbaa !9
  store i16 0, ptr %i.h, align 2, !tbaa !9
  %i.o = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !56
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = add i64 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.w, ptr %i.x, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.s, ptr %i.y, align 8, !tbaa !79
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.s, ptr %i.z, align 8, !tbaa !80
  %i.aa = zext i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !81
  store ptr %i.ab, ptr %2, align 8, !tbaa !82
  %i.ad = call i32 @lj_serialize_peektype(ptr noundef nonnull %2) #8
  %i.ae = call i32 @lj_record_vload(ptr noundef %0, i32 noundef %i.i, i32 noundef 0, i32 noundef %i.ad) #8
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !38
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noreturn
declare hidden void @lj_trace_err_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @recff_stitch(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = add i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9    ; 4 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = lshr i32 %i.n, 5
  %i.p = and i32 %i.o, 2040
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.u = zext i32 %i.g to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.t, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 65536, ptr %i.x, align 4, !tbaa !40
  %i.y = tail call i32 @lj_ir_k64(ptr noundef %0, i32 noundef 28, i64 noundef ptrtoint (ptr @lj_cont_stitch to i64)) #8
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !38
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  store i32 %i.y, ptr %i.aa, align 4, !tbaa !40
  %i.ab = tail call i32 @lj_ir_k64(ptr noundef %0, i32 noundef 28, i64 noundef %i.k) #8
  %i.ac = or i32 %i.ab, 131072
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !38
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !40
  %i.ae = tail call i32 @lj_ir_ktrace(ptr noundef %0) #8 ; 2 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !38  ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !40
  %i.ah = trunc i32 %i.ae to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i16 %i.ah, ptr %i.ai, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !52
  %i.am = add i32 %i.al, 3
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !42
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !42
  %i.aq = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 3 uses
  %i.ar = shl nuw nsw i64 %i.u, 3                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.aq, i64 %i.ar, i1 false)
  %narrow = add nuw nsw i32 %i.p, 42
  %i.as = zext nneg i32 %narrow to i64
  store i64 %i.as, ptr %i.i, align 8, !tbaa !9
  store i64 ptrtoint (ptr @lj_cont_stitch to i64), ptr %i.j, align 8, !tbaa !9
  store i64 %i.k, ptr %i.d, align 8, !tbaa !9
  store i64 -1, ptr %i.aq, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.c, align 8, !tbaa !84
  %i.av = getelementptr inbounds nuw i8, <2 x ptr> %i.au, i64 24
  store <2 x ptr> %i.av, ptr %i.c, align 8, !tbaa !84
  %i.aw = tail call i32 @lj_vm_cpcall(ptr noundef %i.b, ptr noundef null, ptr noundef %0, ptr noundef nonnull @rec_stop_stitch_cp) #8 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr nonnull align 8 %i.h, i64 %i.ar, i1 false)
  store i64 %i.k, ptr %i.j, align 8, !tbaa !9
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !36
  %1 = getelementptr inbounds i8, ptr %i.ax, i64 -24
  store ptr %1, ptr %i.c, align 8, !tbaa !36
  %2 = load ptr, ptr %i.at, align 8, !tbaa !85    ; 4 uses
  %3 = getelementptr inbounds i8, ptr %2, i64 -24
  store ptr %3, ptr %i.at, align 8, !tbaa !85
  switch i32 %i.aw, label %bb.c [
    i32 0, label %bb.e
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds i8, ptr %2, i64 -32
  %i.az = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !9
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds i8, ptr %2, i64 -32
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @lj_err_throw(ptr noundef nonnull %i.b, i32 noundef %i.aw) #9
  unreachable

bb.e:                                             ; preds = %bb.a
  ret void
}

declare hidden void @lj_record_stop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare hidden void @lj_cont_stitch() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare hidden i32 @lj_ir_k64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare hidden i32 @lj_ir_ktrace(ptr noundef) local_unnamed_addr #1

declare hidden i32 @lj_vm_cpcall(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @rec_stop_stitch_cp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  tail call void @lj_record_stop(ptr noundef %2, i32 noundef 8, i32 noundef 0) #8
  ret ptr null
}

; Function Attrs: noreturn
declare hidden void @lj_err_throw(ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden i32 @lj_ir_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare hidden i32 @lj_tab_keyindex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @lj_record_next(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @lj_record_mm_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @recff_metacall_cp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  tail call void @lj_record_tailcall(ptr noundef %2, i32 noundef 0, i64 noundef 1) #8
  ret ptr null
}

declare hidden void @lj_record_tailcall(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare hidden i32 @lj_opt_narrow_toint(ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @lj_record_idx(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @lj_ir_knull(ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @lj_record_objcmp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @lj_tab_len(ptr noundef) local_unnamed_addr #1

declare hidden void @lj_crecord_tonumber(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden ptr @lj_strfmt_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @lj_record_call(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @recff_xpcall_cp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 172
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = add i32 %i.b, -2
  %i.d = zext i32 %i.c to i64
  tail call void @lj_record_call(ptr noundef %2, i32 noundef 1, i64 noundef %i.d) #8
  ret ptr null
}

declare hidden i32 @lj_ir_tonum(ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @lj_ir_ggfload(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare hidden i32 @lj_ir_knum_u64(ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden i32 @lj_opt_narrow_arith(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @lj_ir_tonumber(ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @lj_ir_kptr_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @recff_bit64_tobit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @lj_opt_narrow_tobit(ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @recff_bit64_unary(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @recff_bit64_shift(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @recff_bit64_nary(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @recff_bit64_tohex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden i32 @lj_ir_tostr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @recff_string_start(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !40     ; 4 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i32 %3 to i16                      ; 2 uses
  %i.d = trunc i32 %5 to i16                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  store i16 147, ptr %i.f, align 4, !tbaa !9
  store i16 %i.c, ptr %i.e, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 3 uses
  store i16 %i.d, ptr %i.g, align 2, !tbaa !9
  %i.h = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  %i.i = trunc i32 %4 to i16
  store i16 10515, ptr %i.f, align 4, !tbaa !9
  store i16 %i.i, ptr %i.e, align 8, !tbaa !9
  store i16 %i.c, ptr %i.g, align 2, !tbaa !9
  %i.j = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56
  %i.m = add nsw i32 %i.l, %i.a                   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0                     ; 2 uses
  %i.o = select i1 %i.n, i16 147, i16 403
  %i.p = trunc i32 %i.j to i16
  store i16 %i.o, ptr %i.f, align 4, !tbaa !9
  store i16 %i.p, ptr %i.e, align 8, !tbaa !9
  store i16 %i.d, ptr %i.g, align 2, !tbaa !9
  %i.q = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  %spec.select = select i1 %i.n, i32 %5, i32 %i.j
  %spec.select39 = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %i.a, 0
  %i.s = trunc i32 %3 to i16                      ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = trunc i32 %5 to i16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 2195, ptr %i.v, align 4, !tbaa !9
  store i16 %i.s, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.t, ptr %i.w, align 2, !tbaa !9
  %i.x = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = tail call i32 @lj_ir_kint(ptr noundef %0, i32 noundef -1) #8
  %i.z = trunc i32 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i16 13715, ptr %i.ab, align 4, !tbaa !9
  store i16 %i.s, ptr %i.aa, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  store i16 %i.z, ptr %i.ac, align 2, !tbaa !9
  %i.ad = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 2 uses
  %i.ae = trunc i32 %i.ad to i16
  %i.af = trunc i32 %5 to i16
  store i16 403, ptr %i.ab, align 4, !tbaa !9
  store i16 %i.ae, ptr %i.aa, align 8, !tbaa !9
  store i16 %i.af, ptr %i.ac, align 2, !tbaa !9
  %i.ag = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  %i.ah = add nsw i32 %i.a, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.036 = phi i32 [ %i.ad, %bb.e ], [ %spec.select, %bb.b ], [ %5, %bb.d ]
  %.0 = phi i32 [ %i.ah, %bb.e ], [ %spec.select39, %bb.b ], [ 0, %bb.d ]
  store i32 %.0, ptr %2, align 4, !tbaa !40
  ret i32 %.036
}

declare hidden ptr @lj_strfmt_number(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @lj_str_haspattern(ptr noundef) local_unnamed_addr #1

declare hidden ptr @lj_str_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @recff_format(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.FormatState, align 8        ; 7 uses
  %i.a = zext nneg i32 %3 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.a
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  %i.f = tail call i32 @lj_ir_tostr(ptr noundef %0, i32 noundef %i.e) #8
  %i.g = load ptr, ptr %1, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.a ; 3 uses
end_hunk_0
