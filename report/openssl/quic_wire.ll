Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_wire?download=true
inline.NumInlined: 167
inline.NumDeleted: 33
begin_hunk_0_@ossl_quic_wire_decode_transport_param_int:bb.a
  %.val9.i.i = load i64, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.b = icmp eq i64 %.val9.i.i, 0
  br i1 %i.b, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !45
  %i.e = lshr i8 %i.d, 6
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %i.i = icmp ult i64 %.val9.i.i, %i.h
  br i1 %i.i, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @ossl_quic_vlint_decode_unchecked(ptr noundef nonnull %i.c) #10
  %i.k = load ptr, ptr %0, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !44
  %i.m = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.n = sub i64 %i.m, %i.h                       ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !43
  %i.o = icmp eq i64 %i.m, %i.h
  br i1 %i.o, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.l, align 1, !tbaa !45
  %i.q = lshr i8 %i.p, 6
  %i.r = zext nneg i8 %i.q to i32
  %i.s = shl nuw nsw i32 1, %i.r
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  %i.u = icmp ult i64 %i.n, %i.t
  br i1 %i.u, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @ossl_quic_vlint_decode_unchecked(ptr noundef nonnull %i.l) #10 ; 6 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 4 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !44
  %i.y = load i64, ptr %i.a, align 8, !tbaa !43
  %i.z = sub i64 %i.y, %i.t                       ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !43
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.ab, ptr %0, align 8, !tbaa !44
  %i.ac = sub nuw i64 %i.z, %i.v
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !43
  %.not10.i = icmp eq ptr %1, null
  br i1 %.not10.i, label %ossl_quic_wire_decode_transport_param_bytes.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.j, ptr %1, align 8, !tbaa !46
  br label %ossl_quic_wire_decode_transport_param_bytes.exit

ossl_quic_wire_decode_transport_param_bytes.exit: ; preds = %bb.g, %bb.f
  %or.cond = icmp slt i64 %i.v, 1
  br i1 %or.cond, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.h

bb.h:                                             ; preds = %ossl_quic_wire_decode_transport_param_bytes.exit
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !45
  %i.ae = lshr i8 %i.ad, 6
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 1, %i.af
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = icmp samesign ult i64 %i.v, %i.ah
  br i1 %i.ai, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i64 @ossl_quic_vlint_decode_unchecked(ptr noundef nonnull %i.x) #10
  store i64 %i.aj, ptr %2, align 8, !tbaa !46
  %.not7 = icmp eq i64 %i.v, %i.ah
  %. = zext i1 %.not7 to i32
  br label %ossl_quic_wire_decode_transport_param_bytes.exit.thread

ossl_quic_wire_decode_transport_param_bytes.exit.thread: ; preds = %bb.h, %ossl_quic_wire_decode_transport_param_bytes.exit, %bb.e, %bb.c, %bb.a, %bb.b, %bb.d, %bb.i
  %.0 = phi i32 [ 0, %bb.e ], [ %., %bb.i ], [ 0, %ossl_quic_wire_decode_transport_param_bytes.exit ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_wire_decode_transport_param_cid(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %.val9.i.i = load i64, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.b = icmp eq i64 %.val9.i.i, 0
  br i1 %i.b, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !45
  %i.e = lshr i8 %i.d, 6
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %i.i = icmp ult i64 %.val9.i.i, %i.h
  br i1 %i.i, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @ossl_quic_vlint_decode_unchecked(ptr noundef nonnull %i.c) #10
  %i.k = load ptr, ptr %0, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !44
  %i.m = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.n = sub i64 %i.m, %i.h                       ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !43
  %i.o = icmp eq i64 %i.m, %i.h
  br i1 %i.o, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.l, align 1, !tbaa !45
  %i.q = lshr i8 %i.p, 6
  %i.r = zext nneg i8 %i.q to i32
  %i.s = shl nuw nsw i32 1, %i.r
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  %i.u = icmp ult i64 %i.n, %i.t
  br i1 %i.u, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @ossl_quic_vlint_decode_unchecked(ptr noundef nonnull %i.l) #10 ; 6 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !44
  %i.y = load i64, ptr %i.a, align 8, !tbaa !43
  %i.z = sub i64 %i.y, %i.t                       ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !43
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.ab, ptr %0, align 8, !tbaa !44
  %i.ac = sub nuw i64 %i.z, %i.v
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !43
  %.not10.i = icmp eq ptr %1, null
  br i1 %.not10.i, label %ossl_quic_wire_decode_transport_param_bytes.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.j, ptr %1, align 8, !tbaa !46
  br label %ossl_quic_wire_decode_transport_param_bytes.exit

ossl_quic_wire_decode_transport_param_bytes.exit: ; preds = %bb.f, %bb.g
  %i.ad = icmp ugt i64 %i.v, 20
  br i1 %i.ad, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.h

bb.h:                                             ; preds = %ossl_quic_wire_decode_transport_param_bytes.exit
  %i.ae = trunc nuw nsw i64 %i.v to i8
  store i8 %i.ae, ptr %2, align 1, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.x, i64 %i.v, i1 false)
  br label %ossl_quic_wire_decode_transport_param_bytes.exit.thread

ossl_quic_wire_decode_transport_param_bytes.exit.thread: ; preds = %bb.e, %bb.c, %bb.a, %bb.b, %bb.d, %ossl_quic_wire_decode_transport_param_bytes.exit, %bb.h
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %ossl_quic_wire_decode_transport_param_bytes.exit ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_quic_wire_decode_transport_param_preferred_addr(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 6 uses
  %.val9.i.i = load i64, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  %i.b = icmp eq i64 %.val9.i.i, 0
  br i1 %i.b, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !45
  %i.e = lshr i8 %i.d, 6
  %i.f = zext nneg i8 %i.e to i32
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %i.i = icmp ult i64 %.val9.i.i, %i.h
  br i1 %i.i, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @ossl_quic_vlint_decode_unchecked(ptr noundef nonnull %i.c) #10
  %i.k = load ptr, ptr %0, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !44
  %i.m = load i64, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.n = sub i64 %i.m, %i.h                       ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !43
  %i.o = icmp eq i64 %i.m, %i.h
  br i1 %i.o, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.l, align 1, !tbaa !45
  %i.q = lshr i8 %i.p, 6
  %i.r = zext nneg i8 %i.q to i32
  %i.s = shl nuw nsw i32 1, %i.r
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  %i.u = icmp ult i64 %i.n, %i.t
  br i1 %i.u, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @ossl_quic_vlint_decode_unchecked(ptr noundef nonnull %i.l) #10 ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 8 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !44
  %i.y = load i64, ptr %i.a, align 8, !tbaa !43
  %i.z = sub i64 %i.y, %i.t                       ; 3 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !43
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %ossl_quic_wire_decode_transport_param_bytes.exit

ossl_quic_wire_decode_transport_param_bytes.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.ab, ptr %0, align 8, !tbaa !44
  %i.ac = sub nuw i64 %i.z, %i.v
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !43
  %i.ad = add i64 %i.v, -62
  %i.ae = icmp ult i64 %i.ad, -21
  %i.af = icmp ne i64 %i.j, 13
  %or.cond5 = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond5, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %PACKET_get_1.exit

PACKET_get_1.exit:                                ; preds = %ossl_quic_wire_decode_transport_param_bytes.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load i32, ptr %i.x, align 1
  store i32 %i.ah, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %2 = load i16, ptr %i.ai, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ak, ptr noundef nonnull align 1 dereferenceable(16) %i.aj, i64 range(i64 0, 4294967296) 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 22
  %4 = load i16, ptr %i.al, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.an = load i8, ptr %i.am, align 1, !tbaa !45  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 25 ; 2 uses
  %i.ap = add nsw i64 %i.v, -25                   ; 2 uses
  %i.aq = icmp ugt i8 %i.an, 20
  br i1 %i.aq, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.f

bb.f:                                             ; preds = %PACKET_get_1.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = zext nneg i8 %i.an to i64               ; 4 uses
  %i.at = icmp samesign ult i64 %i.ap, %i.as
  br i1 %i.at, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %i.ao, i64 range(i64 0, 4294967296) %i.as, i1 false)
  %i.av = sub nuw nsw i64 %i.ap, %i.as
  %i.aw = icmp samesign ult i64 %i.av, 16
  br i1 %i.aw, label %ossl_quic_wire_decode_transport_param_bytes.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ax, ptr noundef nonnull align 1 dereferenceable(16) %i.ay, i64 range(i64 0, 4294967296) 16, i1 false)
  store i16 %3, ptr %1, align 2, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %5, ptr %i.az, align 2, !tbaa !66
  store i8 %i.an, ptr %i.ar, align 2, !tbaa !67
  br label %ossl_quic_wire_decode_transport_param_bytes.exit.thread

ossl_quic_wire_decode_transport_param_bytes.exit.thread: ; preds = %bb.g, %bb.f, %bb.c, %bb.a, %bb.b, %bb.d, %bb.e, %PACKET_get_1.exit, %ossl_quic_wire_decode_transport_param_bytes.exit, %bb.h
  %.0 = phi i32 [ 0, %ossl_quic_wire_decode_transport_param_bytes.exit ], [ 0, %bb.c ], [ 1, %bb.h ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %PACKET_get_1.exit ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @ossl_quic_frame_type_to_string(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %0, 31
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ossl_quic_frame_type_to_string, i64 %0
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @ossl_quic_err_to_string(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %0, 17
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ossl_quic_err_to_string, i64 %0
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

declare i64 @ossl_quic_vlint_decode_unchecked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i2 @llvm.bitreverse.i2(i2) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS22ossl_quic_ack_range_st", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"", !10, i64 0}
!12 = !{!"ossl_quic_frame_ack_st", !9, i64 0, !10, i64 8, !11, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !5, i64 48}
!13 = !{!12, !10, i64 8}
!14 = !{!12, !9, i64 0}
!15 = !{!"ossl_quic_ack_range_st", !10, i64 0, !10, i64 8}
!16 = !{!15, !10, i64 0}
!17 = !{!15, !10, i64 8}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!12, !10, i64 24}
!20 = !{!12, !10, i64 32}
!21 = !{!12, !10, i64 40}
!22 = !{!"p1 omnipotent char", !8, i64 0}
!23 = !{!"ossl_quic_frame_crypto_st", !10, i64 0, !10, i64 8, !22, i64 16}
!24 = !{!23, !10, i64 0}
!25 = !{!23, !10, i64 8}
!26 = !{!22, !22, i64 0}
!27 = !{!23, !22, i64 16}
!28 = !{!"ossl_quic_frame_stream_st", !10, i64 0, !10, i64 8, !10, i64 16, !22, i64 24, !5, i64 32, !5, i64 32}
!29 = !{!28, !10, i64 8}
!30 = !{!28, !10, i64 0}
!31 = !{!28, !10, i64 16}
!32 = !{!28, !22, i64 24}
!33 = !{!"quic_conn_id_st", !4, i64 0, !4, i64 1}
!34 = !{!"", !4, i64 0}
!35 = !{!"ossl_quic_frame_new_conn_id_st", !10, i64 0, !10, i64 8, !33, i64 16, !34, i64 37}
!36 = !{!35, !4, i64 16}
!37 = !{!35, !10, i64 0}
!38 = !{!"ossl_quic_frame_conn_close_st", !5, i64 0, !10, i64 8, !10, i64 16, !22, i64 24, !10, i64 32}
!39 = !{!38, !10, i64 16}
!40 = !{!38, !10, i64 32}
!41 = !{!33, !4, i64 0}
!42 = !{!"", !22, i64 0, !22, i64 8, !10, i64 16}
!43 = !{!42, !10, i64 16}
!44 = !{!42, !22, i64 0}
!45 = !{!4, !4, i64 0}
!46 = !{!10, !10, i64 0}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = !{!"ossl_quic_frame_reset_stream_st", !10, i64 0, !10, i64 8, !10, i64 16}
!50 = !{!49, !10, i64 0}
!51 = !{!49, !10, i64 8}
!52 = !{!49, !10, i64 16}
!53 = !{!"ossl_quic_frame_stop_sending_st", !10, i64 0, !10, i64 8}
!54 = !{!53, !10, i64 0}
!55 = !{!53, !10, i64 8}
!56 = !{!35, !10, i64 8}
!57 = !{!38, !10, i64 8}
!58 = !{!38, !22, i64 24}
!59 = !{!5, !5, i64 0}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = !{!"short", !4, i64 0}
!64 = !{!"quic_preferred_addr_st", !63, i64 0, !63, i64 2, !4, i64 4, !4, i64 8, !34, i64 24, !33, i64 40}
!65 = !{!64, !63, i64 0}
!66 = !{!64, !63, i64 2}
!67 = !{!64, !4, i64 40}
end_hunk_0
