inline.NumInlined: 174
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mbedtls_ssl_get_current_mtu:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %.off = add i32 %i.f, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1978
  %i.k = load i16, ptr %i.j, align 2, !tbaa !210  ; 3 uses
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.n = load i16, ptr %i.m, align 8, !tbaa !143
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.p = load i16, ptr %i.o, align 8, !tbaa !143  ; 2 uses
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %. = tail call i16 @llvm.umin.i16(i16 %i.p, i16 %i.k)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.f, %bb.g, %bb.e
  %.0.shrunk = phi i16 [ %., %bb.g ], [ %i.n, %bb.e ], [ %i.k, %bb.f ], [ 0, %bb.b ]
  %.0 = zext i16 %.0.shrunk to i64
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 16385) i32 @mbedtls_ssl_get_max_out_record_payload(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !197
  %switch.tableidx = add i8 %i.c, -1              ; 2 uses
  %i.d = icmp ult i8 %switch.tableidx, 4
  br i1 %i.d, label %switch.lookup, label %ssl_mfl_code_to_length.exit.i

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.e
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %ssl_mfl_code_to_length.exit.i

ssl_mfl_code_to_length.exit.i:                    ; preds = %bb.a, %switch.lookup
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 16384, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !208  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %ssl_mfl_code_to_length.exit16.i, label %bb.b

bb.b:                                             ; preds = %ssl_mfl_code_to_length.exit.i
  %i.h = load i8, ptr %i.g, align 8, !tbaa !209   ; 2 uses
  %switch.tableidx55 = add i8 %i.h, -1            ; 2 uses
  %i.i = icmp ult i8 %switch.tableidx55, 4
  br i1 %i.i, label %switch.lookup56, label %ssl_mfl_code_to_length.exit16.i

switch.lookup56:                                  ; preds = %bb.b
  %i.j = zext nneg i8 %switch.tableidx55 to i64
  %switch.gep57 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.j
  %switch.load58 = load i16, ptr %switch.gep57, align 2
  %switch.ext59 = zext i16 %switch.load58 to i32
  %i.k = icmp samesign ugt i32 %.0.i.i, %switch.ext59
  br i1 %i.k, label %switch.lookup61, label %ssl_mfl_code_to_length.exit16.i

switch.lookup61:                                  ; preds = %switch.lookup56
  %i.l = zext nneg i8 %i.h to i64
  %i.m = getelementptr [2 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.l
  %switch.gep62 = getelementptr i8, ptr %i.m, i64 -2
  %switch.load63 = load i16, ptr %switch.gep62, align 2
  %switch.ext64 = zext i16 %switch.load63 to i32
  br label %ssl_mfl_code_to_length.exit16.i

ssl_mfl_code_to_length.exit16.i:                  ; preds = %switch.lookup61, %bb.b, %switch.lookup56, %ssl_mfl_code_to_length.exit.i
  %.0.in.i = phi i32 [ %switch.ext64, %switch.lookup61 ], [ %.0.i.i, %switch.lookup56 ], [ %.0.i.i, %ssl_mfl_code_to_length.exit.i ], [ %.0.i.i, %bb.b ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 2 uses
  %.not12.i = icmp eq ptr %i.o, null
  br i1 %.not12.i, label %mbedtls_ssl_get_output_max_frag_len.exit, label %bb.c

bb.c:                                             ; preds = %ssl_mfl_code_to_length.exit16.i
  %i.p = load i8, ptr %i.o, align 8, !tbaa !209   ; 2 uses
  %switch.tableidx65 = add i8 %i.p, -1            ; 2 uses
  %i.q = icmp ult i8 %switch.tableidx65, 4
  br i1 %i.q, label %switch.lookup66, label %mbedtls_ssl_get_output_max_frag_len.exit

switch.lookup66:                                  ; preds = %bb.c
  %i.r = zext nneg i8 %switch.tableidx65 to i64
  %switch.gep67 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.r
  %switch.load68 = load i16, ptr %switch.gep67, align 2
  %switch.ext69 = zext i16 %switch.load68 to i32
  %i.s = icmp samesign ugt i32 %.0.in.i, %switch.ext69
  br i1 %i.s, label %switch.lookup71, label %mbedtls_ssl_get_output_max_frag_len.exit

switch.lookup71:                                  ; preds = %switch.lookup66
  %i.t = zext nneg i8 %i.p to i64
  %i.u = getelementptr [2 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.t
  %switch.gep72 = getelementptr i8, ptr %i.u, i64 -2
  %switch.load73 = load i16, ptr %switch.gep72, align 2
  %switch.ext74 = zext i16 %switch.load73 to i32
  br label %mbedtls_ssl_get_output_max_frag_len.exit

mbedtls_ssl_get_output_max_frag_len.exit:         ; preds = %switch.lookup71, %bb.c, %ssl_mfl_code_to_length.exit16.i, %switch.lookup66
  %.1.in.i = phi i32 [ %switch.ext74, %switch.lookup71 ], [ %.0.in.i, %switch.lookup66 ], [ %.0.in.i, %ssl_mfl_code_to_length.exit16.i ], [ %.0.in.i, %bb.c ]
  %spec.select = zext nneg i32 %.1.in.i to i64    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %mbedtls_ssl_get_output_max_frag_len.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !211
  %i.z = icmp eq i32 %i.y, 772
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = and i64 %spec.select, 32752
  %i.ab = add nsw i64 %i.aa, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %mbedtls_ssl_get_output_max_frag_len.exit
  %.125 = phi i64 [ %i.ab, %bb.e ], [ %spec.select, %bb.d ], [ %spec.select, %mbedtls_ssl_get_output_max_frag_len.exit ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !95
  %i.ae = icmp eq i8 %i.ad, 0                     ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !35
  %.off.i = add i32 %i.ag, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %mbedtls_ssl_get_current_mtu.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %mbedtls_ssl_get_current_mtu.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1978
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !210
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %mbedtls_ssl_get_current_mtu.exit, label %.critedge

mbedtls_ssl_get_current_mtu.exit:                 ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !143
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %mbedtls_ssl_get_current_mtu.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.i, %mbedtls_ssl_get_current_mtu.exit
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !35
  %.off.i38 = add i32 %i.ar, -1
  %switch.i39 = icmp ult i32 %.off.i38, 2
  br i1 %switch.i39, label %mbedtls_ssl_get_current_mtu.exit40, label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 1978
  %i.at = load i16, ptr %i.as, align 2, !tbaa !210 ; 3 uses
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !143
  br label %mbedtls_ssl_get_current_mtu.exit40

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !143 ; 2 uses
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %mbedtls_ssl_get_current_mtu.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %..i35 = tail call i16 @llvm.umin.i16(i16 %i.ay, i16 %i.at)
  br label %mbedtls_ssl_get_current_mtu.exit40

mbedtls_ssl_get_current_mtu.exit40:               ; preds = %bb.j, %bb.m, %bb.n, %bb.o
  %.0.shrunk.i36 = phi i16 [ %..i35, %bb.o ], [ %i.aw, %bb.m ], [ %i.at, %bb.n ], [ 0, %bb.j ] ; 2 uses
  %.0.i37 = zext i16 %.0.shrunk.i36 to i64
  %i.ba = tail call i32 @mbedtls_ssl_get_record_expansion(ptr noundef nonnull %0) #24 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i32 %i.ba, 0
  br i1 %i.bc, label %.thread, label %bb.p

bb.p:                                             ; preds = %mbedtls_ssl_get_current_mtu.exit40
  %1 = zext i16 %.0.shrunk.i36 to i32
  %.not33 = icmp samesign ult i32 %i.ba, %1
  br i1 %.not33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, i32, ptr, ...) @mbedtls_debug_print_msg(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 3354, ptr noundef nonnull @.str.21) #24
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.bd = sub nuw nsw i64 %.0.i37, %i.bb
  %spec.select34 = tail call i64 @llvm.umin.i64(i64 %.125, i64 %i.bd)
  br label %mbedtls_ssl_get_current_mtu.exit.thread

mbedtls_ssl_get_current_mtu.exit.thread:          ; preds = %bb.g, %bb.r, %mbedtls_ssl_get_current_mtu.exit
  %.4 = phi i64 [ %spec.select34, %bb.r ], [ %.125, %mbedtls_ssl_get_current_mtu.exit ], [ %.125, %bb.g ]
  %i.be = trunc nuw nsw i64 %.4 to i32
  br label %.thread

.thread:                                          ; preds = %mbedtls_ssl_get_current_mtu.exit40, %bb.q, %mbedtls_ssl_get_current_mtu.exit.thread
  %.1 = phi i32 [ %i.be, %mbedtls_ssl_get_current_mtu.exit.thread ], [ %i.ba, %mbedtls_ssl_get_current_mtu.exit40 ], [ -28800, %bb.q ]
  ret i32 %.1
}

declare i32 @mbedtls_ssl_get_record_expansion(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 512, 16385) i32 @mbedtls_ssl_get_max_in_record_payload(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !95
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp sgt i32 %i.f, 5
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !197
  %switch.tableidx = add i8 %i.i, -1              ; 2 uses
  %i.j = icmp ult i8 %switch.tableidx, 4
  br i1 %i.j, label %switch.lookup, label %mbedtls_ssl_get_input_max_frag_len.exit.thread7

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !208  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %ssl_mfl_code_to_length.exit22.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.l, align 8, !tbaa !209
  %switch.tableidx12 = add i8 %i.m, -1            ; 2 uses
  %i.n = icmp ult i8 %switch.tableidx12, 4
  br i1 %i.n, label %switch.lookup13, label %ssl_mfl_code_to_length.exit22.i

switch.lookup13:                                  ; preds = %bb.e
  %i.o = zext nneg i8 %switch.tableidx12 to i64
  %switch.gep14 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.o
  %switch.load15 = load i16, ptr %switch.gep14, align 2
  %switch.ext16 = zext i16 %switch.load15 to i32
  br label %ssl_mfl_code_to_length.exit22.i

ssl_mfl_code_to_length.exit22.i:                  ; preds = %switch.lookup13, %bb.e, %bb.d
  %.0.i = phi i32 [ 16384, %bb.d ], [ 16384, %bb.e ], [ %switch.ext16, %switch.lookup13 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %.not19.i = icmp eq ptr %i.q, null
  br i1 %.not19.i, label %mbedtls_ssl_get_input_max_frag_len.exit.thread7, label %bb.f

bb.f:                                             ; preds = %ssl_mfl_code_to_length.exit22.i
  %i.r = load i8, ptr %i.q, align 8, !tbaa !209
  %switch.tableidx17 = add i8 %i.r, -1            ; 2 uses
  %i.s = icmp ult i8 %switch.tableidx17, 4
  br i1 %i.s, label %switch.lookup18, label %ssl_mfl_code_to_length.exit24.i

switch.lookup18:                                  ; preds = %bb.f
  %i.t = zext nneg i8 %switch.tableidx17 to i64
  %switch.gep19 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.t
  %switch.load20 = load i16, ptr %switch.gep19, align 2
  %switch.ext21 = zext i16 %switch.load20 to i32
  br label %ssl_mfl_code_to_length.exit24.i

ssl_mfl_code_to_length.exit24.i:                  ; preds = %bb.f, %switch.lookup18
  %.0.i23.i = phi i32 [ %switch.ext21, %switch.lookup18 ], [ 16384, %bb.f ]
  %spec.select20.i = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 %.0.i23.i)
  br label %mbedtls_ssl_get_input_max_frag_len.exit.thread7

switch.lookup:                                    ; preds = %bb.c
  %i.u = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.mbedtls_ssl_get_max_in_record_payload.34, i64 %i.u
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %mbedtls_ssl_get_input_max_frag_len.exit.thread7

mbedtls_ssl_get_input_max_frag_len.exit.thread7:  ; preds = %switch.lookup, %bb.c, %ssl_mfl_code_to_length.exit24.i, %ssl_mfl_code_to_length.exit22.i
  %i.v = phi i32 [ 16384, %bb.c ], [ %spec.select20.i, %ssl_mfl_code_to_length.exit24.i ], [ %switch.ext, %switch.lookup ], [ %.0.i, %ssl_mfl_code_to_length.exit22.i ]
  ret i32 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @mbedtls_ssl_get_peer_cert(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_ssl_get_session(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !95
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !212
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @mbedtls_ssl_session_copy(ptr noundef nonnull %1, ptr noundef nonnull %i.d) ; 2 uses
  %.not15 = icmp eq i32 %i.l, 0
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 1, ptr %i.n, align 1, !tbaa !212
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.b, %bb.c, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -28928, %bb.a ], [ -28800, %bb.d ], [ -28928, %bb.c ], [ -28928, %bb.b ], [ %i.l, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -28928, 1) i32 @mbedtls_ssl_session_save(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @ssl_session_save(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -28928, 1) i32 @ssl_session_save(ptr nofree noundef readonly captures(address_is_null) %0, i8 noundef zeroext range(i8 0, 2) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ssl_tls13_session_save.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %3, 4
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @ssl_serialized_session_header, i64 5, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.040 = phi ptr [ %2, %bb.b ], [ %i.c, %bb.d ], [ %2, %bb.c ] ; 5 uses
  %.039 = phi i64 [ 4, %bb.b ], [ 9, %bb.d ], [ 9, %bb.c ] ; 3 uses
  %.not44 = icmp ugt i64 %.039, %3
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_0
