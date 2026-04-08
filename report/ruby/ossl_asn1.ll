inline.NumInlined: 188
inline.NumDeleted: 54
begin_hunk_0_@ossl_asn1prim_to_der:bb.a
  br i1 %.not46.i, label %.thread.i, label %ossl_asn1_get_asn1type.exit

bb.bk:                                            ; preds = %obj_to_asn1null.exit.i
  call void %.021.i(ptr noundef nonnull %.0.i19) #9, !inline_history !34
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bk, %obj_to_asn1null.exit.thread.i
end_hunk_0
begin_hunk_1_@ossl_asn1cons_to_der:bb.a
  %i.ac = call i64 @rb_str_append(i64 noundef %i.i, i64 noundef %i.ab) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ad = add nuw nsw i64 %.015.us, 1
  br label %.split.us, !llvm.loop !35

.split:                                           ; preds = %bb.a, %rb_array_const_ptr.exit
  %.015 = phi i64 [ %i.as, %rb_array_const_ptr.exit ], [ 0, %bb.a ] ; 4 uses
end_hunk_1
begin_hunk_2_@ossl_asn1cons_to_der:bb.a
  %i.ar = call i64 @rb_str_append(i64 noundef %i.i, i64 noundef %i.aq) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.as = add nuw nsw i64 %.015, 1
  br label %.split, !llvm.loop !35

.split26.us:                                      ; preds = %rb_array_const_ptr.exit.us
  %i.at = load i64, ptr %i.j, align 8, !tbaa !14  ; 2 uses
end_hunk_2
begin_hunk_3_@ossl_asn1_decode0:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store i64 %i.bw, ptr %i.l, align 8, !tbaa !10
  %i.ca = icmp eq i32 %.fr92, 33                  ; 3 uses
  %i.cb = call i64 @rb_ary_new() #9, !inline_history !36 ; 4 uses
  %i.cc = select i1 %i.ca, i64 %i.bx, i64 %i.by
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph, label %.loopexit
end_hunk_3
begin_hunk_4_@ossl_asn1_decode0:bb.a
  %.187.us = phi i64 [ %i.ch, %bb.x ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  store i64 0, ptr %i.m, align 8, !tbaa !10
  %i.cf = call fastcc i64 @ossl_asn1_decode0(ptr noundef nonnull %0, i64 noundef %.036.i88.us, ptr noundef %i.l, i32 noundef %i.ce, i32 noundef range(i32 0, 2) %4, ptr noundef %i.m), !inline_history !36 ; 3 uses
  %i.cg = load i64, ptr %i.m, align 8, !tbaa !10  ; 2 uses
  %i.ch = add nsw i64 %i.cg, %.187.us             ; 3 uses
  %i.ci = sub nsw i64 %.036.i88.us, %i.cg         ; 3 uses
end_hunk_4
begin_hunk_5_@ossl_asn1_decode0:bb.a

bb.v:                                             ; preds = %ossl_asn1_tag.exit.us
  %i.cr = load i64, ptr @sivTAG_CLASS, align 8, !tbaa !10
  %i.cs = call i64 @rb_attr_get(i64 noundef %i.cf, i64 noundef %i.cr) #9, !inline_history !36
  %i.ct = load i64, ptr @sym_UNIVERSAL, align 8, !tbaa !10
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %.thread, label %bb.w
end_hunk_5
begin_hunk_6_@ossl_asn1_decode0:bb.a
  br i1 %i.cv, label %.split90.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = call i64 @rb_ary_push(i64 noundef %i.cb, i64 noundef %i.cf) #9, !inline_history !36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  %i.cx = icmp sgt i64 %i.ci, 0
  br i1 %i.cx, label %.lr.ph.split.us, label %.loopexit
end_hunk_6
begin_hunk_7_@ossl_asn1_decode0:bb.a
  %.187 = phi i64 [ %i.da, %.lr.ph.split ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  store i64 0, ptr %i.m, align 8, !tbaa !10
  %i.cy = call fastcc i64 @ossl_asn1_decode0(ptr noundef nonnull %0, i64 noundef %.036.i88, ptr noundef %i.l, i32 noundef %i.ce, i32 noundef range(i32 0, 2) %4, ptr noundef %i.m), !inline_history !36
  %i.cz = load i64, ptr %i.m, align 8, !tbaa !10  ; 2 uses
  %i.da = add nsw i64 %i.cz, %.187                ; 2 uses
  %i.db = sub nsw i64 %.036.i88, %i.cz            ; 2 uses
  %i.dc = call i64 @rb_ary_push(i64 noundef %i.cb, i64 noundef %i.cy) #9, !inline_history !36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  %i.dd = icmp sgt i64 %i.db, 0
  br i1 %i.dd, label %.lr.ph.split, label %.loopexit
end_hunk_7
begin_hunk_8_@ossl_asn1_decode0:bb.a

.split90.us:                                      ; preds = %bb.w
  %i.df = load i64, ptr @eASN1Error, align 8, !tbaa !10
  call void (i64, ptr, ...) @ossl_raise(i64 noundef %i.df, ptr noundef nonnull @.str.76) #10, !inline_history !36
  unreachable

.loopexit:                                        ; preds = %.lr.ph.split, %bb.x, %bb.r, %.thread
end_hunk_8
begin_hunk_9_@ossl_asn1_decode0:bb.a
  %i.dj = zext nneg i32 %i.bz to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr @ossl_asn1_info, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !37
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
end_hunk_9
begin_hunk_10_@ossl_asn1_decode0:bb.a
  store i64 4, ptr %i.dt, align 16, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.0, ptr %i.du, align 8, !tbaa !10
  %i.dv = call i64 @ossl_asn1_initialize(i32 noundef 4, ptr noundef nonnull %i.n, i64 noundef %i.do), !inline_history !36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  br label %int_ossl_asn1_decode0_cons.exit

bb.ab:                                            ; preds = %.loopexit
  %i.dw = load i64, ptr @cASN1Data, align 8, !tbaa !10
  %i.dx = call i64 @rb_obj_alloc(i64 noundef %i.dw) #9, !inline_history !36 ; 2 uses
  %i.dy = sext i32 %i.bz to i64
  %i.dz = shl nsw i64 %i.dy, 1
  %i.ea = or disjoint i64 %i.dz, 1
  %i.eb = call i64 @ossl_asn1data_initialize(i64 noundef %i.dx, i64 noundef %i.cb, i64 noundef %i.ea, i64 noundef %.0), !inline_history !36 ; 0 uses
  br label %int_ossl_asn1_decode0_cons.exit

int_ossl_asn1_decode0_cons.exit:                  ; preds = %bb.ab, %bb.aa
end_hunk_10
begin_hunk_11_@ossl_asn1_decode0:bb.a
  unreachable

decode_bstr.exit.i:                               ; preds = %bb.at
  %i.fp = load i32, ptr %i.fn, align 8, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !32 ; 2 uses
  %i.fs = and i64 %i.fr, 8
  %.not10.i.i = icmp eq i64 %i.fs, 0
  %i.ft = sext i32 %i.fp to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !39
  %i.fw = call i64 @rb_str_new(ptr noundef %i.fv, i64 noundef %i.ft) #9
  call void @ASN1_BIT_STRING_free(ptr noundef nonnull %i.fn) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
end_hunk_11
begin_hunk_12_@ossl_asn1_decode0:bb.a
bb.bn:                                            ; preds = %bb.bm
  %i.hi = getelementptr inbounds [16 x i8], ptr @ossl_asn1_info, i64 %i.hf
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !37
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store i64 %.0.i71, ptr %i.k, align 16, !tbaa !10
end_hunk_12
begin_hunk_13_@to_der_internal:bb.a
  %i.ba = tail call i32 @ASN1_object_size(i32 noundef %i.c, i32 noundef %i.at, i32 noundef %.0.i47) #9 ; 2 uses
  %i.bb = tail call i32 @ASN1_object_size(i32 noundef %i.b, i32 noundef %i.ba, i32 noundef %i.w) #9
  %i.bc = sext i32 %i.bb to i64
  %i.bd = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %i.bc) #9, !callees !40 ; 3 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !14
  %i.bg = and i64 %i.bf, 8192
end_hunk_13
begin_hunk_14_@to_der_internal:bb.a
bb.aa:                                            ; preds = %RSTRING_LENINT.exit
  %i.bt = tail call i32 @ASN1_object_size(i32 noundef %i.c, i32 noundef %i.at, i32 noundef %i.w) #9
  %i.bu = sext i32 %i.bt to i64
  %i.bv = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %i.bu) #9, !callees !40 ; 3 uses
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !14
  %i.by = and i64 %i.bx, 8192
end_hunk_14
begin_hunk_15_@rb_str_equal
!31 = distinct !{!31, !13}
!32 = !{!33, !11, i64 16}
!33 = !{!"asn1_string_st", !7, i64 0, !7, i64 4, !21, i64 8, !11, i64 16}
!34 = distinct !{null}
!35 = distinct !{!35, !13}
!36 = distinct !{null}
!37 = !{!20, !23, i64 8}
!38 = !{!33, !7, i64 0}
!39 = !{!33, !21, i64 8}
!40 = !{ptr @rb_str_new, ptr @rb_str_new_static}
end_hunk_15
